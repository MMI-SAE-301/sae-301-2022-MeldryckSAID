<template>
  <header class="flex justify-between bg-blanc py-4">
    <div class="flex justify-around">
      <router-link class="text-black" to="/">
        <div class="mx-4 flex items-center">
          <img class="w-12" src="src/assets/image/Logo_tiktak.svg" alt="Logo TIK TAK" />
          <h1 class="mx-2 font-montagu-slab text-2xl font-bold text-Marron">
            Tik TAK
          </h1>
        </div>
      </router-link>
    </div>

    <div class="flex items-center justify-around">
      <!-- <router-link class="text-black px-5  font-montagu-slab font-bold text-2xl " to="/test">
            test
          </router-link> -->
      <router-link
        class="px-5 font-montagu-slab text-2xl font-bold text-black delay-150 hover:border-b-2 hover:border-b-Marron hover:transition hover:delay-300"
        to="/persoindex"
      >
        Personalisation
      </router-link>

      <router-link
        class="px-5 font-montagu-slab text-2xl font-bold text-black delay-150 hover:border-b-2 hover:border-b-Marron hover:transition hover:delay-300"
        to="/produit"
      >
        Produit
      </router-link>

      <router-link
        class="px-5 font-montagu-slab text-2xl font-bold text-black delay-150 hover:border-b-2 hover:border-b-Marron hover:transition hover:delay-300"
        to="/liste"
      >
        Ma liste
      </router-link>

      <router-link
        class="px-5 "
        to="/connexion"
      >
        <img src="src/assets/image/user.svg" alt="User" />
      </router-link>
    </div>
  </header>

  <!-- Affiche les pages -->
  <Suspense>
    <router-view class="m-2 border-2 p-2" />
  </Suspense>
</template>

<script setup lang="ts"></script>
