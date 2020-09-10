.class public Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;
.super Landroid/widget/FrameLayout;
.source "OPFingerPrintFodBgAnimView.java"


# static fields
.field public static final ANIM_DELAY_TIME:I = 0x20

.field public static final PATH_1:I = 0x0

.field public static final PATH_2:I = 0x1

.field public static final PATH_3:I = 0x2

.field public static final PATH_4:I = 0x3

.field public static final PATH_5:I = 0x4

.field public static final PATH_6:I = 0x5

.field public static final PATH_7:I = 0x6


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFodBgView:Landroid/widget/FrameLayout;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPath_1:Landroid/widget/ImageView;

.field private mPath_10:Landroid/widget/ImageView;

.field private mPath_11:Landroid/widget/ImageView;

.field private mPath_2:Landroid/widget/ImageView;

.field private mPath_3:Landroid/widget/ImageView;

.field private mPath_4:Landroid/widget/ImageView;

.field private mPath_5:Landroid/widget/ImageView;

.field private mPath_6:Landroid/widget/ImageView;

.field private mPath_7:Landroid/widget/ImageView;

.field private mPath_8:Landroid/widget/ImageView;

.field private mPath_9:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public static autoGenericCode(II)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public hide(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public initBgAnimView(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->setCenterVisible(Z)V

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d01a5

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a04dc

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_1:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a04dd

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_2:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a04de

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_3:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a04df

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_4:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a04e0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_5:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a04e1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_6:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a04e2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_7:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a04e3

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_8:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a04e4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_9:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a04e5

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_10:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a04e6

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_11:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mFodBgView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->initBgAnimView(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public setCenterVisible(Z)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_1:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_2:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_3:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_4:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_5:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_6:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_7:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_8:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_9:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_10:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_11:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setEdgeVisible(Z)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_5:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_6:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_7:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_8:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_9:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    move v3, v1

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_10:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    move v3, v1

    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_11:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public startTouchDownAnim()V
    .locals 21

    move-object/from16 v0, p0

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v12, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f70a3d7    # 0.94f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f70a3d7    # 0.94f

    const/4 v8, 0x2

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x2

    const/high16 v11, 0x3f000000    # 0.5f

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v3, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f882b93

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f882b93

    const/4 v13, 0x2

    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x2

    const/high16 v16, 0x3f000000    # 0.5f

    move-object v8, v6

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const-wide/16 v8, 0x96

    invoke-virtual {v6, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v10, 0x21e

    invoke-virtual {v6, v10, v11}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v10, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_1:Landroid/widget/ImageView;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v10, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_5:Landroid/widget/ImageView;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v1, v10

    new-instance v19, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f70a3d7    # 0.94f

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3f70a3d7    # 0.94f

    const/16 v17, 0x2

    const/high16 v18, 0x3f000000    # 0.5f

    move-object/from16 v10, v19

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object/from16 v3, v19

    invoke-virtual {v3, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v10, 0x20

    invoke-virtual {v3, v10, v11}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v10, Landroid/view/animation/ScaleAnimation;

    const v14, 0x3f882b93

    const/high16 v15, 0x3f800000    # 1.0f

    const v16, 0x3f882b93

    const/16 v19, 0x2

    const/high16 v20, 0x3f000000    # 0.5f

    move-object v12, v10

    invoke-direct/range {v12 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object v6, v10

    invoke-virtual {v6, v7}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v6, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v10, 0x1fe

    invoke-virtual {v6, v10, v11}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v10, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_2:Landroid/widget/ImageView;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v10, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_6:Landroid/widget/ImageView;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v1, v10

    new-instance v19, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f70a3d7    # 0.94f

    const v14, 0x3f70a3d7    # 0.94f

    const/4 v15, 0x2

    const/high16 v16, 0x3f000000    # 0.5f

    move-object/from16 v10, v19

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object/from16 v3, v19

    invoke-virtual {v3, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v10, 0x40

    invoke-virtual {v3, v10, v11}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v10, Landroid/view/animation/ScaleAnimation;

    const v14, 0x3f882b93

    const/high16 v15, 0x3f800000    # 1.0f

    const v16, 0x3f882b93

    const/16 v19, 0x2

    move-object v12, v10

    invoke-direct/range {v12 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object v6, v10

    invoke-virtual {v6, v7}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v6, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v10, 0x1de

    invoke-virtual {v6, v10, v11}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v10, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_3:Landroid/widget/ImageView;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v10, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_7:Landroid/widget/ImageView;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v1, v10

    new-instance v19, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f70a3d7    # 0.94f

    const v14, 0x3f70a3d7    # 0.94f

    const/4 v15, 0x2

    const/high16 v16, 0x3f000000    # 0.5f

    move-object/from16 v10, v19

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object/from16 v3, v19

    invoke-virtual {v3, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v10, 0x60

    invoke-virtual {v3, v10, v11}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v10, Landroid/view/animation/ScaleAnimation;

    const v14, 0x3f882b93

    const/high16 v15, 0x3f800000    # 1.0f

    const v16, 0x3f882b93

    const/16 v19, 0x2

    move-object v12, v10

    invoke-direct/range {v12 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object v6, v10

    invoke-virtual {v6, v7}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v6, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v10, 0x1be

    invoke-virtual {v6, v10, v11}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v10, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_4:Landroid/widget/ImageView;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v10, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_8:Landroid/widget/ImageView;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v1, v10

    new-instance v19, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f70a3d7    # 0.94f

    const v14, 0x3f70a3d7    # 0.94f

    const/4 v15, 0x2

    const/high16 v16, 0x3f000000    # 0.5f

    move-object/from16 v10, v19

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object/from16 v3, v19

    invoke-virtual {v3, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v10, 0x80

    invoke-virtual {v3, v10, v11}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v10, Landroid/view/animation/ScaleAnimation;

    const v14, 0x3f882b93

    const/high16 v15, 0x3f800000    # 1.0f

    const v16, 0x3f882b93

    const/16 v19, 0x2

    move-object v12, v10

    invoke-direct/range {v12 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object v6, v10

    invoke-virtual {v6, v7}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v6, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v10, 0x19e

    invoke-virtual {v6, v10, v11}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v10, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_9:Landroid/widget/ImageView;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v1, v10

    new-instance v19, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f70a3d7    # 0.94f

    const v14, 0x3f70a3d7    # 0.94f

    const/4 v15, 0x2

    const/high16 v16, 0x3f000000    # 0.5f

    move-object/from16 v10, v19

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object/from16 v3, v19

    invoke-virtual {v3, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v10, 0xa0

    invoke-virtual {v3, v10, v11}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v10, Landroid/view/animation/ScaleAnimation;

    const v14, 0x3f882b93

    const/high16 v15, 0x3f800000    # 1.0f

    const v16, 0x3f882b93

    const/16 v19, 0x2

    move-object v12, v10

    invoke-direct/range {v12 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object v6, v10

    invoke-virtual {v6, v7}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v6, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v10, 0x17e

    invoke-virtual {v6, v10, v11}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v10, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_10:Landroid/widget/ImageView;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v1, v10

    new-instance v19, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f70a3d7    # 0.94f

    const v14, 0x3f70a3d7    # 0.94f

    const/4 v15, 0x2

    const/high16 v16, 0x3f000000    # 0.5f

    move-object/from16 v10, v19

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object/from16 v3, v19

    invoke-virtual {v3, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v4, 0xc0

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v12, 0x3f882b93

    const v14, 0x3f882b93

    move-object v10, v2

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v2, v7}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v2, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->mPath_11:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
