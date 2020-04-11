.class public Lcom/android/settingslib/widget/AppEntitiesHeaderController;
.super Ljava/lang/Object;
.source "AppEntitiesHeaderController.java"


# static fields
.field public static final MAXIMUM_APPS:I = 0x3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AppEntitiesHeaderCtl"


# instance fields
.field private final mAppEntityInfos:[Lcom/android/settingslib/widget/AppEntityInfo;

.field private final mAppEntityViews:[Landroid/view/View;

.field private final mAppIconViews:[Landroid/widget/ImageView;

.field private final mAppSummaryViews:[Landroid/widget/TextView;

.field private final mAppTitleViews:[Landroid/widget/TextView;

.field private final mAppViewsContainer:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDetailsOnClickListener:Landroid/view/View$OnClickListener;

.field private mHeaderDetails:Ljava/lang/CharSequence;

.field private mHeaderDetailsRes:I

.field private final mHeaderDetailsView:Landroid/widget/Button;

.field private mHeaderEmptyRes:I

.field private final mHeaderEmptyView:Landroid/widget/TextView;

.field private mHeaderTitleRes:I

.field private final mHeaderTitleView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settingslib/widget/R$id;->header_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderTitleView:Landroid/widget/TextView;

    sget v0, Lcom/android/settingslib/widget/R$id;->header_details:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderDetailsView:Landroid/widget/Button;

    sget v0, Lcom/android/settingslib/widget/R$id;->empty_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderEmptyView:Landroid/widget/TextView;

    sget v0, Lcom/android/settingslib/widget/R$id;->app_views_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppViewsContainer:Landroid/view/View;

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/android/settingslib/widget/AppEntityInfo;

    iput-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppEntityInfos:[Lcom/android/settingslib/widget/AppEntityInfo;

    new-array v1, v0, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppIconViews:[Landroid/widget/ImageView;

    new-array v1, v0, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppTitleViews:[Landroid/widget/TextView;

    new-array v1, v0, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppSummaryViews:[Landroid/widget/TextView;

    new-array v1, v0, [Landroid/view/View;

    sget v2, Lcom/android/settingslib/widget/R$id;->app1_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Lcom/android/settingslib/widget/R$id;->app2_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget v2, Lcom/android/settingslib/widget/R$id;->app3_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppEntityViews:[Landroid/view/View;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppEntityViews:[Landroid/view/View;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppIconViews:[Landroid/widget/ImageView;

    sget v4, Lcom/android/settingslib/widget/R$id;->app_icon:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppTitleViews:[Landroid/widget/TextView;

    sget v4, Lcom/android/settingslib/widget/R$id;->app_title:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppSummaryViews:[Landroid/widget/TextView;

    sget v4, Lcom/android/settingslib/widget/R$id;->app_summary:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bindAppEntityView(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppEntityInfos:[Lcom/android/settingslib/widget/AppEntityInfo;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppEntityViews:[Landroid/view/View;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppEntityViews:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v0}, Lcom/android/settingslib/widget/AppEntityInfo;->getClickListener()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppIconViews:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v0}, Lcom/android/settingslib/widget/AppEntityInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/android/settingslib/widget/AppEntityInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppTitleViews:[Landroid/widget/TextView;

    aget-object v3, v3, p1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppTitleViews:[Landroid/widget/TextView;

    aget-object v3, v3, p1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/android/settingslib/widget/AppEntityInfo;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppSummaryViews:[Landroid/widget/TextView;

    aget-object v4, v4, p1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v5

    :cond_2
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppSummaryViews:[Landroid/widget/TextView;

    aget-object v2, v2, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private bindHeaderDetailsView()V
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderDetails:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderDetailsRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AppEntitiesHeaderCtl"

    const-string v3, "Resource of header details can\'t not be found!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderDetailsView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderDetailsView:Landroid/widget/Button;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderDetailsView:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mDetailsOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private bindHeaderTitleView()V
    .locals 4

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderTitleRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AppEntitiesHeaderCtl"

    const-string v3, "Resource of header title can\'t not be found!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderTitleView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private isAppEntityInfosEmpty()Z
    .locals 5

    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppEntityInfos:[Lcom/android/settingslib/widget/AppEntityInfo;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static newInstance(Landroid/content/Context;Landroid/view/View;)Lcom/android/settingslib/widget/AppEntitiesHeaderController;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method

.method private setEmptyViewVisible(Z)V
    .locals 4

    iget v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderEmptyRes:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderDetailsView:Landroid/widget/Button;

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppViewsContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->bindHeaderTitleView()V

    invoke-direct {p0}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->isAppEntityInfosEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->setEmptyViewVisible(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->setEmptyViewVisible(Z)V

    invoke-direct {p0}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->bindHeaderDetailsView()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->bindAppEntityView(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clearAllAppEntities()Lcom/android/settingslib/widget/AppEntitiesHeaderController;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->removeAppEntity(I)Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public removeAppEntity(I)Lcom/android/settingslib/widget/AppEntitiesHeaderController;
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppEntityInfos:[Lcom/android/settingslib/widget/AppEntityInfo;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    return-object p0
.end method

.method public setAppEntity(ILcom/android/settingslib/widget/AppEntityInfo;)Lcom/android/settingslib/widget/AppEntitiesHeaderController;
    .locals 1
    .param p2    # Lcom/android/settingslib/widget/AppEntityInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppEntityInfos:[Lcom/android/settingslib/widget/AppEntityInfo;

    aput-object p2, v0, p1

    return-object p0
.end method

.method public setHeaderDetails(Ljava/lang/CharSequence;)Lcom/android/settingslib/widget/AppEntitiesHeaderController;
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderDetails:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setHeaderDetailsClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/AppEntitiesHeaderController;
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mDetailsOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setHeaderDetailsRes(I)Lcom/android/settingslib/widget/AppEntitiesHeaderController;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderDetailsRes:I

    return-object p0
.end method

.method public setHeaderEmptyRes(I)Lcom/android/settingslib/widget/AppEntitiesHeaderController;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderEmptyRes:I

    return-object p0
.end method

.method public setHeaderTitleRes(I)Lcom/android/settingslib/widget/AppEntitiesHeaderController;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderTitleRes:I

    return-object p0
.end method
