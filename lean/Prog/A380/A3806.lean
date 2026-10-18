import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A380600: Irregular table T(n, k), n > 0, k = 1..A000005(n) read by rows: the n-th row lists the numbers of the form n * (d-1) / d with d a positive divisor of n.

The programs for A380600, there is no canonical definition to state claims against.
-/

/-! ## A380600.P9573759212702938998

`Δ[A397890(n)]-A056538(n+1)`
-/

namespace A380600.P9573759212702938998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A056538 (n + 1)

end

end A380600.P9573759212702938998

/-! ## A380600.P14831988722923925456

`A061017(n+1)-A056538(n+1)`
-/

namespace A380600.P14831988722923925456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1) - A056538 (n + 1)

end

end A380600.P14831988722923925456

/-! ## A380600.P10736409566418369314

`A208239(n+1)-A027750(n+1)`
-/

namespace A380600.P10736409566418369314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208239 (n + 1) - A027750 (n + 1)

end

end A380600.P10736409566418369314

/-! ## A380600.P9537539185277947953

`A056538(n+1)*A263730(n+2)`
-/

namespace A380600.P9537539185277947953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (n + 1) * A263730 (n + 2)

end

end A380600.P9537539185277947953

/-! ## A380600.P3972895769486175073

`A061017(n+1)-abs(A233772(n+1))`
-/

namespace A380600.P3972895769486175073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1) - |A233772 (n + 1)|

end

end A380600.P3972895769486175073

/-! ## A380600.P12546381877240540295

`(A027750(n+1)-1)*A056538(n+1)`
-/

namespace A380600.P12546381877240540295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027750 (n + 1) - 1) * A056538 (n + 1)

end

end A380600.P12546381877240540295

/-! ## A380600.P10214394981478402406

`(1-A027750(n+1))*A233772(n+1)`
-/

namespace A380600.P10214394981478402406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A027750 (n + 1)) * A233772 (n + 1)

end

end A380600.P10214394981478402406

/-! ## A380600.P749151021150004867

`A397890(n+1)-(A397890(n)+A056538(n+1))`
-/

namespace A380600.P749151021150004867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397890 (n + 1) - (A397890 n + A056538 (n + 1))

end

end A380600.P749151021150004867

/-! ## A380600.P17220076250033380064

`A061017(n+1)-A061017(n+1)/A027750(n+1)`
-/

namespace A380600.P17220076250033380064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061017 (n + 1) : ℚ) - (A061017 (n + 1) : ℚ) / (A027750 (n + 1) : ℚ)

end

end A380600.P17220076250033380064

/-! ## A380600.P7898663903610134214

`A207034(A299774(n+1))`
-/

namespace A380600.P7898663903610134214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207034 (A299774 (n + 1)).toNat

end

end A380600.P7898663903610134214

/-!
# A380603: Expansion of e.g.f. exp(2*x*G(x)^2) where G(x) = 1 + x*G(x)^3 is the g.f. of A001764.

The programs for A380603, there is no canonical definition to state claims against.
-/

/-! ## A380603.P8642915114912818419

`A020656(A008544(n)+1)`
-/

namespace A380603.P8642915114912818419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020656 (A008544 n + 1).toNat

end

end A380603.P8642915114912818419

/-!
# A380604: Numbers k such that there is no number i such that A046144(i) = 2*k.

The programs for A380604, there is no canonical definition to state claims against.
-/

/-! ## A380604.P7563258663984668623

`eq[0, A231772(2*n)]`
-/

namespace A380604.P7563258663984668623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231772 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A380604.P7563258663984668623

/-! ## A380604.P11660030094165276425

`comp[A004526(A046144(n+1))]`
-/

namespace A380604.P11660030094165276425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A046144 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A380604.P11660030094165276425

/-! ## A380604.P10189509525038670508

`comp[A006370(A046144(n+2))]`
-/

namespace A380604.P10189509525038670508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A046144 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A380604.P10189509525038670508

/-! ## A380604.P6334105728934169391

`comp[A025480(A046144(n+3))]`
-/

namespace A380604.P6334105728934169391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A046144 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A380604.P6334105728934169391

/-! ## A380604.P10194469955594125123

`lt[A231772(2*n), A000120(n)]`
-/

namespace A380604.P10194469955594125123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231772 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380604.P10194469955594125123

/-! ## A380604.P16072460218913643783

`lt[A231772(2*n), A006068(n)]`
-/

namespace A380604.P16072460218913643783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231772 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380604.P16072460218913643783

/-! ## A380604.P7222122885402448876

`comp[lt[A366381(2*n+1), A231772(2*n)]]`
-/

namespace A380604.P7222122885402448876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366381 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231772 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A380604.P7222122885402448876

/-!
# A380605: Expansion of e.g.f. exp(2*x*G(x)^3) where G(x) = 1 + x*G(x)^4 is the g.f. of A002293.

The programs for A380605, there is no canonical definition to state claims against.
-/

/-! ## A380605.P17951383299745683542

`A057859(A349558(n+1))-A000045(n)`
-/

namespace A380605.P17951383299745683542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057859 (A349558 (n + 1)).toNat - A000045 n

end

end A380605.P17951383299745683542

/-!
# A380612: a(n) = (-1)^n*Product_{k=1..n} (2*k + 1)*(2*k - 3).

The programs for A380612, there is no canonical definition to state claims against.
-/

/-! ## A380612.P11001759120051727579

`∏[(2*n+1)*(3-2*n)]/3`
-/

