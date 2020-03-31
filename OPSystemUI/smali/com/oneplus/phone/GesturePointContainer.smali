.class public Lcom/oneplus/phone/GesturePointContainer;
.super Ljava/lang/Object;
.source "GesturePointContainer.java"


# instance fields
.field private mPoint:Landroid/graphics/PointF;

.field private mRotation:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSide:I

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/graphics/PointF;IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/phone/GesturePointContainer;->mPoint:Landroid/graphics/PointF;

    iput p2, p0, Lcom/oneplus/phone/GesturePointContainer;->mState:I

    iput p3, p0, Lcom/oneplus/phone/GesturePointContainer;->mSide:I

    iput p4, p0, Lcom/oneplus/phone/GesturePointContainer;->mRotation:I

    iput p5, p0, Lcom/oneplus/phone/GesturePointContainer;->mScreenHeight:I

    iput p6, p0, Lcom/oneplus/phone/GesturePointContainer;->mScreenWidth:I

    return-void
.end method


# virtual methods
.method public getPoint()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/phone/GesturePointContainer;->mPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getRotation()I
    .locals 0

    iget p0, p0, Lcom/oneplus/phone/GesturePointContainer;->mRotation:I

    return p0
.end method

.method public getState()I
    .locals 0

    iget p0, p0, Lcom/oneplus/phone/GesturePointContainer;->mState:I

    return p0
.end method
