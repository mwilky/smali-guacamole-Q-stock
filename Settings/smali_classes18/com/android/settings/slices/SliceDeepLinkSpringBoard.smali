.class public Lcom/android/settings/slices/SliceDeepLinkSpringBoard;
.super Landroid/app/Activity;
.source "SliceDeepLinkSpringBoard.java"


# static fields
.field public static final EXTRA_SLICE:Ljava/lang/String; = "slice"

.field private static final TAG:Ljava/lang/String; = "DeeplinkSpringboard"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static parse(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    const-string v0, "slice"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->parse(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "DeeplinkSpringboard"

    if-nez v0, :cond_0

    const-string v2, "No data found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->finish()V

    return-void

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/android/settings/slices/CustomSliceRegistry;->isValidUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    nop

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0}, Lcom/android/settings/slices/CustomSliceRegistry;->getSliceClassByUri(Landroid/net/Uri;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/slices/CustomSliceable;->createInstance(Landroid/content/Context;Ljava/lang/Class;)Lcom/android/settings/slices/CustomSliceable;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settings/slices/CustomSliceable;->getIntent()Landroid/content/Intent;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/settings/slices/CustomSliceRegistry;->ZEN_MODE_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/android/settings/notification/ZenModeSliceBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/settings/slices/CustomSliceRegistry;->BLUETOOTH_URI:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/android/settings/slices/SlicesDatabaseAccessor;

    invoke-direct {v2, p0}, Lcom/android/settings/slices/SlicesDatabaseAccessor;-><init>(Landroid/content/Context;)V

    nop

    invoke-virtual {v2, v0}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->getSliceDataFromUri(Landroid/net/Uri;)Lcom/android/settings/slices/SliceData;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/settings/slices/SliceBuilderUtils;->getContentIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/content/Intent;

    move-result-object v4

    move-object v2, v4

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Couldn\'t launch Slice intent"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->finish()V

    :goto_1
    return-void
.end method
