"use client";

interface ButtonProps {
  text: string;
}

const Button: React.FC<ButtonProps> = ({ text }) => {
  return <button className="rounded bg-red text-white p-2">{text}</button>;
};
export default Button;
