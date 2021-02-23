import fse from "fs-extra";
import path from "path";
const axios = require("axios");

export default async function asyncModule() {
  try {
    const { data } = await axios(
      "http://deadcustomer.local/wp-json/wp/v2/pages?orderby=menu_order&order=asc"
    );
    fse.writeFile("./static/pages.json", JSON.stringify(data));
  } catch (err) {
    console.log(err);
  }
}
