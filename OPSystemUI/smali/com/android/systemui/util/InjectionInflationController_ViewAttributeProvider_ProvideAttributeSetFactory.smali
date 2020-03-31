.class public final Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;
.super Ljava/lang/Object;
.source "InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/util/AttributeSet;",
        ">;"
    }
.end annotation


# direct methods
.method public static proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;->provideAttributeSet()Landroid/util/AttributeSet;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/util/AttributeSet;

    return-object p0
.end method
