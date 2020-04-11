.class public Lcom/google/android/setupdesign/GlifListLayout;
.super Lcom/google/android/setupdesign/GlifLayout;
.source "GlifListLayout.java"


# instance fields
.field private listMixin:Lcom/google/android/setupdesign/template/ListMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/setupdesign/GlifListLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/setupdesign/GlifListLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/setupdesign/GlifListLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/setupdesign/GlifListLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p2, p3}, Lcom/google/android/setupdesign/GlifListLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3

    new-instance v0, Lcom/google/android/setupdesign/template/ListMixin;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/setupdesign/template/ListMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    const-class v0, Lcom/google/android/setupdesign/template/ListMixin;

    iget-object v1, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupdesign/GlifListLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    const-class v0, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifListLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    new-instance v1, Lcom/google/android/setupdesign/template/ListViewScrollHandlingDelegate;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifListLayout;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/setupdesign/template/ListViewScrollHandlingDelegate;-><init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->setScrollHandlingDelegate(Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;)V

    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 1

    if-nez p1, :cond_0

    const p1, 0x102000a

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/ListMixin;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/ListMixin;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDividerInset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/ListMixin;->getDividerInset()I

    move-result v0

    return v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/ListMixin;->getDividerInsetEnd()I

    move-result v0

    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/ListMixin;->getDividerInsetStart()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/ListMixin;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_list_template:I

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/google/android/setupdesign/GlifLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/ListMixin;->onLayout()V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/template/ListMixin;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setDividerInset(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/template/ListMixin;->setDividerInset(I)V

    return-void
.end method

.method public setDividerInsets(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/setupdesign/template/ListMixin;->setDividerInsets(II)V

    return-void
.end method
