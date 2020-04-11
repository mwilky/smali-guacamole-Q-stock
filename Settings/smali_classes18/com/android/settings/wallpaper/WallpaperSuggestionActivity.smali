.class public Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;
.super Lcom/android/settings/wallpaper/StyleSuggestionActivityBase;
.source "WallpaperSuggestionActivity.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final WALLPAPER_FLAVOR_EXTRA:Ljava/lang/String; = "com.android.launcher3.WALLPAPER_FLAVOR"

.field private static final WALLPAPER_FOCUS:Ljava/lang/String; = "focus_wallpaper"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity$1;

    invoke-direct {v0}, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity$1;-><init>()V

    sput-object v0, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wallpaper/StyleSuggestionActivityBase;-><init>()V

    return-void
.end method

.method public static isSuggestionComplete(Landroid/content/Context;)Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p0}, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;->isWallpaperServiceEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "wallpaper"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method protected addExtras(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.android.launcher3.WALLPAPER_FLAVOR"

    const-string v1, "focus_wallpaper"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
