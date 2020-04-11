.class public Lcom/android/server/wm/zta/zta$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/zta/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "zta"
.end annotation


# instance fields
.field public mDelay:F

.field public mDuration:F

.field public mEnd:F

.field public mInterpolator:Landroid/view/animation/Interpolator;

.field public mStart:F

.field final synthetic this$0:Lcom/android/server/wm/zta/zta;

.field public value:F


# direct methods
.method public constructor <init>(Lcom/android/server/wm/zta/zta;FFFFLandroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/zta/zta$zta;->this$0:Lcom/android/server/wm/zta/zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/wm/zta/zta$zta;->mStart:F

    iput p2, p0, Lcom/android/server/wm/zta/zta$zta;->value:F

    iput p3, p0, Lcom/android/server/wm/zta/zta$zta;->mEnd:F

    iput p4, p0, Lcom/android/server/wm/zta/zta$zta;->mDelay:F

    iput p5, p0, Lcom/android/server/wm/zta/zta$zta;->mDuration:F

    iput-object p6, p0, Lcom/android/server/wm/zta/zta$zta;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method
