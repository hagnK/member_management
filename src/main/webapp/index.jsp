<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* 2. 넓은 그리드 배경 (기존 유지) */
        body {
            background-color: #ffffff;
            background-size: 80px 80px;
            background-image:
                    linear-gradient(to right, #f0f0f0 1px, transparent 1px),
                    linear-gradient(to bottom, #f0f0f0 1px, transparent 1px);
        }

        /* 3. "fadeIn" Keyframe (기존 유지) */
        @keyframes fadeIn {
            from { opacity: 0; }
            to   { opacity: 1; }
        }

        /* 4. "fade-in-text" 클래스 (기존 유지) */
        .fade-in-text {
            animation: fadeIn 0.7s ease-out forwards;
            opacity: 0;
        }

        /* 5. 딜레이 클래스 (기존 유지) */
        .delay-1 { animation-delay: 0.2s; }
        .delay-2 { animation-delay: 0.4s; }
        .delay-3 { animation-delay: 0.6s; }
        .delay-4 { animation-delay: 0.9s; }

        /* 6. 3D Float 애니메이션 Keyframes (높이 조절 포함) */
        @keyframes subtle-3d-float {
            0%, 100% {
                transform: translateY(-80px) rotateX(0deg) rotateY(0deg);
            }
            50% {
                transform: translateY(-80px) rotateX(-8deg) rotateY(5deg);
            }
        }

        /* 7. 3D Float 애니메이션 적용 클래스 (기존 유지) */
        .animate-float {
            animation: subtle-3d-float 6s ease-in-out infinite;
            transform-style: preserve-3d;
        }

        /* 8. 3D 원근감(perspective)을 위한 클래스 (기존 유지) */
        .has-perspective {
            perspective: 800px;
        }

    </style>
</head>

<body class="relative flex items-center justify-center min-h-screen m-0 p-0 font-mono text-center overflow-hidden">

<div class="has-perspective animate-float">

    <h1 class="fade-in-text delay-1 text-6xl font-medium uppercase tracking-widest text-green-700 leading-none
                     hover:scale-105 transition-transform duration-300 cursor-default">
        Welcome
    </h1>
    <h1 class="fade-in-text delay-2 text-6xl font-medium uppercase tracking-widest text-green-700 leading-none
                     hover:scale-105 transition-transform duration-300 cursor-default">
        To My
    </h1>
    <h1 class="fade-in-text delay-3 text-6xl font-medium uppercase tracking-widest text-green-700 leading-none
                     hover:scale-105 transition-transform duration-300 cursor-default">
        Page
    </h1>
</div>

<div class="fade-in-text delay-4 text-center
                absolute bottom-0 left-0 right-0 pb-16">

    <a href="/todo/list"
       class="bg-white text-black border-2 border-black
                  px-6 py-3 uppercase tracking-widest text-lg font-bold
                  rounded-lg shadow-md
                  hover:bg-gray-100 hover:shadow-lg
                  transition-all duration-300 ease-in-out
                  cursor-pointer">
        CLICK TO CONTINUE
    </a>

    <div class="mt-6 flex justify-center">
        <svg class="w-8 h-8 text-black animate-bounce"
             fill="none"
             stroke="currentColor"
             viewBox="0 0 24 24"
             xmlns="http://www.w3.org/2000/svg">
            <path stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M19 9l-7 7-7-7">
            </path>
        </svg>
    </div>
</div>

</body>
</html>