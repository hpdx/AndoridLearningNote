.class public Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;
.super Ljava/lang/Object;
.source "FuzzyKeyMemoryCache.java"

# interfaces
.implements Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;


# instance fields
.field private final cache:Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

.field private final keyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;Ljava/util/Comparator;)V
    .locals 0
    .parameter "cache"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, keyComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

    .line 41
    iput-object p2, p0, Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->keyComparator:Ljava/util/Comparator;

    .line 42
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {v0}, Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;->clear()V

    .line 75
    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "key"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {v0, p1}, Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public keys()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {v0}, Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;->keys()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 47
    iget-object v3, p0, Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

    monitor-enter v3

    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, keyToRemove:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {v2}, Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;->keys()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 55
    :goto_0
    if-eqz v1, :cond_1

    .line 56
    iget-object v2, p0, Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {v2, v1}, Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    iget-object v2, p0, Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {v2, p1, p2}, Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 49
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    .local v0, cacheKey:Ljava/lang/String;
    iget-object v4, p0, Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->keyComparator:Ljava/util/Comparator;

    invoke-interface {v4, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_0

    .line 51
    move-object v1, v0

    .line 52
    goto :goto_0

    .line 47
    .end local v0           #cacheKey:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "key"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {v0, p1}, Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
