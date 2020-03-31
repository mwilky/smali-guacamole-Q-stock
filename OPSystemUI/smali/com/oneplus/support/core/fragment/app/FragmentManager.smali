.class public abstract Lcom/oneplus/support/core/fragment/app/FragmentManager;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;,
        Lcom/oneplus/support/core/fragment/app/FragmentManager$OnBackStackChangedListener;,
        Lcom/oneplus/support/core/fragment/app/FragmentManager$BackStackEntry;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract beginTransaction()Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract executePendingTransactions()Z
.end method

.method public abstract findFragmentByTag(Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/Fragment;
.end method

.method public abstract getFragments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isStateSaved()Z
.end method

.method public abstract popBackStackImmediate()Z
.end method
