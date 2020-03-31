.class Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;
.super Ljava/lang/Object;
.source "OpDragPanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/keyguard/OpDragPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VelocityTracker"
.end annotation


# instance fields
.field endTime:J

.field mEndPoint:Landroid/graphics/Point;

.field mStartPoint:Landroid/graphics/Point;

.field startTime:J

.field final synthetic this$0:Lcom/oneplus/keyguard/OpDragPanelController;


# direct methods
.method public constructor <init>(Lcom/oneplus/keyguard/OpDragPanelController;FF)V
    .locals 2

    iput-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->startTime:J

    iput-wide v0, p0, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->endTime:J

    new-instance p1, Landroid/graphics/Point;

    float-to-int p2, p2

    float-to-int p3, p3

    invoke-direct {p1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->mStartPoint:Landroid/graphics/Point;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->startTime:J

    return-void
.end method


# virtual methods
.method public isDrop()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->mEndPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->mStartPoint:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-static {}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1500()I

    move-result v0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateMovePoint(FF)V
    .locals 1

    new-instance v0, Landroid/graphics/Point;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->mEndPoint:Landroid/graphics/Point;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->endTime:J

    return-void
.end method
