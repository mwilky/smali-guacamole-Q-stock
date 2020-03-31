.class public final Lcom/android/systemui/DependencyProvider_ProvideSensorPrivacyManagerFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideSensorPrivacyManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/hardware/SensorPrivacyManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/systemui/DependencyProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DependencyProvider_ProvideSensorPrivacyManagerFactory;->module:Lcom/android/systemui/DependencyProvider;

    iput-object p2, p0, Lcom/android/systemui/DependencyProvider_ProvideSensorPrivacyManagerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideSensorPrivacyManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/DependencyProvider_ProvideSensorPrivacyManagerFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/DependencyProvider_ProvideSensorPrivacyManagerFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/DependencyProvider_ProvideSensorPrivacyManagerFactory;-><init>(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Landroid/hardware/SensorPrivacyManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Landroid/hardware/SensorPrivacyManager;"
        }
    .end annotation

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/systemui/DependencyProvider_ProvideSensorPrivacyManagerFactory;->proxyProvideSensorPrivacyManager(Lcom/android/systemui/DependencyProvider;Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideSensorPrivacyManager(Lcom/android/systemui/DependencyProvider;Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/DependencyProvider;->provideSensorPrivacyManager(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/hardware/SensorPrivacyManager;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/hardware/SensorPrivacyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/DependencyProvider_ProvideSensorPrivacyManagerFactory;->module:Lcom/android/systemui/DependencyProvider;

    iget-object p0, p0, Lcom/android/systemui/DependencyProvider_ProvideSensorPrivacyManagerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/DependencyProvider_ProvideSensorPrivacyManagerFactory;->provideInstance(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Landroid/hardware/SensorPrivacyManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider_ProvideSensorPrivacyManagerFactory;->get()Landroid/hardware/SensorPrivacyManager;

    move-result-object p0

    return-object p0
.end method
