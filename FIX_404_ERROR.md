# 🔧 Fix cho project đã tạo bằng v1.0.0 - v1.0.5

## Vấn đề
Project bị lỗi `TypeError: (intermediate value).routerEntry.getRouter is not a function` hoặc 404.

## Nguyên nhân
- Version `@tanstack/react-start` mới nhất (1.139.x) có breaking changes.
- Cấu trúc file server entry chưa đúng.

## Cách fix

### 1. Downgrade dependencies

Chạy lệnh sau để cài đặt version ổn định (1.121.0):

```bash
pnpm add @tanstack/react-query@^5.83.0 @tanstack/react-router@^1.121.0 @tanstack/react-router-with-query@^1.121.0
pnpm add -D @tanstack/react-start@^1.121.0 @tanstack/router-core@^1.121.0 @tanstack/start-client-core@^1.121.0
```

### 2. Đổi tên và sửa file server entry

Đổi tên `src/ssr.tsx` thành `src/server.ts`.

Nội dung `src/server.ts`:

```typescript
import { createStartHandler, defaultStreamHandler } from '@tanstack/react-start/server'
import { createRouter } from './router'

export default createStartHandler({
  createRouter: () => createRouter(),
})(defaultStreamHandler)
```

### 3. Sửa file `src/client.tsx`

```typescript
import { hydrateRoot } from 'react-dom/client'
import { StartClient } from '@tanstack/react-start'
import { createRouter } from './router'

const router = createRouter()

hydrateRoot(document, <StartClient router={router} />)
```

### 4. Chạy lại

```bash
pnpm dev
```

## Hoặc tạo lại project với version mới

```bash
npx create-tanstack-boilerplate@latest
```

---

**Version 1.0.6 đã fix tất cả các lỗi này!** ✅
