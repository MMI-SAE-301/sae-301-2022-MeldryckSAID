<template>
  <footer class="flex h-60 items-center justify-around bg-black">
    <div class="mx-4 flex items-center">
      <img
        class="w-24"
        src="/src/assets/image/Logo_dark.svg"
        alt="Logo TIK TAK"
      />
    </div>
    <div class="flex flex-col">
      <h4 class="mx-2 font-montagu-slab text-2xl font-bold text-blanc">
        Mention Légales
      </h4>
      <h4 class="mx-2 font-montagu-slab text-2xl font-bold text-blanc">
        Contact
      </h4>
    </div>
    <router-link to="/">
      <h1
        class="mx-2 text-center font-montagu-slab text-2xl font-bold text-Marron"
      >
        Tik TAK
      </h1>
    </router-link>
    <div class="mx-4 flex items-center">
      <h4 class="mx-2 font-montagu-slab text-2xl font-bold text-blanc">
        Exercice réalisé dans le cadre d'un exercice pédagogique au <br />
        département MMI de Montbéliard
      </h4>

      <img class="w-24" src="/src/assets/image/logo_mmi.png" alt="Logo MMi" />
    </div>
  </footer>
</template>
