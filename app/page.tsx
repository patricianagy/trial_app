import ArticleCard from "./components/articleCard";
import Button from "./components/button";

async function getArticleList(pageNumber: number) {
  let articleList: any[] = [];
  await fetch(
    "https://trial.peakbit.tech/api/articles/list?page=" +
      pageNumber +
      "&pageSize=10",
    {
      method: "Get",
    }
  )
    .then(function (response) {
      return response.json();
    })
    .then(function (data) {
      articleList = data.list;
    });
  return articleList;
}

export default async function Dashboard() {
  let pageNumber: number = 1;
  const articleList = await getArticleList(pageNumber);

  const getMoreArticle = async () => {
    pageNumber = pageNumber + 1;
    let list = await getArticleList(pageNumber);
    articleList.concat(list);
  };

  return (
    <div className="md:py-16 md:px-20 p-7">
      <h1 className="text-4xl font-bold color-black md:mb-[40px] mb-[20px] ">
        Legfrissebb cikkeink
      </h1>
      <div className="flex flex-wrap sm:justify-between justify-center">
        {articleList.map((article: any) => (
          <div className="md:mb-[70px] mb-[40px]" key={article.id}>
            <ArticleCard
              title={article.title}
              id={article.id}
              image={article.imageUrl}
              readingTime={article.readingTime}
            ></ArticleCard>
          </div>
        ))}
      </div>
      <div className="flex justify-center">
        <Button text="Több cikk betöltése"></Button>
      </div>
    </div>
  );
}
