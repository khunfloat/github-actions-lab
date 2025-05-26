#!/bin/bash

# ใช้ script นี้ด้วยความระมัดระวัง!
# แนะนำให้ทดสอบบน repo ทดสอบก่อน

# ===== CONFIG =====
BRANCH_NAME="main"  # แก้ชื่อ branch ถ้าใช้ชื่ออื่น
COMMIT_MESSAGE="Initial commit after history reset"
# ===================

echo "🚨 WARNING: This will completely reset the Git history for branch '$BRANCH_NAME'."
read -p "Are you sure you want to continue? (yes/[no]): " confirm

if [[ "$confirm" != "yes" ]]; then
  echo "❌ Aborted."
  exit 1
fi

# ตรวจสอบว่าอยู่ใน git repo หรือไม่
if [ ! -d ".git" ]; then
  echo "❌ This is not a Git repository."
  exit 1
fi

# สร้าง orphan branch ใหม่
echo "📦 Creating orphan branch..."
git checkout --orphan temp-history-reset

# ลบ staged และ tracked files ออก
git reset --hard

# เพิ่มไฟล์ใหม่ทั้งหมดและ commit
echo "✅ Adding files and committing..."
git add -A
git commit -m "$COMMIT_MESSAGE"

# ลบ branch เก่า
echo "🧹 Deleting old branch '$BRANCH_NAME'..."
git branch -D $BRANCH_NAME

# เปลี่ยนชื่อ orphan branch เป็น branch เดิม
git branch -m $BRANCH_NAME

# Force push
echo "🚀 Force pushing to remote origin/$BRANCH_NAME ..."
git push -f origin $BRANCH_NAME

echo "✅ Git history has been reset and pushed!"