namespace A380612.P11001759120051727579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (3 - (2 * n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A380612.P11001759120051727579

/-! ## A380612.P12070068699590533313

`(2*n+1)*(3-2*n)*a(n-1)` with `a(0)=1`
-/

namespace A380612.P12070068699590533313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1 : ℤ) * ((3 - (2 * n : ℤ)) * a (n - 1))

end

end A380612.P12070068699590533313

/-! ## A380612.P11636039111052257686

`(2*n+1)*A385369(2*n)`
-/

namespace A380612.P11636039111052257686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A385369 (2 * n)

end

end A380612.P11636039111052257686

/-! ## A380612.P3907540336476789593

`A046126(A004273(n))`
-/

namespace A380612.P3907540336476789593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046126 (A004273 n).toNat

end

end A380612.P3907540336476789593

/-! ## A380612.P17298472696188726905

`A001147(n+1)*A330797(n)`
-/

namespace A380612.P17298472696188726905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (n + 1) * A330797 n

end

end A380612.P17298472696188726905

/-!
# A380613: Expansion of Product_{k>=1} (1 + x^k)^prime(k)#.

The programs for A380613, there is no canonical definition to state claims against.
-/

/-! ## A380613.P2838092277522952103

`A318285(∑[C(2*n, n)])`
-/

namespace A380613.P2838092277522952103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318285 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A380613.P2838092277522952103

/-!
# A380614: Product_{n>=1} (1 + x^n)^a(n) = Sum_{n>=0} prime(n)# * x^n.

The programs for A380614, there is no canonical definition to state claims against.
-/

/-! ## A380614.P11201316486883687020

`A376761(A187235(n+1))+A000708(n+2)`
-/

namespace A380614.P11201316486883687020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376761 (A187235 (n + 1)).toNat + A000708 (n + 2)

end

end A380614.P11201316486883687020

/-!
# A380615: Triangle read by rows: T(n,k) is the number of sensed combinatorial maps with n edges and k vertices, 1 <= k <= n + 1.

The programs for A380615, there is no canonical definition to state claims against.
-/

/-! ## A380615.P3428423074876854545

`2*A380616(n)-A380617(n)`
-/

namespace A380615.P3428423074876854545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A380616 n - A380617 n

end

end A380615.P3428423074876854545

/-! ## A380615.P18060628222932446059

`A317492(A380616(n))`
-/

namespace A380615.P18060628222932446059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317492 (A380616 n).toNat

end

end A380615.P18060628222932446059

/-!
# A380616: Triangle read by rows: T(n,k) is the number of unsensed combinatorial maps with n edges and k vertices, 1 <= k <= n + 1.

The programs for A380616, there is no canonical definition to state claims against.
-/

/-! ## A380616.P1193235465524703569

`A253554(A380617(n)+A380615(n))`
-/

namespace A380616.P1193235465524703569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253554 (A380617 n + A380615 n).toNat

end

end A380616.P1193235465524703569

/-!
# A380617: Triangle read by rows: T(n,k) is the number of achiral combinatorial maps with n edges and k vertices, 1 <= k <= n + 1.

The programs for A380617, there is no canonical definition to state claims against.
-/

/-! ## A380617.P4887078169714148767

`2*A380616(n)-A380615(n)`
-/

namespace A380617.P4887078169714148767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A380616 n - A380615 n

end

end A380617.P4887078169714148767

/-!
# A380618: Number of sensed combinatorial maps with n edges and 2 vertices.

The programs for A380618, there is no canonical definition to state claims against.
-/

/-! ## A380618.P2780766784583174053

`A380615(∑[n+1]+1)`
-/

namespace A380618.P2780766784583174053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380615 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A380618.P2780766784583174053

/-! ## A380618.P7616493297155652954

`record[A380615(A360654(n+2)+1)]`
-/

namespace A380618.P7616493297155652954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380615 (A360654 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380618.P7616493297155652954

/-! ## A380618.P9709292043966784736

`record[A380615(n+2)/A218592(n+1)]`
-/

namespace A380618.P9709292043966784736
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380615 (n + 2) : ℚ) / (A218592 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380618.P9709292043966784736

/-!
# A380619: Number of sensed combinatorial maps with n edges and 3 vertices.

The programs for A380619, there is no canonical definition to state claims against.
-/

/-! ## A380619.P11763999777391275530

`A380615(eq[2, A002262(n)])`
-/

namespace A380619.P11763999777391275530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A380619.P11763999777391275530

/-! ## A380619.P14959054717469922424

`A380615(A000217(n+2)+2)`
-/

namespace A380619.P14959054717469922424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380615 (A000217 (n + 2) + 2).toNat

end

end A380619.P14959054717469922424

/-! ## A380619.P194398947386838999

`A380615(A034856(n+1)+4)`
-/

namespace A380619.P194398947386838999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380615 (A034856 (n + 1) + 4).toNat

end

end A380619.P194398947386838999

/-! ## A380619.P1835381480116048967

`A380615(A161680(n+3)+2)`
-/

namespace A380619.P1835381480116048967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380615 (A161680 (n + 3) + 2).toNat

end

end A380619.P1835381480116048967

/-! ## A380619.P1692516170249346893

`A380615(A008805(2*(n+2))-(n+1))`
-/

namespace A380619.P1692516170249346893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380615 (A008805 (2 * (n + 2)) - (n + 1 : ℤ)).toNat

end

end A380619.P1692516170249346893

/-!
# A380620: Number of unsensed combinatorial maps with n edges and 2 vertices.

The programs for A380620, there is no canonical definition to state claims against.
-/

/-! ## A380620.P10137739626664853535

`A380616(∑[n+1]+1)`
-/

namespace A380620.P10137739626664853535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380616 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A380620.P10137739626664853535

/-! ## A380620.P14317893407267533668

`record[A010054(n)*A380616(n+1)]`
-/

namespace A380620.P14317893407267533668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A380616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380620.P14317893407267533668

/-!
# A380621: Number of unsensed combinatorial maps with n edges and 3 vertices.

The programs for A380621, there is no canonical definition to state claims against.
-/

/-! ## A380621.P4994481274581404265

`A380616(eq[2, A002262(n)])`
-/

namespace A380621.P4994481274581404265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380616 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A380621.P4994481274581404265

/-! ## A380621.P16992144454723679211

`A380616(A167614(n+1)-1)`
-/

namespace A380621.P16992144454723679211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380616 (A167614 (n + 1) - 1).toNat

end

end A380621.P16992144454723679211

/-! ## A380621.P10748313346916075693

`A380616(A034856(n+1)+4)`
-/

namespace A380621.P10748313346916075693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380616 (A034856 (n + 1) + 4).toNat

end

end A380621.P10748313346916075693

/-! ## A380621.P1112392828536609920

`A380616(A161680(n+3)+2)`
-/

namespace A380621.P1112392828536609920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380616 (A161680 (n + 3) + 2).toNat

end

end A380621.P1112392828536609920

/-!
# A380622: Array read by antidiagonals: T(n,k) is the number of rooted k-regular combinatorial maps with n vertices, n >= 0, k >= 1.

The programs for A380622, there is no canonical definition to state claims against.
-/

/-! ## A380622.P9562841338442827752

`A094913(A380626(n)^A353318(n+1))`
-/

namespace A380622.P9562841338442827752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094913 (SequenceMachineLib.roundAway ((A380626 n : ℚ) ^ (A353318 (n + 1) : ℤ))).toNat

end

end A380622.P9562841338442827752

/-! ## A380622.P17912213469272593544

`A343858(A248112(n+2))`
-/

namespace A380622.P17912213469272593544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343858 (A248112 (n + 2)).toNat

end

end A380622.P17912213469272593544

/-! ## A380622.P3362274166779263138

`and(A060475(n), A134699(A236926(n)))`
-/

namespace A380622.P3362274166779263138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060475 n) (A134699 (A236926 n).toNat)

end

end A380622.P3362274166779263138

/-! ## A380622.P10455262059779425952

`and(A055561(A124419(n)), A159798(n+1))`
-/

namespace A380622.P10455262059779425952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055561 (A124419 n).toNat) (A159798 (n + 1))

end

end A380622.P10455262059779425952

/-! ## A380622.P6842314365839242601

`A346382(A302150(n+1))%A221919(n+1)`
-/

namespace A380622.P6842314365839242601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346382 (A302150 (n + 1)).toNat) (A221919 (n + 1))

end

end A380622.P6842314365839242601

/-!
# A380624: Number of rooted 6-regular combinatorial maps with n vertices.

The programs for A380624, there is no canonical definition to state claims against.
-/

/-! ## A380624.P12324485304185696878

`A062980(2*n)/4^n`
-/

namespace A380624.P12324485304185696878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062980 (2 * n) : ℚ) / (4 ^ n : ℚ)

end

end A380624.P12324485304185696878

/-! ## A380624.P12932936434993148813

`A380622(A034856(n+4)+2+n)`
-/

namespace A380624.P12932936434993148813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380622 (A034856 (n + 4) + 2 + (n : ℤ)).toNat

end

end A380624.P12932936434993148813

/-!
# A380625: Number of rooted regular combinatorial maps with n edges.

The programs for A380625, there is no canonical definition to state claims against.
-/

/-! ## A380625.P6705815663717769403

`A057355(A002251(n)+lcm(2, ∏[1-2*n]))`
-/

namespace A380625.P6705815663717769403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (A002251 n + (Int.lcm 2 (∏ j ∈ Finset.range (n + 1), f1 j) : ℤ)).toNat

end

end A380625.P6705815663717769403

/-! ## A380625.P18442597386791499251

`A057355(A002251(n)+lcm(4, ∏[n-1+n])/2)`
-/

namespace A380625.P18442597386791499251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (SequenceMachineLib.roundAway ((A002251 n : ℚ) + (Int.lcm 4 (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2)).toNat

end

end A380625.P18442597386791499251

/-!
# A380626: Array read by antidiagonals: T(n,k) is the number of sensed k-regular combinatorial maps with n vertices, n >= 0, k >= 1.

The programs for A380626, there is no canonical definition to state claims against.
-/

/-! ## A380626.P11918437070545521467

`A068932(A380622(n)+1)`
-/

namespace A380626.P11918437070545521467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068932 (A380622 n + 1).toNat

end

end A380626.P11918437070545521467

/-! ## A380626.P6056553113458033315

`A346699(2^A380622(n))`
-/

namespace A380626.P6056553113458033315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346699 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A380622 n : ℤ))).toNat

end

end A380626.P6056553113458033315

/-! ## A380626.P2125367522638735733

`A356428(3^A380622(n))`
-/

namespace A380626.P2125367522638735733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356428 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A380622 n : ℤ))).toNat

end

end A380626.P2125367522638735733

/-! ## A380626.P11062890686585210568

`A000120(A380622(n)^A008615(n))`
-/

namespace A380626.P11062890686585210568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A380622 n : ℚ) ^ (A008615 n : ℤ))).toNat

end

end A380626.P11062890686585210568

/-! ## A380626.P9575170004795185335

`A239163(A380622(n))%A000005(3*n+2)`
-/

namespace A380626.P9575170004795185335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239163 (A380622 n).toNat) (A000005 (3 * n + 2))

end

end A380626.P9575170004795185335

/-!
# A380628: Number of sensed 6-regular combinatorial maps with n vertices.

The programs for A380628, there is no canonical definition to state claims against.
-/

/-! ## A380628.P15406288153896084503

`A380626(eq[6, A004736(n+1)])`
-/

namespace A380628.P15406288153896084503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A380628.P15406288153896084503

/-!
# A380629: Number of sensed regular combinatorial maps with n edges.

The programs for A380629, there is no canonical definition to state claims against.
-/

/-! ## A380629.P2023605031311179377

