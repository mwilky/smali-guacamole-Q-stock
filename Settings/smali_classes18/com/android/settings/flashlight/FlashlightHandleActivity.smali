.class public Lcom/android/settings/flashlight/FlashlightHandleActivity;
.super Landroid/app/Activity;
.source "FlashlightHandleActivity.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final EXTRA_FALLBACK_TO_HOMEPAGE:Ljava/lang/String; = "fallback_to_homepage"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/flashlight/FlashlightHandleActivity$1;

    invoke-direct {v0}, Lcom/android/settings/flashlight/FlashlightHandleActivity$1;-><init>()V

    sput-object v0, Lcom/android/settings/flashlight/FlashlightHandleActivity;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/flashlight/FlashlightHandleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fallback_to_homepage"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/flashlight/FlashlightHandleActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/flashlight/FlashlightHandleActivity;->finish()V

    return-void
.end method
