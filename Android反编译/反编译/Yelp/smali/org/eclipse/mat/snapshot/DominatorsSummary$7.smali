.class final Lorg/eclipse/mat/snapshot/DominatorsSummary$7;
.super Ljava/lang/Object;
.source "DominatorsSummary.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/snapshot/DominatorsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 495
    const-wide/16 v0, 0x0

    .line 496
    .local v0, c1:J
    const-wide/16 v2, 0x0

    .line 498
    .local v2, c2:J
    instance-of v4, p1, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;

    if-eqz v4, :cond_0

    .line 499
    check-cast p1, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;

    .end local p1
    invoke-virtual {p1}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->getDominatorRetainedSize()J

    move-result-wide v0

    .line 500
    check-cast p2, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;

    .end local p2
    invoke-virtual {p2}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->getDominatorRetainedSize()J

    move-result-wide v2

    .line 505
    :goto_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    return v4

    .line 502
    .restart local p1
    .restart local p2
    :cond_0
    check-cast p1, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;

    .end local p1
    invoke-virtual {p1}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->getDominatorRetainedSize()J

    move-result-wide v0

    .line 503
    check-cast p2, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;

    .end local p2
    invoke-virtual {p2}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->getDominatorRetainedSize()J

    move-result-wide v2

    goto :goto_0

    .line 505
    :cond_1
    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method
