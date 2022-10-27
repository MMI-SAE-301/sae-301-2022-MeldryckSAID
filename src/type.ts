export interface montrex {
  boitier?: string;
  boitier_rond?: string;
  ecran?: string;

  bracelet_t?: string;
  bracelet_b?: string;

  cercle_in?: string;
  cercle_ex?: string;

  pointe?: string;
}
export interface montrer {
  boitier?: string;
  boitier_rond?: string;
  ecranr?: string;

  braceletr_t?: string;
  braceletr_b?: string;

  cercler_in?: string;
  cercler_ex?: string;
}
export interface montrec {
  boitier?: string;
 
  ecranc?: string;

  braceletc_t?: string;
  braceletc_b?: string;

  carrer_in?: string;
  carrer_ex?: string;
}

export const colors = {
  "#9F7550": "Marron",
  "#FFD700": "Jaune",
  "#0085FF": "Bleu",
  "#C76D03": "Orange",
  "#000000": "Noir",
  "#FFFFFF": "Blanc",
};

export const materiaux = [
  {
    value: "ece9b013-f979-49a9-ae29-9a16491a9891",
    img: "/src/assets/materiaux/acier.jpg",
    label: "acier",
  },
  {
    value: "6359dc1f-3926-4f25-ae46-c101e7b39166",
    img: "/src/assets/materiaux/bois.jpg",
    label: "bois",
  },
  {
    value: "d4583c12-c4aa-45b6-b128-b25f05ee62ad",
    img: "/src/assets/materiaux/plastique.jpg",
    label: "plastique",
  },
];