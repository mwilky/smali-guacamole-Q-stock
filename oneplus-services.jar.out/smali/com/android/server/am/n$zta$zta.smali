.class Lcom/android/server/am/n$zta$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/n$zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field Lw:Lcom/android/server/am/n$you;

.field Mw:I

.field Nw:Z

.field final synthetic this$1:Lcom/android/server/am/n$zta;


# direct methods
.method private constructor <init>(Lcom/android/server/am/n$zta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/n$zta$zta;->this$1:Lcom/android/server/am/n$zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/am/n$zta$zta;->Mw:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/n$zta$zta;->Nw:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/n$zta;Lcom/android/server/am/OpAntiBurnController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/n$zta$zta;-><init>(Lcom/android/server/am/n$zta;)V

    return-void
.end method
