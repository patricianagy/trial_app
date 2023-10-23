import Image from "next/image";

export default function NavBar() {
  return (
    <nav className="bg-white border-gray-200 shadow">
      <div className=" flex flex-wrap items-center justify-between p-4">
        <a href="/" className="flex items-center">
          <Image src="/p_logo.png" width={100} height={58} alt="Logo" />
        </a>
        <button
          data-collapse-toggle="navbar-default"
          type="button"
          className="inline-flex items-center p-2 w-10 h-10 justify-center text-sm  rounded-lg md:hidden "
          aria-controls="navbar-default"
          aria-expanded="false"
        >
          <Image src="/menu.svg" alt="menu" width={100} height={24} priority />
        </button>
        <div className="hidden w-full md:block md:w-auto" id="navbar-default">
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
