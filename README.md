# normal_pass_web — 網頁會員認證系統（含 Firebase 驗證）

##  一句話介紹  
使用 Flutter Web 與 Firebase 打造簡單、安全的會員註冊／登入系統。

##  專案背景  
在開發 Web 應用時，會員認證是非常基礎又關鍵的一部分，這個專案就以 Flutter Web 為前端，搭配 Firebase Authentication 進行完整會員功能整合與實作。

##  技術堆疊  
- **前端**：Flutter Web (Dart)  
- **認證後端**：Firebase Authentication  
- **部署選項**：可選用 GitHub Pages、Firebase Hosting、Apache 等方式上線  

##  核心功能  
1. 使用者註冊（支援 Email／Password 認證）  
2. 使用者登入與登出  
3. 錯誤處理機制（如密碼錯誤、Email 格式驗證）  
4. Firebase 驗證代碼（Email 認證流程）  
5. 流程導引與驗證狀態回饋（如顯示「已驗證 Email」）  

##  可擴充功能  
- 加入第三方登入方式（Google / Facebook）  
- 加入 Firebase Realtime Database 或 Firestore 作為使用者資料儲存  
- 打造會員頁面或權限分級功能  

