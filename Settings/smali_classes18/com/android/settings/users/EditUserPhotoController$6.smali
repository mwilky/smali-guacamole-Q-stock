.class Lcom/android/settings/users/EditUserPhotoController$6;
.super Landroid/os/AsyncTask;
.source "EditUserPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/EditUserPhotoController;->onPhotoCropped(Landroid/net/Uri;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/EditUserPhotoController;

.field final synthetic val$cropped:Z

.field final synthetic val$data:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/settings/users/EditUserPhotoController;ZLandroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    iput-boolean p2, p0, Lcom/android/settings/users/EditUserPhotoController$6;->val$cropped:Z

    iput-object p3, p0, Lcom/android/settings/users/EditUserPhotoController$6;->val$data:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 11

    const-string v0, "Cannot close image stream"

    const-string v1, "EditUserPhotoController"

    iget-boolean v2, p0, Lcom/android/settings/users/EditUserPhotoController$6;->val$cropped:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v4}, Lcom/android/settings/users/EditUserPhotoController;->access$300(Lcom/android/settings/users/EditUserPhotoController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/users/EditUserPhotoController$6;->val$data:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    move-object v2, v4

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v3

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_2
    const-string v5, "Cannot find image file"

    invoke-static {v1, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v5

    invoke-static {v1, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-object v3

    :goto_2
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v4

    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_3
    throw v3

    :cond_3
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v0}, Lcom/android/settings/users/EditUserPhotoController;->access$700(Lcom/android/settings/users/EditUserPhotoController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v1}, Lcom/android/settings/users/EditUserPhotoController;->access$700(Lcom/android/settings/users/EditUserPhotoController;)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    :try_start_5
    iget-object v4, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v4}, Lcom/android/settings/users/EditUserPhotoController;->access$300(Lcom/android/settings/users/EditUserPhotoController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/users/EditUserPhotoController$6;->val$data:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v2, v5

    nop

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v4, v3

    add-int v8, v5, v3

    invoke-direct {v6, v4, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v8}, Lcom/android/settings/users/EditUserPhotoController;->access$700(Lcom/android/settings/users/EditUserPhotoController;)I

    move-result v8

    iget-object v9, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v9}, Lcom/android/settings/users/EditUserPhotoController;->access$700(Lcom/android/settings/users/EditUserPhotoController;)I

    move-result v9

    const/4 v10, 0x0

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v2, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0

    :cond_4
    return-object v3

    :catch_4
    move-exception v4

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/users/EditUserPhotoController$6;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v0, p1}, Lcom/android/settings/users/EditUserPhotoController;->access$802(Lcom/android/settings/users/EditUserPhotoController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v0}, Lcom/android/settings/users/EditUserPhotoController;->access$1000(Lcom/android/settings/users/EditUserPhotoController;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v2}, Lcom/android/settings/users/EditUserPhotoController;->access$800(Lcom/android/settings/users/EditUserPhotoController;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settingslib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/CircleFramedDrawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/users/EditUserPhotoController;->access$902(Lcom/android/settings/users/EditUserPhotoController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v0}, Lcom/android/settings/users/EditUserPhotoController;->access$1000(Lcom/android/settings/users/EditUserPhotoController;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v1}, Lcom/android/settings/users/EditUserPhotoController;->access$900(Lcom/android/settings/users/EditUserPhotoController;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v1}, Lcom/android/settings/users/EditUserPhotoController;->access$300(Lcom/android/settings/users/EditUserPhotoController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "TakeEditUserPhoto2.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v1}, Lcom/android/settings/users/EditUserPhotoController;->access$300(Lcom/android/settings/users/EditUserPhotoController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "CropEditUserPhoto.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/settings/users/EditUserPhotoController$6;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
