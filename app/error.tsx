"use client";
import Image from "next/image";
import Link from "next/link";

export default function Error() {
  return (
    <div className="pt-[200px] flex flex-col items-center text-center">
      <Image
        src="/magnifier.svg"
        alt="magnifier"
        width={100}
        height={24}
        priority
      />
      <div className="mt-[60px] mb-[16px] text-lg font-bold">
        Valami hiba történt!
      </div>
      <div className="text-l ">
        Kérjük, győződj meg róla, hogy az internetkapcsolattal minden rendben
        van-e.
      </div>
      <Link className="mt-[60px]" href={`/`}>
        <div className="h-[50px] w-fit px-2  bg-red rounded  text-xs flex flex-row items-center">
          <Image
            src="/reload.svg"
            alt="reload"
            width={20}
            height={18}
            priority
          />
          <div className="pl-1 text-white text-lg"> Újratöltés</div>
        </div>
      </Link>
    </div>
  );
}
