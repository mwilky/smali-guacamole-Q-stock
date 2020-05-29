.class public final synthetic Lcom/oneplus/systemui/biometrics/-$$Lambda$OpQLController$2TCG8Dg9bfuOlZpWl6dbwhpYtg4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/oneplus/systemui/biometrics/OpQLController;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/systemui/biometrics/OpQLController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpQLController$2TCG8Dg9bfuOlZpWl6dbwhpYtg4;->f$0:Lcom/oneplus/systemui/biometrics/OpQLController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpQLController$2TCG8Dg9bfuOlZpWl6dbwhpYtg4;->f$0:Lcom/oneplus/systemui/biometrics/OpQLController;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpQLController;->lambda$shouldHideQLView$0$OpQLController()V

    return-void
.end method
