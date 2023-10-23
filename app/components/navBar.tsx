'use client'
import Image from "next/image";
import { useState } from "react";

export default function NavBar() {

  const [open, setOpen] = useState(false);

  return (
    <nav className="bg-white border-gray-200 shadow">
      <div className=" flex flex-wrap items-center justify-between p-4">
        <a href="/" className="flex items-center">
          <Image src="/p_logo.png" width={100} height={58} alt="Logo" />
        </a>
        <button
    
          className="inline-flex items-center p-2 w-10 h-10 justify-center text-sm  rounded-lg md:hidden "
          onClick={() => {setOpen(!open);}}
         
        >
          <Image src="/menu.svg" alt="menu" width={100} height={24} priority />
        </button>
        <div className={`w-full md:block md:w-auto ${open ? 'block' : 'hidden'}`} >
          <ul className="font-medium flex flex-col p-4 md:p-0 mt-4 border md:flex-row md:space-x-8 md:mt-0 md:border-0 md:bg-white  ">
            <li>
              <a href="#" className="block py-2 pl-3 pr-4 text-black ">
                Menüpont
              </a>
            </li>
            <li>
              <a href="/" className="block py-2 pl-3 pr-4 text-red font-bold ">
                Blog
              </a>
            </li>
            <li>
              <a href="#" className="block py-2 pl-3 pr-4 text-black ">
                Menüpont
              </a>
            </li>
            <li>
              <a href="#" className="block py-2 pl-3 pr-4 text-black ">
                Menüpont
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  );
}