`A135646(A150293(n))`
-/

namespace A380629.P2023605031311179377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135646 (A150293 n).toNat

end

end A380629.P2023605031311179377

/-! ## A380629.P13446422445777187773

`A005169(A253555(5^n))`
-/

namespace A380629.P13446422445777187773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005169 (A253555 (5 ^ n)).toNat

end

end A380629.P13446422445777187773

/-!
# A380631: Triangle read by rows: T(n,k) is the number of simple connected graphs on n unlabeled nodes with k cycles and each node a member of exactly one cycle, 0 <= k <= floor(n/3).

The programs for A380631, there is no canonical definition to state claims against.
-/

/-! ## A380631.P4769966196311371797

`A099563(A350248(n)^A289508(n+1))`
-/

namespace A380631.P4769966196311371797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (SequenceMachineLib.roundAway ((A350248 n : ℚ) ^ (A289508 (n + 1) : ℤ))).toNat

end

end A380631.P4769966196311371797

/-! ## A380631.P6885142788863734366

`A380633(n)+A093492(A304149(3*(n+1)))`
-/

namespace A380631.P6885142788863734366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380633 n + A093492 (A304149 (3 * (n + 1))).toNat

end

end A380631.P6885142788863734366

/-! ## A380631.P17027094322962803534

`A380633(n)+A010054(A179186(3*n+4))`
-/

namespace A380631.P17027094322962803534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380633 n + A010054 (A179186 (3 * n + 4)).toNat

end

end A380631.P17027094322962803534

/-! ## A380631.P13801993041924667425

`A380633(n)%A049432(n+1)`
-/

namespace A380631.P13801993041924667425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380633 n) (A049432 (n + 1))

end

end A380631.P13801993041924667425

/-! ## A380631.P12741436609608490577

`A380633(A000007(A380632(n))+n)`
-/

namespace A380631.P12741436609608490577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380633 (A000007 (A380632 n).toNat + (n : ℤ)).toNat

end

end A380631.P12741436609608490577

/-!
# A380633: Triangle read by rows: T(n,k) is the number of simple connected graphs on n unlabeled nodes of degree at most 3 with k cycles and each node a member of exactly one cycle, 0 <= k <= floor(n/3).

The programs for A380633, there is no canonical definition to state claims against.
-/

/-! ## A380633.P13069342250491461752

`A257679(A380631(n)^A000010(n+1))`
-/

namespace A380633.P13069342250491461752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257679 (SequenceMachineLib.roundAway ((A380631 n : ℚ) ^ (A000010 (n + 1) : ℤ))).toNat

end

end A380633.P13069342250491461752

/-! ## A380633.P1901099199108351577

`A380631(n)^A242618(A288025(n+1))`
-/

namespace A380633.P1901099199108351577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380631 n : ℚ) ^ (A242618 (A288025 (n + 1)).toNat : ℤ)

end

end A380633.P1901099199108351577

/-! ## A380633.P7367234036580528080

`A010876(A380631(n)^A127938(n+2))`
-/

namespace A380633.P7367234036580528080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (SequenceMachineLib.roundAway ((A380631 n : ℚ) ^ (A127938 (n + 2) : ℤ))).toNat

end

end A380633.P7367234036580528080

/-! ## A380633.P14210015469832369313

`A380631(n)^A116664(A261942(n+1))`
-/

namespace A380633.P14210015469832369313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380631 n : ℚ) ^ (A116664 (A261942 (n + 1)).toNat : ℤ)

end

end A380633.P14210015469832369313

/-! ## A380633.P4609720958788233472

`A303304(A380631(n))%A335465(3*n+2)`
-/

namespace A380633.P4609720958788233472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303304 (A380631 n).toNat) (A335465 (3 * n + 2))

end

end A380633.P4609720958788233472

/-!
# A380634: Number of unlabeled 2,3 cacti (triangular cacti with bridges) with n triangles and every node contained in exactly one triangle.

The programs for A380634, there is no canonical definition to state claims against.
-/

/-! ## A380634.P6466730635730615683

`A380631(A115067(n+1))`
-/

namespace A380634.P6466730635730615683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380631 (A115067 (n + 1)).toNat

end

end A380634.P6466730635730615683

/-! ## A380634.P17246501226504791525

`A380631(A045943(n)+n)`
-/

namespace A380634.P17246501226504791525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380631 (A045943 n + (n : ℤ)).toNat

end

end A380634.P17246501226504791525

/-! ## A380634.P14595880937399401305

`A380631(A140090(n)-n)`
-/

namespace A380634.P14595880937399401305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380631 (A140090 n - (n : ℤ)).toNat

end

end A380634.P14595880937399401305

/-! ## A380634.P14923868324271328579

`A380631(∑[A326178(3*n)])`
-/

namespace A380634.P14923868324271328579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380631 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A380634.P14923868324271328579

/-! ## A380634.P18213626066277382243

`A380631(A005563(n)+∑[n])`
-/

namespace A380634.P18213626066277382243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380631 (A005563 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A380634.P18213626066277382243

/-!
# A380636: Expansion of e.g.f. exp(x*C(2*x)^2) where C(x) = 1 + x*C(x)^2 is the g.f. of the Catalan numbers, A000108.

The programs for A380636, there is no canonical definition to state claims against.
-/

/-! ## A380636.P16035368373355232450

`A057655((n-1)*ceil(5*a(n-1)/2))` with `a(0)=1`
-/

namespace A380636.P16035368373355232450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057655 (((n : ℤ) - 1) * ⌈(5 * a (n - 1) : ℚ) / 2⌉).toNat

end

end A380636.P16035368373355232450

/-!
# A380639: Expansion of e.g.f. exp(x/(1 - 2*x)^2).

The programs for A380639, there is no canonical definition to state claims against.
-/

/-! ## A380639.P15743270115409740458

`A005408(2*∏{digits}[10^n, n-1+#])`
-/

namespace A380639.P15743270115409740458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (n : ℤ) - 1 + (x : ℤ)).prod).toNat

end

end A380639.P15743270115409740458

/-!
# A380640: Expansion of e.g.f. exp(x*G(2*x)^2) where G(x) = 1 + x*G(x)^3 is the g.f. of A001764.

The programs for A380640, there is no canonical definition to state claims against.
-/

/-! ## A380640.P15124941021199603709

`A143411(A062708(n))`
-/

namespace A380640.P15124941021199603709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143411 (A062708 n).toNat

end

end A380640.P15124941021199603709

/-! ## A380640.P3317846877609954003

`A143411(A051682(n)+n)`
-/

namespace A380640.P3317846877609954003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143411 (A051682 n + (n : ℤ)).toNat

end

end A380640.P3317846877609954003

/-!
# A380645: The expansion of the Stieltjes continued fraction 1/(1 - x/(1 - a(A053645(0))*x/(1 - a(A053645(1))*x/(1 - a(A053645(2))*x/...)))) gives the sequence itself.

The programs for A380645, there is no canonical definition to state claims against.
-/

/-! ## A380645.P14624062698562656734

`A333783(A003319(n))+A279559(n)`
-/

namespace A380645.P14624062698562656734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333783 (A003319 n).toNat + A279559 n

end

end A380645.P14624062698562656734

/-! ## A380645.P13915298905071016626

`A341880(A328441(n))+A279559(n)`
-/

namespace A380645.P13915298905071016626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341880 ((A328441 n).toNat + 16) + A279559 n

end

end A380645.P13915298905071016626

/-! ## A380645.P18408186225307070262

`A000110(n)-A126696(A055113(n))`
-/

namespace A380645.P18408186225307070262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A126696 (A055113 n).toNat

end

end A380645.P18408186225307070262

/-! ## A380645.P4153159695279286805

`A000110(n)-A185225(A006791(n))`
-/

namespace A380645.P4153159695279286805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A185225 (A006791 (n + 10)).toNat

end

end A380645.P4153159695279286805

/-!
# A380646: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-2*x)/(1 + x)^2 ).

The programs for A380646, there is no canonical definition to state claims against.
-/

/-! ## A380646.P9189575627817992934

`A358694(2*(n+1)²)`
-/

namespace A380646.P9189575627817992934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358694 (2 * (n + 1) ^ 2)

end

end A380646.P9189575627817992934

/-!
# A380649: Rectangular array ((-1)*D(i,j,1,2)) read by descending antidiagonals: D(i,j,s,n) denotes the determinant of the matrix described in Comments.

The programs for A380649, there is no canonical definition to state claims against.
-/

/-! ## A380649.P5855372289333641859

`(n-comp[∑[n]])²-(comp[∑[n]]+1)`
-/

namespace A380649.P5855372289333641859
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + 1 : ℤ)

