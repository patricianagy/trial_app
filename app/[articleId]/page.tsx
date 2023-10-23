import Image from "next/image";
import Error from "../error";

async function getArticle(id: number, token: string) {
  var article: any;
  try {
    await fetch("https://trial.peakbit.tech/api/articles/get/" + id, {
      method: "Get",
      headers: { "X-TOKEN": token },
    })
      .then(function (response) {
        return response.json();
      })
      .then(function (data) {
        article = data;
      });
  } catch (err) {
    Error;
  }

  return article;
}

async function getToken() {
  var token: any;
  await fetch("https://trial.peakbit.tech/api/token/generate/WEB", {
    method: "POST",
    cache: "force-cache",
  })
    .then(function (response) {
      return response.json();
    })
    .then(function (data) {
      token = data;
    });

  return token;
}

async function renewToken(token: string) {
  await fetch("https://trial.peakbit.tech/api/token/renew", {
    method: "PUT",
    headers: { "X-TOKEN": token },
  });
}

export default async function Page({
  params,
}: {
  params: { articleId: number };
}) {
  const token = await getToken();

  if (token.availableUsages === 0) {
    await renewToken(token.token);
  }

  const article = await getArticle(params.articleId, token?.token);
  return (
    <div className="lg:px-20 px-[10px]">
      <div
        style={{ backgroundImage: `url(${article.imageUrl})` }}
        className="bg-cover w-full lg:h-[580px] h-[200px] lg:px-[20%] px-[10%] pb-6 rounded-b-3xl flex items-end justify-end"
      >
        <div className="h-[30px] w-fit p-2 bg-red rounded  text-xs flex flex-row">
          <Image src="/timer.svg" alt="timer" width={9} height={10} priority />
          <div className="pl-1 text-white">
            Olvasási idő: {article.readingTime} perc
          </div>
        </div>
      </div>
      <div className="lg:px-[20%] px-[10%]">
        <h1 className="md:mt-[50px] mt-[20px] md:mb-[30px] mb-[15px] text-xl font-bold">
          {article.title}
        </h1>
        <div
          className="md:mb-[170px] mb-[60px]"
          dangerouslySetInnerHTML={{ __html: article.description }}
        ></div>
      </div>
    </div>
  );
}
