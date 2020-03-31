.class public final Lcom/android/systemui/SystemUIFactory_ProvideAssistManagerFactory;
.super Ljava/lang/Object;
.source "SystemUIFactory_ProvideAssistManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/assist/AssistManager;",
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

.field private final controllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/systemui/SystemUIFactory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/SystemUIFactory;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/SystemUIFactory_ProvideAssistManagerFactory;->module:Lcom/android/systemui/SystemUIFactory;

    iput-object p2, p0, Lcom/android/systemui/SystemUIFactory_ProvideAssistManagerFactory;->controllerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/SystemUIFactory_ProvideAssistManagerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIFactory_ProvideAssistManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/SystemUIFactory;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/SystemUIFactory_ProvideAssistManagerFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/SystemUIFactory_ProvideAssistManagerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/SystemUIFactory_ProvideAssistManagerFactory;-><init>(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/SystemUIFactory;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/assist/AssistManager;"
        }
    .end annotation

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/SystemUIFactory_ProvideAssistManagerFactory;->proxyProvideAssistManager(Lcom/android/systemui/SystemUIFactory;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;)Lcom/android/systemui/assist/AssistManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideAssistManager(Lcom/android/systemui/SystemUIFactory;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;)Lcom/android/systemui/assist/AssistManager;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/SystemUIFactory;->provideAssistManager(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;)Lcom/android/systemui/assist/AssistManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/assist/AssistManager;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/SystemUIFactory_ProvideAssistManagerFactory;->module:Lcom/android/systemui/SystemUIFactory;

    iget-object v1, p0, Lcom/android/systemui/SystemUIFactory_ProvideAssistManagerFactory;->controllerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/SystemUIFactory_ProvideAssistManagerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/SystemUIFactory_ProvideAssistManagerFactory;->provideInstance(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/SystemUIFactory_ProvideAssistManagerFactory;->get()Lcom/android/systemui/assist/AssistManager;

    move-result-object p0

    return-object p0
.end method
