// Copyright (C) 2024 Intel Corporation
// SPDX-License-Identifier: Apache-2.0

import React from "react"
import ReactDOM from "react-dom/client"
import App from "./App.tsx"
import "./index.scss"
import { Provider } from 'react-redux'
import { store } from "./redux/store.ts"

ReactDOM.createRoot(document.getElementById("root")!).render(
  <React.StrictMode>
    <Provider store={store} >
      <App />
    </Provider>
  </React.StrictMode>
)
