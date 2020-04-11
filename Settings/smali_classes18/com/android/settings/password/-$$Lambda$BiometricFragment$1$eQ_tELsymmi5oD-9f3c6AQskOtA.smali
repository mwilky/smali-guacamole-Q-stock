.class public final synthetic Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$eQ_tELsymmi5oD-9f3c6AQskOtA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/password/BiometricFragment$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/password/BiometricFragment$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$eQ_tELsymmi5oD-9f3c6AQskOtA;->f$0:Lcom/android/settings/password/BiometricFragment$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$eQ_tELsymmi5oD-9f3c6AQskOtA;->f$0:Lcom/android/settings/password/BiometricFragment$1;

    invoke-virtual {v0}, Lcom/android/settings/password/BiometricFragment$1;->lambda$onAuthenticationFailed$1$BiometricFragment$1()V

    return-void
.end method
