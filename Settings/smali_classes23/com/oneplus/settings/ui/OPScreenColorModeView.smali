.class public Lcom/oneplus/settings/ui/OPScreenColorModeView;
.super Landroid/widget/FrameLayout;
.source "OPScreenColorModeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPScreenColorModeView$MyOnPageChangeListener;
    }
.end annotation


# static fields
.field private static final LAYOUT_RES_ID:I = 0x7f0d0213

.field private static final LAYOUT_RES_ID_2K:I = 0x7f0d0214


# instance fields
.field private currIndex:I

.field private mContext:Landroid/content/Context;

.field private mPage0:Landroid/widget/ImageView;

.field private mPage1:Landroid/widget/ImageView;

.field private mPage2:Landroid/widget/ImageView;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->currIndex:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPScreenColorModeView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->currIndex:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPScreenColorModeView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->currIndex:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPScreenColorModeView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPScreenColorModeView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPScreenColorModeView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mPage0:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPScreenColorModeView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mPage1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/ui/OPScreenColorModeView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mPage2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/oneplus/settings/ui/OPScreenColorModeView;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->currIndex:I

    return p1
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    const/16 v2, 0x5a0

    if-ne v1, v2, :cond_0

    const v2, 0x7f0d0214

    invoke-direct {p0, v2}, Lcom/oneplus/settings/ui/OPScreenColorModeView;->setLayoutResource(I)V

    goto :goto_0

    :cond_0
    const v2, 0x7f0d0213

    invoke-direct {p0, v2}, Lcom/oneplus/settings/ui/OPScreenColorModeView;->setLayoutResource(I)V

    :goto_0
    invoke-virtual {p0, p0}, Lcom/oneplus/settings/ui/OPScreenColorModeView;->onBindViewHolder(Landroid/view/View;)V

    return-void
.end method

.method private setLayoutResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/view/View;)V
    .locals 11

    const v0, 0x7f0a0789

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/oneplus/settings/ui/OPScreenColorModeView$MyOnPageChangeListener;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/OPScreenColorModeView$MyOnPageChangeListener;-><init>(Lcom/oneplus/settings/ui/OPScreenColorModeView;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const v0, 0x7f0a0509

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mPage0:Landroid/widget/ImageView;

    const v0, 0x7f0a050a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mPage1:Landroid/widget/ImageView;

    const v0, 0x7f0a050b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mPage2:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d0216

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0308

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0805e9

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f0805ea

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v4, 0x7f0805eb

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/oneplus/settings/ui/OPScreenColorModeView$1;

    invoke-direct {v8, p0, v4}, Lcom/oneplus/settings/ui/OPScreenColorModeView$1;-><init>(Lcom/oneplus/settings/ui/OPScreenColorModeView;Ljava/util/ArrayList;)V

    iget-object v9, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v9, v8}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v9, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v10, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->currIndex:I

    invoke-virtual {v9, v10}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