end

end A380649.P5855372289333641859

/-! ## A380649.P13730671122066039364

`A061579(comp[∑[n]])`
-/

namespace A380649.P13730671122066039364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A380649.P13730671122066039364

/-! ## A380649.P2440490970415177798

`abs(2-A038722(comp[∑[n]]))`
-/

namespace A380649.P2440490970415177798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A038722 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A380649.P2440490970415177798

/-! ## A380649.P8172006972155913296

`round(log2(A262616(n))+n+1)`
-/

namespace A380649.P8172006972155913296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A262616 n : ℝ) + (n + 1 : ℝ))

end

end A380649.P8172006972155913296

/-! ## A380649.P2399379756504301844

`A007401(∑[char[∑[n]]]²-n)`
-/

namespace A380649.P2399379756504301844
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A380649.P2399379756504301844

/-! ## A380649.P4404104950497862326

`abs(A212012(n+1)-1+n)`
-/

namespace A380649.P4404104950497862326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A212012 (n + 1) - 1 + (n : ℤ)|

end

end A380649.P4404104950497862326

/-! ## A380649.P456723591062577479

`(A099375(n)+n)%∑[n+3]`
-/

namespace A380649.P456723591062577479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099375 n + (n : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A380649.P456723591062577479

/-! ## A380649.P14751454731226100225

`A000027(∑[2*n]%(comp[∑[n]]+1)+1+n)`
-/

namespace A380649.P14751454731226100225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 + n)

end

end A380649.P14751454731226100225

/-! ## A380649.P1322906347146942924

`A230877(A164874(n+1))`
-/

namespace A380649.P1322906347146942924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 (A164874 (n + 1)).toNat

end

end A380649.P1322906347146942924

/-! ## A380649.P10225425193534680862

`A230877(A030130(n+2))`
-/

namespace A380649.P10225425193534680862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 (A030130 (n + 2)).toNat

end

end A380649.P10225425193534680862

/-!
# A380650: The largest number which is a linear combination of the divisors of n with nonnegative integer coefficients such that no linear combination with smaller nonnegative integer coefficients is equal to n.

The programs for A380650, there is no canonical definition to state claims against.
-/

/-! ## A380650.P18259003711407554005

`A191362(A145388(n+1))`
-/

namespace A380650.P18259003711407554005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191362 (A145388 (n + 1)).toNat

end

end A380650.P18259003711407554005

/-! ## A380650.P14684828803769485363

`A174344(A145388(n+1)²)`
-/

namespace A380650.P14684828803769485363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A145388 (n + 1) ^ 2).toNat

end

end A380650.P14684828803769485363

/-! ## A380650.P1679236005077602555

`floor(A145388(n+1)/2)%A205490(n+4)`
-/

namespace A380650.P1679236005077602555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A145388 (n + 1) : ℚ) / 2⌋ (A205490 (n + 4))

end

end A380650.P1679236005077602555

/-! ## A380650.P8509466848216934797

`A029837(A064085(n+1))+n`
-/

namespace A380650.P8509466848216934797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A064085 (n + 1)).toNat + (n : ℤ)

end

end A380650.P8509466848216934797

/-! ## A380650.P12677016852910323892

`2*n-A073642(A333492(n+1))`
-/

namespace A380650.P12677016852910323892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A073642 (A333492 (n + 1)).toNat

end

end A380650.P12677016852910323892

/-!
# A380651: a(n) = 4^n - n*3^(n-1).

The programs for A380651, the canonical program `A380651.P8151096039884004130` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380651 has offset 0).

The definition of A380651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380651.P8151096039884004130

`4^n-n*3^(n-1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A380651

/-- `4^n-n*3^(n-1)` -/
def P8151096039884004130.Spec : Prop :=
  ∀ n, P8151096039884004130.a n = (A380651 n : ℚ)

end A380651

/-! ## A380651.P11895467776061148805

`abs(4^n-A027471(n+1))`
-/

namespace A380651.P11895467776061148805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 ^ n : ℤ) - A027471 (n + 1)|

end

end A380651.P11895467776061148805

namespace A380651

/-- `abs(4^n-A027471(n+1))` -/
def P11895467776061148805.Spec : Prop :=
  ∀ n, P11895467776061148805.a n = A380651 n

end A380651

/-! ## A380651.P2016394411405977289

`abs(A027471(n+1)-A000302(n))`
-/

namespace A380651.P2016394411405977289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027471 (n + 1) - A000302 n|

end

end A380651.P2016394411405977289

namespace A380651

/-- `abs(A027471(n+1)-A000302(n))` -/
def P2016394411405977289.Spec : Prop :=
  ∀ n, P2016394411405977289.a n = A380651 n

end A380651

/-! ## A380651.P6885256844116407628

`(A005418(2*n+3)-A084859(n))/2`
-/

namespace A380651.P6885256844116407628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005418 (2 * n + 3) - A084859 n : ℚ) / 2

end

end A380651.P6885256844116407628

namespace A380651

/-- `(A005418(2*n+3)-A084859(n))/2` -/
def P6885256844116407628.Spec : Prop :=
  ∀ n, P6885256844116407628.a n = (A380651 n : ℚ)

end A380651

/-! ## A380651.P10061578054915260774

`A000027(A000079(n)²-A027471(n+1))`
-/

namespace A380651.P10061578054915260774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000079 n ^ 2 - A027471 (n + 1)).toNat

end

end A380651.P10061578054915260774

namespace A380651

/-- `A000027(A000079(n)²-A027471(n+1))` -/
def P10061578054915260774.Spec : Prop :=
  ∀ n, P10061578054915260774.a n = A380651 n

end A380651

/-!
# A380653: Number of positive integers less than or equal to n that have the same sum of prime factors (with repetition) as n.

The programs for A380653, there is no canonical definition to state claims against.
-/

/-! ## A380653.P15747837091280753396

`A341596(A000005(n+1)*A126043(2*n+3))`
-/

namespace A380653.P15747837091280753396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341596 (A000005 (n + 1) * A126043 (2 * n + 3)).toNat

end

end A380653.P15747837091280753396

/-! ## A380653.P6760716900195600088

`A317141(A126043(2*n+3)*A317141(n+1))`
-/

namespace A380653.P6760716900195600088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317141 (A126043 (2 * n + 3) * A317141 (n + 1)).toNat

end

end A380653.P6760716900195600088

/-! ## A380653.P11844697331385099858

`val(A130517(n+1)+A029542(n+5), 3)+1`
-/

namespace A380653.P11844697331385099858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A130517 (n + 1) + A029542 (n + 5)).toNat 3 + 1

end

end A380653.P11844697331385099858

/-! ## A380653.P8093979886923403463

`A046951(A370584(n)+A007504(n))`
-/

namespace A380653.P8093979886923403463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A370584 n + A007504 n).toNat

end

end A380653.P8093979886923403463

/-! ## A380653.P7286464385528634199

`gcd(A255091(A383708(n)), A337135(n+1))`
-/

namespace A380653.P7286464385528634199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A255091 (A383708 n).toNat) (A337135 (n + 1))

end

end A380653.P7286464385528634199

/-!
# A380654: Number of positive integers less than or equal to n that have the same sum of distinct prime factors as n.

The programs for A380654, there is no canonical definition to state claims against.
-/

/-! ## A380654.P10881722663603830650

`A181591(n+1)+A020987(A336889(n+1))`
-/

namespace A380654.P10881722663603830650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181591 (n + 1) + A020987 (A336889 (n + 1)).toNat

end

end A380654.P10881722663603830650

/-! ## A380654.P15622009559767118026

`A001055(n+1)-A003849(A098851(n+4))`
-/

namespace A380654.P15622009559767118026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A003849 (A098851 (n + 4)).toNat

end

end A380654.P15622009559767118026

/-! ## A380654.P3618868025142945291

`A051700(A284464(n+1))`
-/

namespace A380654.P3618868025142945291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A284464 (n + 1)).toNat

end

end A380654.P3618868025142945291

/-! ## A380654.P282436793174192248

`gcd(∑{e}[n+1, #], A247419(A036378(n)))`
-/

namespace A380654.P282436793174192248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A247419 (A036378 n).toNat)

end

end A380654.P282436793174192248

/-! ## A380654.P7391385451476166144

`C(∑{e}[n+1, #], A005087(A369371(n)))`
-/

namespace A380654.P7391385451476166144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) (A005087 (A369371 n).toNat).toNat

end

end A380654.P7391385451476166144

/-!
# A380655: Smallest prime p > 10^(n-1) for which successive cyclic shifts of digits by 1, ..., n-1 positions to the left are all prime, or -1 if no such p exists.

