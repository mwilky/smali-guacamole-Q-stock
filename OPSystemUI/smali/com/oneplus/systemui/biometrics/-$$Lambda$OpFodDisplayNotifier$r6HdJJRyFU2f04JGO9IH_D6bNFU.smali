.class public final synthetic Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFodDisplayNotifier$r6HdJJRyFU2f04JGO9IH_D6bNFU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFodDisplayNotifier$r6HdJJRyFU2f04JGO9IH_D6bNFU;->f$0:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    iput p2, p0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFodDisplayNotifier$r6HdJJRyFU2f04JGO9IH_D6bNFU;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFodDisplayNotifier$r6HdJJRyFU2f04JGO9IH_D6bNFU;->f$0:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    iget p0, p0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFodDisplayNotifier$r6HdJJRyFU2f04JGO9IH_D6bNFU;->f$1:I

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->lambda$notifyAodMode$0$OpFodDisplayNotifier(I)V

    return-void
.end method
