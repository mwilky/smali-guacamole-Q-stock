.class public abstract Lorg/bouncycastle/asn1/ibl/bud;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private params:Lorg/bouncycastle/asn1/ibl/vju;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract Xi()Lorg/bouncycastle/asn1/ibl/vju;
.end method

.method public declared-synchronized getParameters()Lorg/bouncycastle/asn1/ibl/vju;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ibl/bud;->params:Lorg/bouncycastle/asn1/ibl/vju;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/bud;->Xi()Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ibl/bud;->params:Lorg/bouncycastle/asn1/ibl/vju;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ibl/bud;->params:Lorg/bouncycastle/asn1/ibl/vju;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