The programs for A380655, there is no canonical definition to state claims against.
-/

/-! ## A380655.P3263685814471882819

`p?[A380669(n+1)]`
-/

namespace A380655.P3263685814471882819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A380655.P3263685814471882819

/-! ## A380655.P18388586127021250798

`A380669(∑[∑[A031136(n)]])`
-/

namespace A380655.P18388586127021250798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031136 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380669 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A380655.P18388586127021250798

/-!
# A380656: a(n) is the number of divisors d such that -d^n mod n = d.

The programs for A380656, there is no canonical definition to state claims against.
-/

/-! ## A380656.P14544991176232385040

`A095805(n)%A394362(n+1)`
-/

namespace A380656.P14544991176232385040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095805 n) (A394362 (n + 1))

end

end A380656.P14544991176232385040

/-! ## A380656.P11748720195041864316

`A020615(n+1)%A394362(n+1)`
-/

namespace A380656.P11748720195041864316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020615 (n + 1)) (A394362 (n + 1))

end

end A380656.P11748720195041864316

/-! ## A380656.P8814824113933696158

`A394362(n+1)-A000688(A005471(n+1))`
-/

namespace A380656.P8814824113933696158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394362 (n + 1) - A000688 (A005471 (n + 1)).toNat

end

end A380656.P8814824113933696158

/-! ## A380656.P4254010290005302807

`A394362(n+1)-A002186(A000290(3*n+4))`
-/

namespace A380656.P4254010290005302807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394362 (n + 1) - A002186 (A000290 (3 * n + 4)).toNat

end

end A380656.P4254010290005302807

/-! ## A380656.P17626896953723812309

`A061556(n)%A394362(n+1)`
-/

namespace A380656.P17626896953723812309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061556 n) (A394362 (n + 1))

end

end A380656.P17626896953723812309

/-!
# A380657: Numbers whose prime factorization has more Pythagorean prime factors than non-Pythagorean prime factors (including multiplicities).

The programs for A380657, there is no canonical definition to state claims against.
-/

/-! ## A380657.P542498491180735906

`∩[A268379(n+1), A382856(n+1)]`
-/

namespace A380657.P542498491180735906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380657.P542498491180735906

/-! ## A380657.P4309342024382563865

`∩[A268379(n+1), A352874(n+1)]`
-/

namespace A380657.P4309342024382563865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380657.P4309342024382563865

/-! ## A380657.P12023562937709933035

`lt[A097706(n+1), A363486(n+1)]+1`
-/

namespace A380657.P12023562937709933035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363486 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A380657.P12023562937709933035

/-! ## A380657.P14300188612237669647

`A174398(2*n+3)+A010052(A349968(n+3))`
-/

namespace A380657.P14300188612237669647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174398 (2 * n + 3) + A010052 (A349968 (n + 3)).toNat

end

end A380657.P14300188612237669647

/-! ## A380657.P3418804720709406021

`A196082(A087445(n+2))+A008284(n+1)`
-/

namespace A380657.P3418804720709406021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196082 (A087445 (n + 2)).toNat + A008284 (n + 1)

end

end A380657.P3418804720709406021

/-!
# A380660: Rectangular array pos(i,j,1,2) read by descending antidiagonals: pos( ) and neg() denote the positive part and negative part of a determinant; see Comments.

The programs for A380660, there is no canonical definition to state claims against.
-/

/-! ## A380660.P6711352052206743240

`(n+1)*comp[A114220(n)]`
-/

namespace A380660.P6711352052206743240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114220 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A380660.P6711352052206743240

/-! ## A380660.P18261002269328900632

`(n+1)*lt[1, A002262(n)]`
-/

namespace A380660.P18261002269328900632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A380660.P18261002269328900632

/-! ## A380660.P6894122494978210441

`(n+1)*lt[1, A034261(n)]`
-/

namespace A380660.P6894122494978210441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A380660.P6894122494978210441

/-! ## A380660.P10557614739170507451

`(n+1)*lt[1, A086810(n)]`
-/

namespace A380660.P10557614739170507451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A380660.P10557614739170507451

/-! ## A380660.P13075481346926640223

`(n+1)*lt[1, A131689(n)]`
-/

namespace A380660.P13075481346926640223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A380660.P13075481346926640223

/-!
# A380661: Rectangular array neg(i,j,1,2) read by descending antidiagonals: pos() and neg() denote the positive part and negative part of a determinant; see Comments.

The programs for A380661, there is no canonical definition to state claims against.
-/

/-! ## A380661.P14196328433236869252

`comp[∑[n]]+comp[∑[n]]²`
-/

namespace A380661.P14196328433236869252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n ^ 2

end

end A380661.P14196328433236869252

/-! ## A380661.P9915606861389122168

`2*C(comp[∑[n]]+1, 2)`
-/

namespace A380661.P9915606861389122168
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) 2

end

end A380661.P9915606861389122168

/-! ## A380661.P16943943195207381115

`(comp[C(n, 2)]+1)*comp[C(n, 2)]`
-/

namespace A380661.P16943943195207381115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

end

end A380661.P16943943195207381115

/-! ## A380661.P9366149866602627430

`A002378(comp[∑[n]])`
-/

namespace A380661.P9366149866602627430
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A380661.P9366149866602627430

/-! ## A380661.P1931743559646766807

`A000037(comp[∑[n]]²)`
-/

namespace A380661.P1931743559646766807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2)

end

end A380661.P1931743559646766807

/-!
# A380662: Numbers m such that Sum_{k>=0} floor(m/5^k) is prime.

The programs for A380662, there is no canonical definition to state claims against.
-/

/-! ## A380662.P16551070845455760885

`eq[1, A003415(A191610(n+1))]`
-/

namespace A380662.P16551070845455760885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A191610 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A380662.P16551070845455760885

/-! ## A380662.P72539076654189760

`A228297(eq[A048785(n), A091844(n+1)])`
-/

namespace A380662.P72539076654189760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228297 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A380662.P72539076654189760

/-! ## A380662.P5243805704907353069

`A228297(∩[A000040(n+1), A191610(n+1)])`
-/

namespace A380662.P5243805704907353069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191610 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228297 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A380662.P5243805704907353069

/-! ## A380662.P13529420305006005324

`A228297(A381239(n+1))`
-/

namespace A380662.P13529420305006005324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228297 (A381239 (n + 1)).toNat

end

end A380662.P13529420305006005324

/-! ## A380662.P7219845872364739057

`record[A181578(A007918(n))]`
-/

namespace A380662.P7219845872364739057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181578 (A007918 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380662.P7219845872364739057

/-!
# A380663: Expansion of e.g.f. (1/x) * Series_Reversion( x * (1 - x) * exp(-x/(1 - x)) ).

The programs for A380663, there is no canonical definition to state claims against.
-/

/-! ## A380663.P18035850574232542106

`A330180(A367159(n))+A048993(n+1)`
-/

namespace A380663.P18035850574232542106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330180 (A367159 n).toNat + A048993 (n + 1)

end

end A380663.P18035850574232542106

/-!
# A380664: Expansion of e.g.f. (1/x) * Series_Reversion( x * (1 - x) * exp(-x/(1 - x)^2) ).

The programs for A380664, there is no canonical definition to state claims against.
-/

/-! ## A380664.P15342872977168993350

`A333489(A099701(n)+1)`
-/

namespace A380664.P15342872977168993350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (A099701 n + 1).toNat

end

end A380664.P15342872977168993350

/-!
# A380666: Expansion of e.g.f. (1/x) * Series_Reversion( x * (1 - x)^2 * exp(-x/(1 - x)^2) ).

The programs for A380666, there is no canonical definition to state claims against.
-/

/-! ## A380666.P7733953129966603914

`A376393(n)+A097203(A376400(n))`
-/

namespace A380666.P7733953129966603914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376393 n + A097203 (A376400 n).toNat

end

end A380666.P7733953129966603914

/-!
# A380667: First differences of the Golay-Rudin-Shapiro sequence (A020985), divided by 2.

The programs for A380667, the canonical program `A380667.P7577621012878425073` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380667 has offset 0).

The definition of A380667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380667.P7577621012878425073

`(A020985(n+1)-A020985(n))/2`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A380667

/-- `(A020985(n+1)-A020985(n))/2` -/
def P7577621012878425073.Spec : Prop :=
  ∀ n, P7577621012878425073.a n = (A380667 n : ℚ)

end A380667

/-! ## A380667.P14710341818038932367

`Δ[-A020987(n)]`
-/

namespace A380667.P14710341818038932367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A020987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A380667.P14710341818038932367

namespace A380667

