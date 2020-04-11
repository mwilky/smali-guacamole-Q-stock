.class Lcom/android/settings/FallbackHome$1;
.super Ljava/lang/Object;
.source "FallbackHome.java"

# interfaces
.implements Landroid/app/WallpaperManager$OnColorsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/FallbackHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FallbackHome;


# direct methods
.method constructor <init>(Lcom/android/settings/FallbackHome;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/FallbackHome$1;->this$0:Lcom/android/settings/FallbackHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorsChanged(Landroid/app/WallpaperColors;I)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/FallbackHome$1;->this$0:Lcom/android/settings/FallbackHome;

    invoke-virtual {v0}, Lcom/android/settings/FallbackHome;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/FallbackHome$1;->this$0:Lcom/android/settings/FallbackHome;

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/android/settings/FallbackHome;->access$000(Lcom/android/settings/FallbackHome;Landroid/app/WallpaperColors;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/FallbackHome$1;->this$0:Lcom/android/settings/FallbackHome;

    invoke-static {v1}, Lcom/android/settings/FallbackHome;->access$100(Lcom/android/settings/FallbackHome;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    :cond_0
    return-void
.end method
