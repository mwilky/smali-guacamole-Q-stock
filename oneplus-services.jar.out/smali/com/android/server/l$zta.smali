.class Lcom/android/server/l$zta;
.super Lcom/android/server/am/rtg;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/l;


# direct methods
.method private constructor <init>(Lcom/android/server/l;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/l$zta;->this$0:Lcom/android/server/l;

    invoke-direct {p0}, Lcom/android/server/am/rtg;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/l;Lcom/android/server/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/l$zta;-><init>(Lcom/android/server/l;)V

    return-void
.end method


# virtual methods
.method public rtg(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/l$zta;->this$0:Lcom/android/server/l;

    invoke-virtual {p0, p1}, Lcom/android/server/l;->ibl(I)V

    return-void
.end method
