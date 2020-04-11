.class public Lcom/android/settings/accounts/ProviderEntry;
.super Ljava/lang/Object;
.source "ProviderEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/accounts/ProviderEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/CharSequence;

.field private final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accounts/ProviderEntry;->name:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/settings/accounts/ProviderEntry;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/accounts/ProviderEntry;)I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accounts/ProviderEntry;->name:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v1, p1, Lcom/android/settings/accounts/ProviderEntry;->name:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-static {v0, v1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/accounts/ProviderEntry;

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ProviderEntry;->compareTo(Lcom/android/settings/accounts/ProviderEntry;)I

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/ProviderEntry;->name:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/ProviderEntry;->type:Ljava/lang/String;

    return-object v0
.end method
