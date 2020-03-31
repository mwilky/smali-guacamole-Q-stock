.class public final Lcom/android/systemui/DependencyProvider_ProvidePackageManagerWrapperFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvidePackageManagerWrapperFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/android/systemui/DependencyProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/DependencyProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DependencyProvider_ProvidePackageManagerWrapperFactory;->module:Lcom/android/systemui/DependencyProvider;

    return-void
.end method

.method public static create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvidePackageManagerWrapperFactory;
    .locals 1

    new-instance v0, Lcom/android/systemui/DependencyProvider_ProvidePackageManagerWrapperFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/DependencyProvider_ProvidePackageManagerWrapperFactory;-><init>(Lcom/android/systemui/DependencyProvider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/shared/system/PackageManagerWrapper;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/DependencyProvider_ProvidePackageManagerWrapperFactory;->proxyProvidePackageManagerWrapper(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvidePackageManagerWrapper(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/shared/system/PackageManagerWrapper;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider;->providePackageManagerWrapper()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/shared/system/PackageManagerWrapper;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/shared/system/PackageManagerWrapper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/DependencyProvider_ProvidePackageManagerWrapperFactory;->module:Lcom/android/systemui/DependencyProvider;

    invoke-static {p0}, Lcom/android/systemui/DependencyProvider_ProvidePackageManagerWrapperFactory;->provideInstance(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider_ProvidePackageManagerWrapperFactory;->get()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object p0

    return-object p0
.end method
