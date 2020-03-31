.class final Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;
.super Ljava/lang/Object;
.source "ContextualButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ButtonData"
.end annotation


# instance fields
.field button:Lcom/android/systemui/statusbar/phone/ContextualButton;

.field markedVisible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ContextualButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/statusbar/phone/ContextualButton;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->markedVisible:Z

    return-void
.end method


# virtual methods
.method setVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/statusbar/phone/ContextualButton;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ContextualButton;->setVisibility(I)V

    return-void
.end method
