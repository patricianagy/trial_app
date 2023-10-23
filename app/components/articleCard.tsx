import Link from "next/link";
import Image from "next/image";

interface ArticleProps {
  title: string;
  id: number;
  image: string;
  readingTime: number;
}

const ArticleCard: React.FC<ArticleProps> = ({
  title,
  id,
  image,
  readingTime,
}) => {
  return (
    <div>
      <Link href={`/${id}`}>
        <div
          style={{ backgroundImage: `url(${image})` }}
          className="bg-cover md:h-[200px] md:w-[400px] h-[150px] w-[300px] rounded-lg p-2.5  flex  justify-end"
        >
          <div className="h-[30px] w-fit p-2 bg-red rounded  text-xs flex flex-row items-center">
            <Image
              src="/timer.svg"
              alt="timer"
              width={9}
              height={10}
              priority
            />
            <div className="pl-1 text-white">{readingTime} perc</div>
          </div>
        </div>

        <div className="md:w-[400px] w-[300px] text-lg font-bold mt-4 break-words">
          {title}
        </div>
      </Link>
    </div>
  );
};

export default ArticleCard;