/-- `Δ[-A020987(n)]` -/
def P14710341818038932367.Spec : Prop :=
  ∀ n, P14710341818038932367.a n = A380667 n

end A380667

/-! ## A380667.P15619111810686090329

`Δ[A020985(n)/2]`
-/

namespace A380667.P15619111810686090329
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020985 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A380667.P15619111810686090329

namespace A380667

/-- `Δ[A020985(n)/2]` -/
def P15619111810686090329.Spec : Prop :=
  ∀ n, P15619111810686090329.a n = (A380667 n : ℚ)

end A380667

/-! ## A380667.P11023516188977070221

`A020987(n)-A020987(n+1)`
-/

namespace A380667.P11023516188977070221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020987 n - A020987 (n + 1)

end

end A380667.P11023516188977070221

namespace A380667

/-- `A020987(n)-A020987(n+1)` -/
def P11023516188977070221.Spec : Prop :=
  ∀ n, P11023516188977070221.a n = A380667 n

end A380667

/-! ## A380667.P16509975790832429870

`A020987(n)+A020985(n+1)*A020987(n+1)`
-/

namespace A380667.P16509975790832429870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020987 n + A020985 (n + 1) * A020987 (n + 1)

end

end A380667.P16509975790832429870

namespace A380667

/-- `A020987(n)+A020985(n+1)*A020987(n+1)` -/
def P16509975790832429870.Spec : Prop :=
  ∀ n, P16509975790832429870.a n = A380667 n

end A380667

/-! ## A380667.P6088941454709017666

`Δ[char[A203463(n+1)]]`
-/

namespace A380667.P6088941454709017666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203463 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A380667.P6088941454709017666

namespace A380667

/-- `Δ[char[A203463(n+1)]]` -/
def P6088941454709017666.Spec : Prop :=
  ∀ n, P6088941454709017666.a n = A380667 n

end A380667

/-! ## A380667.P9381075797479564978

`(A334577(n)-A334577(n+1))*A033999(n)`
-/

namespace A380667.P9381075797479564978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A334577 n - A334577 (n + 1)) * A033999 n

end

end A380667.P9381075797479564978

namespace A380667

/-- `(A334577(n)-A334577(n+1))*A033999(n)` -/
def P9381075797479564978.Spec : Prop :=
  ∀ n, P9381075797479564978.a n = A380667 n

end A380667

/-! ## A380667.P5502375656772442149

`(A334577(n+1)-A334577(n))/A033999(n+1)`
-/

namespace A380667.P5502375656772442149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334577 (n + 1) - A334577 n : ℚ) / (A033999 (n + 1) : ℚ)

end

end A380667.P5502375656772442149

namespace A380667

/-- `(A334577(n+1)-A334577(n))/A033999(n+1)` -/
def P5502375656772442149.Spec : Prop :=
  ∀ n, P5502375656772442149.a n = (A380667 n : ℚ)

end A380667

/-!
# A380668: Third center column of elementary triangular automaton rule 182, starting from a lone 1 cell.

The programs for A380668, there is no canonical definition to state claims against.
-/

/-! ## A380668.P428098285604729741

`A091247(A036833(n+6)+A010888(n))`
-/

namespace A380668.P428098285604729741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (A036833 (n + 6) + A010888 n).toNat

end

end A380668.P428098285604729741

/-! ## A380668.P2535327610350456299

`A318950(or(A001227(n+3), A294859(3*n+4)))`
-/

namespace A380668.P2535327610350456299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318950 (Int.lor (A001227 (n + 3)) (A294859 (3 * n + 4))).toNat

end

end A380668.P2535327610350456299

/-! ## A380668.P13265374278305509605

`1-A051731(A196264(2*n+5))`
-/

namespace A380668.P13265374278305509605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051731 (A196264 (2 * n + 5)).toNat

end

end A380668.P13265374278305509605

/-! ## A380668.P10698856087717360534

`or(A003849(2*n), A188973(A017983(n)))`
-/

namespace A380668.P10698856087717360534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003849 (2 * n)) (A188973 (A017983 n).toNat)

end

end A380668.P10698856087717360534

/-! ## A380668.P10284483351910494274

`A156728(A237599(2*n+5)+A106833(n+1))`
-/

namespace A380668.P10284483351910494274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156728 (A237599 (2 * n + 5) + A106833 (n + 1)).toNat

end

end A380668.P10284483351910494274

/-!
# A380673: Expansion of e.g.f. (1/x) * Series_Reversion( x * (1 - x) * exp(-x * (1 - x)) ).

The programs for A380673, there is no canonical definition to state claims against.
-/

/-! ## A380673.P16576965220085406096

`A277184(n+1)/(n+1)`
-/

namespace A380673.P16576965220085406096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277184 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A380673.P16576965220085406096

/-!
# A380675: Expansion of e.g.f. (1/x) * Series_Reversion( x * (1 - x)^2 * exp(-x * (1 - x)) ).

The programs for A380675, there is no canonical definition to state claims against.
-/

/-! ## A380675.P12070388630264746329

`A192115(n+1)+A000010(A202382(n))`
-/

namespace A380675.P12070388630264746329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192115 (n + 1) + A000010 (A202382 n).toNat

end

end A380675.P12070388630264746329

/-!
# A380676: G.f. A(x) satisfies 2 = Sum_{n=-oo..+oo} (-1)^n * x^n * (A(x) + x^n)^(3*n+1).

The programs for A380676, there is no canonical definition to state claims against.
-/

/-! ## A380676.P12352941997825123827

`A023986(A130564(n+1)+1)`
-/

namespace A380676.P12352941997825123827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023986 (A130564 (n + 1) + 1).toNat

end

end A380676.P12352941997825123827

/-!
# A380677: G.f. A(x) satisfies 1 = Sum_{n=-oo..+oo} x^(2*n) * (x^n - A(x))^(3*n+1).

The programs for A380677, there is no canonical definition to state claims against.
-/

/-! ## A380677.P6840495628288781517

`A122456(n)+A072747(A001541(n))`
-/

namespace A380677.P6840495628288781517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122456 n + A072747 (A001541 n).toNat

end

end A380677.P6840495628288781517

/-! ## A380677.P6569790362028830388

`A052618(n)-A004526(A357089(n)²)`
-/

namespace A380677.P6569790362028830388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052618 n - A004526 (A357089 n ^ 2).toNat

end

end A380677.P6569790362028830388

/-!
# A380678: G.f. A(x) satisfies A( x - A(x)^2/(1 - A(x)^2) ) = x.

The programs for A380678, there is no canonical definition to state claims against.
-/

/-! ## A380678.P9090698441095339640

`A002110(n)-A252495(A305857(n))`
-/

namespace A380678.P9090698441095339640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n - A252495 (A305857 n).toNat

end

end A380678.P9090698441095339640

/-! ## A380678.P8178156693608488865

`xor(A064063(n), A226279(A057331(n)))`
-/

namespace A380678.P8178156693608488865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A064063 n) (A226279 (A057331 n).toNat)

end

end A380678.P8178156693608488865

/-!
# A380679: G.f. A(x) satisfies A(x) = Sum_{n>=0} x^n * (1+x)^(n*(3*n+1)/2) / A(x)^(n*(n+1)/2).

The programs for A380679, there is no canonical definition to state claims against.
-/

/-! ## A380679.P14745022648216796703

`A371632(A063024(n+1))`
-/

namespace A380679.P14745022648216796703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371632 (A063024 (n + 1)).toNat

end

end A380679.P14745022648216796703

/-!
# A380680: G.f. A(x) = Sum_{n=-oo..+oo} x^(n^2) * (2 - x^n)^n/(1 - 2*x^n)^n.

The programs for A380680, there is no canonical definition to state claims against.
-/

/-! ## A380680.P4491433304381511772

`A025487(A113887(n+1)^A318557(3*n+1))`
-/

namespace A380680.P4491433304381511772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (SequenceMachineLib.roundAway ((A113887 (n + 1) : ℚ) ^ (A318557 (3 * n + 1) : ℤ))).toNat

end

end A380680.P4491433304381511772

/-! ## A380680.P16804720582409500491

`A070175(eq[A001055(n+1), A111629(3*n+4)])`
-/

namespace A380680.P16804720582409500491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111629 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070175 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A380680.P16804720582409500491

/-! ## A380680.P9645830797522771565

`A130211(A206776(n+1))`
-/

namespace A380680.P9645830797522771565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130211 (A206776 (n + 1)).toNat

end

end A380680.P9645830797522771565

/-!
# A380681: G.f. A(x) satisfies 2*x = Sum_{n=-oo..+oo} (-1)^n * x^(2*n) * (A(x) + x^n)^(2*n) with A(0) = 1.

