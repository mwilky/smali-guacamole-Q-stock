.class final Lcom/oneplus/volume/OpOutputChooserDialog$ItemComparator;
.super Ljava/lang/Object;
.source "OpOutputChooserDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/volume/OpOutputChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ItemComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/oneplus/volume/OpOutputChooserLayout$Item;",
        ">;"
    }
.end annotation


# static fields
.field public static final sInstance:Lcom/oneplus/volume/OpOutputChooserDialog$ItemComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/volume/OpOutputChooserDialog$ItemComparator;

    invoke-direct {v0}, Lcom/oneplus/volume/OpOutputChooserDialog$ItemComparator;-><init>()V

    sput-object v0, Lcom/oneplus/volume/OpOutputChooserDialog$ItemComparator;->sInstance:Lcom/oneplus/volume/OpOutputChooserDialog$ItemComparator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/volume/OpOutputChooserLayout$Item;Lcom/oneplus/volume/OpOutputChooserLayout$Item;)I
    .locals 1

    iget-boolean p0, p1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->canDisconnect:Z

    iget-boolean v0, p2, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->canDisconnect:Z

    if-eq p0, v0, :cond_0

    invoke-static {v0, p0}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    return p0

    :cond_0
    iget p0, p1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->deviceType:I

    iget v0, p2, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->deviceType:I

    if-eq p0, v0, :cond_1

    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    :cond_1
    iget-object p0, p1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->line1:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p2, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->line1:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;

    check-cast p2, Lcom/oneplus/volume/OpOutputChooserLayout$Item;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/volume/OpOutputChooserDialog$ItemComparator;->compare(Lcom/oneplus/volume/OpOutputChooserLayout$Item;Lcom/oneplus/volume/OpOutputChooserLayout$Item;)I

    move-result p0

    return p0
.end method
