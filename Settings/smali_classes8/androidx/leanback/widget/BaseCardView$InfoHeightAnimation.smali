.class final Landroidx/leanback/widget/BaseCardView$InfoHeightAnimation;
.super Landroidx/leanback/widget/BaseCardView$AnimationBase;
.source "BaseCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/BaseCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InfoHeightAnimation"
.end annotation


# instance fields
.field private mDelta:F

.field private mStartValue:F

.field final synthetic this$0:Landroidx/leanback/widget/BaseCardView;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/BaseCardView;FF)V
    .locals 1

    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView$InfoHeightAnimation;->this$0:Landroidx/leanback/widget/BaseCardView;

    invoke-direct {p0, p1}, Landroidx/leanback/widget/BaseCardView$AnimationBase;-><init>(Landroidx/leanback/widget/BaseCardView;)V

    iput p2, p0, Landroidx/leanback/widget/BaseCardView$InfoHeightAnimation;->mStartValue:F

    sub-float v0, p3, p2

    iput v0, p0, Landroidx/leanback/widget/BaseCardView$InfoHeightAnimation;->mDelta:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView$InfoHeightAnimation;->this$0:Landroidx/leanback/widget/BaseCardView;

    iget v1, p0, Landroidx/leanback/widget/BaseCardView$InfoHeightAnimation;->mStartValue:F

    iget v2, p0, Landroidx/leanback/widget/BaseCardView$InfoHeightAnimation;->mDelta:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    invoke-virtual {v0}, Landroidx/leanback/widget/BaseCardView;->requestLayout()V

    return-void
.end method
