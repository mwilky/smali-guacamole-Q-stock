.class public Lcom/android/settings/panel/MediaOutputPanel;
.super Ljava/lang/Object;
.source "MediaOutputPanel.java"

# interfaces
.implements Lcom/android/settings/panel/PanelContent;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/panel/MediaOutputPanel;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/panel/MediaOutputPanel;
    .locals 1

    new-instance v0, Lcom/android/settings/panel/MediaOutputPanel;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/panel/MediaOutputPanel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x679

    return v0
.end method

.method public getSeeMoreIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSlices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->MEDIA_OUTPUT_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/panel/MediaOutputPanel;->mPackageName:Ljava/lang/String;

    const-string v3, "media_package_name"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->MEDIA_OUTPUT_SLICE_URI:Landroid/net/Uri;

    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->MEDIA_OUTPUT_SLICE_URI:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mContext:Landroid/content/Context;

    const v1, 0x7f120a44

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
