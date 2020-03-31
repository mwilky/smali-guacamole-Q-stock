.class public abstract Lcom/android/systemui/pip/phone/PipTouchGesture;
.super Ljava/lang/Object;
.source "PipTouchGesture.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract onDown(Lcom/android/systemui/pip/phone/PipTouchState;)V
.end method

.method abstract onMove(Lcom/android/systemui/pip/phone/PipTouchState;)Z
.end method

.method abstract onUp(Lcom/android/systemui/pip/phone/PipTouchState;)Z
.end method
