.class public final synthetic Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerImpl$VJW_VOVtQGpUmd7AtKlCfAEhBZE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/classifier/FalsingManagerImpl;

.field private final synthetic f$1:Landroid/hardware/Sensor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/classifier/FalsingManagerImpl;Landroid/hardware/Sensor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerImpl$VJW_VOVtQGpUmd7AtKlCfAEhBZE;->f$0:Lcom/android/systemui/classifier/FalsingManagerImpl;

    iput-object p2, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerImpl$VJW_VOVtQGpUmd7AtKlCfAEhBZE;->f$1:Landroid/hardware/Sensor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerImpl$VJW_VOVtQGpUmd7AtKlCfAEhBZE;->f$0:Lcom/android/systemui/classifier/FalsingManagerImpl;

    iget-object p0, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerImpl$VJW_VOVtQGpUmd7AtKlCfAEhBZE;->f$1:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->lambda$registerSensors$1$FalsingManagerImpl(Landroid/hardware/Sensor;)V

    return-void
.end method
