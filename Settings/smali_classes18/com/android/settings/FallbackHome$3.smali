.class Lcom/android/settings/FallbackHome$3;
.super Landroid/os/AsyncTask;
.source "FallbackHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FallbackHome;->loadWallpaperColors(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FallbackHome;

.field final synthetic val$flags:I


# direct methods
.method constructor <init>(Lcom/android/settings/FallbackHome;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/FallbackHome$3;->this$0:Lcom/android/settings/FallbackHome;

    iput p2, p0, Lcom/android/settings/FallbackHome$3;->val$flags:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/FallbackHome$3;->this$0:Lcom/android/settings/FallbackHome;

    invoke-static {v0}, Lcom/android/settings/FallbackHome;->access$100(Lcom/android/settings/FallbackHome;)Landroid/app/WallpaperManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/FallbackHome$3;->this$0:Lcom/android/settings/FallbackHome;

    invoke-static {v1}, Lcom/android/settings/FallbackHome;->access$100(Lcom/android/settings/FallbackHome;)Landroid/app/WallpaperManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/FallbackHome$3;->this$0:Lcom/android/settings/FallbackHome;

    invoke-static {v2}, Lcom/android/settings/FallbackHome;->access$300(Lcom/android/settings/FallbackHome;)Landroid/app/WallpaperManager$OnColorsChangedListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V

    return-object v3

    :cond_0
    iget-object v1, p0, Lcom/android/settings/FallbackHome$3;->this$0:Lcom/android/settings/FallbackHome;

    iget v2, p0, Lcom/android/settings/FallbackHome$3;->val$flags:I

    invoke-static {v1, v0, v2}, Lcom/android/settings/FallbackHome;->access$000(Lcom/android/settings/FallbackHome;Landroid/app/WallpaperColors;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/FallbackHome$3;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/FallbackHome$3;->this$0:Lcom/android/settings/FallbackHome;

    invoke-virtual {v0}, Lcom/android/settings/FallbackHome;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/FallbackHome$3;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