The programs for A380681, there is no canonical definition to state claims against.
-/

/-! ## A380681.P12923145563786105104

`A085893(A150618(n))`
-/

namespace A380681.P12923145563786105104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085893 (A150618 n).toNat

end

end A380681.P12923145563786105104

/-! ## A380681.P1312456324251868801

`A276798(A150989(n+1))`
-/

namespace A380681.P1312456324251868801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A150989 (n + 1)).toNat

end

end A380681.P1312456324251868801

/-!
# A380682: G.f. A(x) satisfies 3*x = Sum_{n=-oo..+oo} (-1)^n * x^(3*n) * (A(x) + x^n)^(3*n) with A(0) = 1.

The programs for A380682, there is no canonical definition to state claims against.
-/

/-! ## A380682.P18023182249920962555

`A237271(A007863(n))+A110526(n)`
-/

namespace A380682.P18023182249920962555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A007863 n).toNat + A110526 n

end

end A380682.P18023182249920962555

/-! ## A380682.P3493475406182582405

`A210357(A150256(n))`
-/

namespace A380682.P3493475406182582405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A150256 n).toNat

end

end A380682.P3493475406182582405

/-!
# A380683: G.f. A(x) satisfies 5*x = Sum_{n=-oo..+oo} (-1)^n * x^(5*n) * (A(x) + x^n)^(5*n) with A(0) = 1.

The programs for A380683, there is no canonical definition to state claims against.
-/

/-! ## A380683.P1855732557161484748

`A008620(xor(n, A338584(n)))`
-/

namespace A380683.P1855732557161484748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (Int.xor (n : ℤ) (A338584 (n + 13))).toNat

end

end A380683.P1855732557161484748

/-! ## A380683.P10622503609893710799

`filter[A361764(n+1), A071028(#)]`
-/

namespace A380683.P10622503609893710799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071028 (f1 j).toNat = 1) n)

end

end A380683.P10622503609893710799

/-!
# A380684: G.f. A(x) satisfies 7*x = Sum_{n=-oo..+oo} (-1)^n * x^(7*n) * (A(x) + x^n)^(7*n) with A(0) = 1.

The programs for A380684, there is no canonical definition to state claims against.
-/

/-! ## A380684.P3234817942171258130

`A153295(n+1)+A137579(A271377(n+2))`
-/

namespace A380684.P3234817942171258130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153295 (n + 1) + A137579 (A271377 (n + 2)).toNat

end

end A380684.P3234817942171258130

/-! ## A380684.P11821705630037405063

`A153295(A141769(n+1))`
-/

namespace A380684.P11821705630037405063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153295 (A141769 (n + 1)).toNat

end

end A380684.P11821705630037405063

/-! ## A380684.P12081566818057486829

`A271932(A141769(n+1)+1)`
-/

namespace A380684.P12081566818057486829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271932 (A141769 (n + 1) + 1).toNat

end

end A380684.P12081566818057486829

/-!
# A380685: G.f. A(x) satisfies 11*x = Sum_{n=-oo..+oo} (-1)^n * x^(11*n) * (A(x) + x^n)^(11*n) with A(0) = 1.

The programs for A380685, there is no canonical definition to state claims against.
-/

/-! ## A380685.P10173379355610236229

`record[gcd(A271933(n+1), A308923(n))]`
-/

namespace A380685.P10173379355610236229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A271933 (n + 1)) (A308923 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380685.P10173379355610236229

/-! ## A380685.P4573102350167276632

`A271933(A057427(lcm(10, 2^n))+1+n)`
-/

namespace A380685.P4573102350167276632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271933 (A057427 (Nat.lcm 10 (2 ^ n)) + 1 + (n : ℤ)).toNat

end

end A380685.P4573102350167276632

/-! ## A380685.P11466112542471201975

`A271933(A325044(n+1)^A271949(n))`
-/

namespace A380685.P11466112542471201975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271933 (SequenceMachineLib.roundAway ((A325044 (n + 1) : ℚ) ^ (A271949 n : ℤ))).toNat

end

end A380685.P11466112542471201975

/-! ## A380685.P4497376434874928669

`A271933(n+2)+A025426(A095309(n+1))`
-/

namespace A380685.P4497376434874928669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271933 (n + 2) + A025426 (A095309 (n + 1)).toNat

end

end A380685.P4497376434874928669

/-! ## A380685.P15360323463152347836

`A319448(A319441(n+1))+A271933(n+2)`
-/

namespace A380685.P15360323463152347836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319448 (A319441 (n + 1)).toNat + A271933 (n + 2)

end

end A380685.P15360323463152347836

/-!
# A380690: a(0) = 0; a(n) = the number of times a(n-1) has all digits in common with a previous term.

The programs for A380690, there is no canonical definition to state claims against.
-/

/-! ## A380690.P9520141288459334403

`A010054(A330705(3*(n+1)))+n-gcd(n, ∑[n])`
-/

namespace A380690.P9520141288459334403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A330705 (3 * (n + 1))).toNat + ((n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ))

end

end A380690.P9520141288459334403

/-! ## A380690.P15546088363105951581

`A212619(A196601(n+1))+A142150(n)`
-/

namespace A380690.P15546088363105951581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (A196601 (n + 1)).toNat + A142150 n

end

end A380690.P15546088363105951581

/-! ## A380690.P14674189717869700131

`val(A096421(n+1), A228367(A027620(n)))`
-/

namespace A380690.P14674189717869700131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A096421 (n + 1)).toNat (A228367 (A027620 n).toNat).toNat

end

end A380690.P14674189717869700131

/-!
# A380691: Number of divisors d | k, d < k/d, such that (d, k/d) are neither unitary nor both coreful, where k is neither squarefree nor prime power (in A126706).

The programs for A380691, there is no canonical definition to state claims against.
-/

/-! ## A380691.P1210711831340839900

`A362412(A126706(n+1)²)-2`
-/

namespace A380691.P1210711831340839900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362412 (A126706 (n + 1) ^ 2).toNat - 2

end

end A380691.P1210711831340839900

/-! ## A380691.P15580087108772279169

`A001221(A381391(A001222(A126706(n+1))))`
-/

namespace A380691.P15580087108772279169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A381391 (A001222 (A126706 (n + 1)).toNat).toNat).toNat

end

end A380691.P15580087108772279169

/-! ## A380691.P15900375299312923281

`A240473(A187595(n+1)+A000045(n))`
-/

namespace A380691.P15900375299312923281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240473 (A187595 (n + 1) + A000045 n).toNat

end

end A380691.P15900375299312923281

/-! ## A380691.P15258925267986914746

`A001221(A340386(3*n+4)-A217657(n))`
-/

namespace A380691.P15258925267986914746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A340386 (3 * n + 4) - A217657 n).toNat

end

end A380691.P15258925267986914746

/-! ## A380691.P13109304000569058753

`A353849(or(A000040(n+1), A033949(n+1)))`
-/

namespace A380691.P13109304000569058753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (Int.lor (A000040 (n + 1)) (A033949 (n + 1))).toNat

end

end A380691.P13109304000569058753

/-!
# A380693: Numbers k such that the least prime dividing k is larger than or equal to the maximum exponent in the prime factorization of k; a(1) = 1 by convention.

The programs for A380693, there is no canonical definition to state claims against.
-/

/-! ## A380693.P14655698403152146276

`lt[A118750(A294333(n)), A018252(n+1)]`
-/

