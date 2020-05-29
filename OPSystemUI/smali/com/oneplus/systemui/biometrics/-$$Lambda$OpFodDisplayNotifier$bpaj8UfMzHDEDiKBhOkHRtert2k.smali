.class public final synthetic Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFodDisplayNotifier$bpaj8UfMzHDEDiKBhOkHRtert2k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFodDisplayNotifier$bpaj8UfMzHDEDiKBhOkHRtert2k;->f$0:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    iput p2, p0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFodDisplayNotifier$bpaj8UfMzHDEDiKBhOkHRtert2k;->f$1:I

    iput p3, p0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFodDisplayNotifier$bpaj8UfMzHDEDiKBhOkHRtert2k;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFodDisplayNotifier$bpaj8UfMzHDEDiKBhOkHRtert2k;->f$0:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    iget v1, p0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFodDisplayNotifier$bpaj8UfMzHDEDiKBhOkHRtert2k;->f$1:I

    iget p0, p0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFodDisplayNotifier$bpaj8UfMzHDEDiKBhOkHRtert2k;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->lambda$notifyDisplayDimMode$1$OpFodDisplayNotifier(II)V

    return-void
.end method
