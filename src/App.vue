<template>
  <header class="bg-blanc">
    <nav>
      <ul>
        <li>
          <router-link class="text-black underline" to="/">
            <div class="flex">
              <img
                class="w-8"
                src="public/Logo_tiktak.svg"
                alt="Logo TIK TAK"
              />
              <h1 class="font-modern text-Marron">Tik TAK</h1>
            </div>
          </router-link>
        </li>
      </ul>
      <ul>
        <li>
          <router-link class="text-black underline" to="/personalisation">
            personalisation
          </router-link>
        </li>

        <li>
          <router-link class="text-black underline" to="/produit">
            Produit
          </router-link>
        </li>
        <li>
          <router-link class="text-black underline" to="/liste">
            Ma liste
          </router-link>
        </li>
      </ul>
    </nav>
  </header>

  <!-- Affiche les pages -->
  <Suspense>
    <router-view class="m-2 border-2 p-2" />
  </Suspense>
</template>

<script setup lang="ts"></script>