namespace A380693.P14655698403152146276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118750 (A294333 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380693.P14655698403152146276

/-! ## A380693.P14720953972363658726

`lt[A000404(A294333(n)), A072660(3*n+2)]`
-/

namespace A380693.P14720953972363658726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (A294333 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072660 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380693.P14720953972363658726

/-! ## A380693.P1590363837991942377

`lt[A294333(n)², A333224(n)+1]`
-/

namespace A380693.P1590363837991942377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380693.P1590363837991942377

/-! ## A380693.P13111304728822377820

`lt[A294333(n)², A358372(n+1)]`
-/

namespace A380693.P13111304728822377820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380693.P13111304728822377820

/-! ## A380693.P3853477128288095749

`lt[A002494(A294333(n)), A354579(n)]`
-/

namespace A380693.P3853477128288095749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 (A294333 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380693.P3853477128288095749

/-! ## A380693.P5584451349033014220

`lt[A002494(A294333(n)), A354907(n)]`
-/

namespace A380693.P5584451349033014220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 (A294333 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354907 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380693.P5584451349033014220

/-! ## A380693.P17963256322132831953

`lt[A351657(A323436(n)), A000203(n+1)]`
-/

namespace A380693.P17963256322132831953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351657 (A323436 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380693.P17963256322132831953

/-! ## A380693.P12936909087799786322

`lt[A351657(A323436(n)), A052382(n+1)]`
-/

namespace A380693.P12936909087799786322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351657 (A323436 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380693.P12936909087799786322

/-! ## A380693.P1934958360964430973

`lt[A294335(n)², A007947(n+1)]`
-/

namespace A380693.P1934958360964430973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294335 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380693.P1934958360964430973

/-! ## A380693.P17389953478685604939

`lt[A294335(n), A294339(2*n+1)]`
-/

namespace A380693.P17389953478685604939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294335 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294339 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380693.P17389953478685604939

/-!
# A380694: Numbers k such that the prime index of the least prime dividing k is larger than the maximum exponent in the prime factorization of k.

The programs for A380694, there is no canonical definition to state claims against.
-/

/-! ## A380694.P16529122999313923010

`A004442(lt[A051903(n+1), A055396(n+1)])`
-/

namespace A380694.P16529122999313923010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A380694.P16529122999313923010

/-! ## A380694.P8764505140788098598

`lt[A002496(A284345(2*n)), n]`
-/

namespace A380694.P8764505140788098598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (A284345 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A380694.P8764505140788098598

/-! ## A380694.P16674975864311533265

`lt[A002061(A284345(2*n)), A000010(n+1)]`
-/

namespace A380694.P16674975864311533265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A284345 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380694.P16674975864311533265

/-! ## A380694.P13888516511267645128

`lt[A049451(A284345(2*n)), A000203(n+1)]`
-/

namespace A380694.P13888516511267645128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049451 (A284345 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380694.P13888516511267645128

/-! ## A380694.P1758396347040366671

`lt[A049451(A284345(2*n)), A001969(n+1)]`
-/

namespace A380694.P1758396347040366671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049451 (A284345 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380694.P1758396347040366671

/-! ## A380694.P8421832652942826520

`lt[A036920(A284345(2*n)), A171946(n+1)]`
-/

namespace A380694.P8421832652942826520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (A284345 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171946 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380694.P8421832652942826520

/-! ## A380694.P13155723902931625757

`lt[A001248(A284345(2*n)), A288712(n+1)]`
-/

namespace A380694.P13155723902931625757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (A284345 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288712 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380694.P13155723902931625757

/-! ## A380694.P13858232700819771860

`lt[A036920(A284345(2*n)), A285980(n+1)]`
-/

namespace A380694.P13858232700819771860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (A284345 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285980 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380694.P13858232700819771860

/-! ## A380694.P16061809045792082496

`lt[A016779(A284345(2*n)), A048519(3*n+2)]`
-/

namespace A380694.P16061809045792082496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016779 (A284345 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048519 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380694.P16061809045792082496

/-! ## A380694.P2962112154760281355

`A352830(n+2)`
-/

namespace A380694.P2962112154760281355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352830 (n + 2)

end

end A380694.P2962112154760281355

/-!
# A380696: a(n) = A007598(floor(n/2) - (-1)^n).

The programs for A380696, the canonical program `A380696.P9925339631947342696` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380696 has offset 0).

The definition of A380696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380696.P9925339631947342696

`Δ[a(n-2)+a(n-4)]²` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A380696

/-- `Δ[a(n-2)+a(n-4)]²` -/
def P9925339631947342696.Spec : Prop :=
  ∀ n, P9925339631947342696.a n = A380696 n

theorem P9925339631947342696.correct : P9925339631947342696.Spec := by
  intro n
  simp only [A380696]

end A380696

/-! ## A380696.P6931832960321687448

`A051792(n+4)²`
-/

namespace A380696.P6931832960321687448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051792 (n + 4) ^ 2

end

end A380696.P6931832960321687448

namespace A380696

/-- `A051792(n+4)²` -/
def P6931832960321687448.Spec : Prop :=
  ∀ n, P6931832960321687448.a n = A380696 n

end A380696

/-! ## A380696.P1969850450337845811

`Δ[A339572(n+1)]²`
-/

namespace A380696.P1969850450337845811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A380696.P1969850450337845811

namespace A380696

/-- `Δ[A339572(n+1)]²` -/
def P1969850450337845811.Spec : Prop :=
  ∀ n, P1969850450337845811.a n = A380696 n

end A380696

/-! ## A380696.P6209706427698542413

`Δ[A115339(n+2)]²`
-/

namespace A380696.P6209706427698542413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A380696.P6209706427698542413

namespace A380696

/-- `Δ[A115339(n+2)]²` -/
def P6209706427698542413.Spec : Prop :=
  ∀ n, P6209706427698542413.a n = A380696 n

end A380696

/-! ## A380696.P17352275417497434428

`A239366(∑[n]-n)²`
-/

namespace A380696.P17352275417497434428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239366 (∑ j ∈ Finset.range (n + 1), f1 j - n) ^ 2

end

end A380696.P17352275417497434428

namespace A380696

/-- `A239366(∑[n]-n)²` -/
def P17352275417497434428.Spec : Prop :=
  ∀ n, P17352275417497434428.a n = A380696 n

end A380696

/-!
# A380698: a(n) is the number of intervals making up the set {A377091(k), k = 0..n}.

The programs for A380698, there is no canonical definition to state claims against.
-/

/-! ## A380698.P2886969071390065052

`2-A000007(and(A182474(n+1), A378385(n)))`
-/

namespace A380698.P2886969071390065052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000007 (Int.land (A182474 (n + 1)) (A378385 n)).toNat

end

end A380698.P2886969071390065052

/-! ## A380698.P11069844196559535759

`A000122(A380263(n)^6)`
-/

namespace A380698.P11069844196559535759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A380263 n ^ 6).toNat

end

end A380698.P11069844196559535759

/-! ## A380698.P7645031448930259870

`A034444(9^A378385(n))`
-/

namespace A380698.P7645031448930259870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (SequenceMachineLib.roundAway ((9 : ℚ) ^ (A378385 n : ℤ))).toNat

end

end A380698.P7645031448930259870

/-! ## A380698.P4728953743292974894

`2-A000007(and(A061769(n), A378385(n)))`
-/

namespace A380698.P4728953743292974894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000007 (Int.land (A061769 n) (A378385 n)).toNat

end

end A380698.P4728953743292974894

/-! ## A380698.P9123546900932435979

`A124766(A398506(n)+A053644(3*n+2))`
-/

namespace A380698.P9123546900932435979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A398506 n + A053644 (3 * n + 2)).toNat

end

end A380698.P9123546900932435979

/-!
# A380699: Numbers m such that the set {A377091(k), k = 0..m} is an integer interval.

The programs for A380699, there is no canonical definition to state claims against.
-/

/-! ## A380699.P718775178239633442

`eq[0, A378385(n)]`
-/

namespace A380699.P718775178239633442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378385 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A380699.P718775178239633442

/-! ## A380699.P8110000800256791398

`eq[0, A380263(n)]`
-/

namespace A380699.P8110000800256791398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380263 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A380699.P8110000800256791398

/-! ## A380699.P9687864346037474734

`eq[0, A398506(n)]`
-/

namespace A380699.P9687864346037474734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398506 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A380699.P9687864346037474734

/-! ## A380699.P4288417681223057044

`eq[1, A380698(n)]`
-/

namespace A380699.P4288417681223057044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A380699.P4288417681223057044

/-! ## A380699.P7439271524791359237

`lt[A380263(n), A062157(n+1)²/2]`
-/

namespace A380699.P7439271524791359237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380263 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062157 (n + 1) ^ 2 : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A380699.P7439271524791359237

/-! ## A380699.P11503933517124017653

`lt[A380263(n), A001221(A000040(n+1))]`
-/

namespace A380699.P11503933517124017653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380263 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380699.P11503933517124017653

/-! ## A380699.P15436685234906723446

`lt[A380263(n), A000035(A163327(2*n+3))]`
-/

namespace A380699.P15436685234906723446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380263 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A163327 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380699.P15436685234906723446

/-! ## A380699.P15004476043838429194

`lt[A380263(A233583(n+1)), 1]`
-/

namespace A380699.P15004476043838429194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380263 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A380699.P15004476043838429194

/-! ## A380699.P9757389264630197523

`lt[A380263(n), A001221(A100142(n+1))]`
-/

namespace A380699.P9757389264630197523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380263 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A100142 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380699.P9757389264630197523

/-! ## A380699.P1208571421052224063

`eq[A216455(n+1), A398501(n)]`
-/

namespace A380699.P1208571421052224063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398501 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380699.P1208571421052224063

