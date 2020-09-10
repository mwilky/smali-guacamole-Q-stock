.class Lcom/oneplus/aod/OpAnalogClock$1;
.super Ljava/lang/Object;
.source "OpAnalogClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/OpAnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAnalogClock;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAnalogClock;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/OpAnalogClock$1;->this$0:Lcom/oneplus/aod/OpAnalogClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAnalogClock$1;->this$0:Lcom/oneplus/aod/OpAnalogClock;

    invoke-static {p0}, Lcom/oneplus/aod/OpAnalogClock;->access$000(Lcom/oneplus/aod/OpAnalogClock;)V

    return-void
.end method
