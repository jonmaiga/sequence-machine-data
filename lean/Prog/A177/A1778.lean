import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A177802: A row reversed version of A177517.

The programs for A177802, there is no canonical definition to state claims against.
-/

/-! ## A177802.P17611662801066536259

`A011973(n)-A058342(A232459(n+1))`
-/

namespace A177802.P17611662801066536259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 n - A058342 (A232459 (n + 1)).toNat

end

end A177802.P17611662801066536259

/-! ## A177802.P5007838128263845587

`A091063(A091018(n))+A273444(n)%A033273(2*(n+1))`
-/

namespace A177802.P5007838128263845587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091063 (A091018 n).toNat + Int.tmod (A273444 n) (A033273 (2 * (n + 1)))

end

end A177802.P5007838128263845587

/-! ## A177802.P9704929792897563059

`A011973(n)-A076833(A224964(n))`
-/

namespace A177802.P9704929792897563059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 n - A076833 (A224964 n).toNat

end

end A177802.P9704929792897563059

/-! ## A177802.P18114005481733172419

`A196563(A000045(n+2)*A030105(n))`
-/

namespace A177802.P18114005481733172419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A000045 (n + 2) * A030105 n).toNat

end

end A177802.P18114005481733172419

/-! ## A177802.P1646537520341732315

`val(A359957(A359929(2*n+1)), A359947(n+1))`
-/

namespace A177802.P1646537520341732315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A359957 (A359929 (2 * n + 1)).toNat).toNat (A359947 (n + 1)).toNat

end

end A177802.P1646537520341732315

/-!
# A177803: The number of lines in the analog of Pratt primality certificate for the n-th semiprime.

The programs for A177803, there is no canonical definition to state claims against.
-/

/-! ## A177803.P6594239732048820611

`gcd(3-n, A242310(A016897(n)))`
-/

namespace A177803.P6594239732048820611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 - (n : ℤ)) (A242310 (A016897 n).toNat)

end

end A177803.P6594239732048820611

/-! ## A177803.P5659879058139513681

`A336121(n+1)+A265332(A038754(n))`
-/

namespace A177803.P5659879058139513681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (n + 1) + A265332 (A038754 n).toNat

end

end A177803.P5659879058139513681

/-! ## A177803.P7045896676072772322

`gcd(A000005(A047675(n+1)), A003605(n))`
-/

namespace A177803.P7045896676072772322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A047675 (n + 1)).toNat) (A003605 n)

end

end A177803.P7045896676072772322

/-! ## A177803.P13319551060001903144

`gcd((n+3)², A056924(A209511(n+1)))`
-/

namespace A177803.P13319551060001903144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 3) ^ 2 : ℤ) (A056924 (A209511 (n + 1)).toNat)

end

end A177803.P13319551060001903144

/-!
# A177806: Triangle read by rows: T(n,k) = prime(k)^(n-1) mod prime(n), 1 <= k <= n.

The programs for A177806, there is no canonical definition to state claims against.
-/

/-! ## A177806.P263219724959059962

`(A037126(n+1)^A003056(n))%A005145(n+1)`
-/

namespace A177806.P263219724959059962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A037126 (n + 1) : ℚ) ^ (A003056 n : ℤ))) (A005145 (n + 1))

end

end A177806.P263219724959059962

/-! ## A177806.P7684884404922758063

`(A065342(n+1)^A003056(n))%A005145(n+1)`
-/

namespace A177806.P7684884404922758063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A065342 (n + 1) : ℚ) ^ (A003056 n : ℤ))) (A005145 (n + 1))

end

end A177806.P7684884404922758063

/-! ## A177806.P2372156944889217220

`A319075(A245300(n))%A005145(n+1)`
-/

namespace A177806.P2372156944889217220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319075 (A245300 n).toNat) (A005145 (n + 1))

end

end A177806.P2372156944889217220

/-! ## A177806.P10039014025622573484

`and(A000120(A340051(2*n+1)), A333705(n+1))`
-/

namespace A177806.P10039014025622573484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000120 (A340051 (2 * n + 1)).toNat) (A333705 (n + 1))

end

end A177806.P10039014025622573484

/-!
# A177807: Numbers k that divide 17^k - 1.

The programs for A177807, there is no canonical definition to state claims against.
-/

/-! ## A177807.P10868858716479175552

`A124240(n+1)-A025466(A123125(2*n+1))`
-/

namespace A177807.P10868858716479175552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124240 (n + 1) - A025466 (A123125 (2 * n + 1)).toNat

end

end A177807.P10868858716479175552

/-!
# A177808: Triangle T(n,m) = binomial(4*n, 4*m), 0 <= m <= n, read by rows.

The programs for A177808, there is no canonical definition to state claims against.
-/

/-! ## A177808.P1131830427490634064

`A034870(4*eq[0, floor(2*sqrt(n))%2])`
-/

namespace A177808.P1131830427490634064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 (4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177808.P1131830427490634064

/-! ## A177808.P10553063711742481700

`A086645(abs(1-n)-n+(1-round(sqrt(2*(n+1))))²+2*n+1)`
-/

namespace A177808.P10553063711742481700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086645 (|1 - (n : ℤ)| - (n : ℤ) + ((1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))) ^ 2 + (2 * n + 1 : ℤ))).toNat

end

end A177808.P10553063711742481700

/-! ## A177808.P37246205934499200

`A034839(2*A292564(n))`
-/

namespace A177808.P37246205934499200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034839 (2 * A292564 n).toNat

end

end A177808.P37246205934499200

/-! ## A177808.P1169378417951964322

`A109446(2*A292564(n))`
-/

namespace A177808.P1169378417951964322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109446 (2 * A292564 n).toNat

end

end A177808.P1169378417951964322

/-! ## A177808.P16254069283371071157

`A034870(4*A063656(n))`
-/

namespace A177808.P16254069283371071157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 (4 * A063656 n).toNat

end

end A177808.P16254069283371071157

/-!
# A177809: Symmetrical sequence:Binomial(n,5*m).

The programs for A177809, there is no canonical definition to state claims against.
-/

/-! ## A177809.P10042847755599097977

`A080213(5*A167040(n))`
-/

namespace A177809.P10042847755599097977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080213 (5 * A167040 n).toNat

end

end A177809.P10042847755599097977

/-! ## A177809.P9784990728029547089

`C(A135089(n), A020639(A101692(2*n)))`
-/

namespace A177809.P9784990728029547089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A135089 n).toNat (A020639 (A101692 (2 * n)).toNat).toNat

end

end A177809.P9784990728029547089

/-! ## A177809.P10916913363250756364

`A028310(C(A236915(3*(n+3)), A283194(n+1)))`
-/

namespace A177809.P10916913363250756364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Nat.choose (A236915 (3 * (n + 3))).toNat (A283194 (n + 1)).toNat)

end

end A177809.P10916913363250756364

/-! ## A177809.P9196596347912615956

`A257088(A318257(n+1))`
-/

namespace A177809.P9196596347912615956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (A318257 (n + 1)).toNat

end

end A177809.P9196596347912615956

/-!
# A177810: Triangle binomial(6*n,6*m), 0 <= m <= n, read by rows.

The programs for A177810, there is no canonical definition to state claims against.
-/

/-! ## A177810.P14801556040004765016

`A086645(eq[A049347(n), A117898(n)])`
-/

namespace A177810.P14801556040004765016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086645 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177810.P14801556040004765016

/-! ## A177810.P11799588410234282785

`A139459(eq[A099390(n+1), A099395(3*n+4)])`
-/

namespace A177810.P11799588410234282785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099395 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139459 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177810.P11799588410234282785

/-! ## A177810.P10616354399464289356

`C(A004016(A176643(n)), 6)`
-/

namespace A177810.P10616354399464289356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004016 (A176643 n).toNat).toNat 6

end

end A177810.P10616354399464289356

/-! ## A177810.P17363191709307896367

`C(A237051(A131235(n)), 6)`
-/

namespace A177810.P17363191709307896367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A237051 (A131235 n).toNat).toNat 6

end

end A177810.P17363191709307896367

/-!
# A177812: Triangular array read by rows: binomial(n,k^2), k=0..floor(sqrt(n)).

The programs for A177812, there is no canonical definition to state claims against.
-/

/-! ## A177812.P9423500620954341666

`A007318(eq[0, A053186(A002262(n))])`
-/

namespace A177812.P9423500620954341666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177812.P9423500620954341666

/-! ## A177812.P2512812340301931483

`A007318(eq[0, A053188(A002262(n))])`
-/

namespace A177812.P2512812340301931483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177812.P2512812340301931483

/-! ## A177812.P10821048391882660612

`A007318(eq[0, A068527(A002262(n))])`
-/

namespace A177812.P10821048391882660612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177812.P10821048391882660612

/-! ## A177812.P15847675106336612944

`A007318(eq[0, A091453(A002262(n))])`
-/

namespace A177812.P15847675106336612944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177812.P15847675106336612944

/-! ## A177812.P3425855143778150667

`A007318(eq[1, A010052(A002262(n))])`
-/

namespace A177812.P3425855143778150667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177812.P3425855143778150667

/-! ## A177812.P12680465745961598060

`A007318(eq[1, A269501(A002262(n))])`
-/

namespace A177812.P12680465745961598060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269501 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177812.P12680465745961598060

/-! ## A177812.P18316613712036840331

`A007318(eq[1, A071797(A002260(n+1))])`
-/

namespace A177812.P18316613712036840331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177812.P18316613712036840331

/-! ## A177812.P14299672181692823424

`A007318(eq[1, A172021(A002260(n+1))])`
-/

namespace A177812.P14299672181692823424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172021 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177812.P14299672181692823424

/-! ## A177812.P16859122869855489514

`A007318(eq[1, A276689(A002262(n))+1])`
-/

namespace A177812.P16859122869855489514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 (A002262 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177812.P16859122869855489514

/-! ## A177812.P8095596170772571506

`A007318(eq[1, 1-A276689(A002262(n))])`
-/

namespace A177812.P8095596170772571506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A276689 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177812.P8095596170772571506

/-!
# A177813: Numbers k such that k^3 divides 13^(k^2) + 1.

The programs for A177813, there is no canonical definition to state claims against.
-/

/-! ## A177813.P1955854646675004752

`∏{p}[A292338(n+1), #]`
-/

namespace A177813.P1955854646675004752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A177813.P1955854646675004752

/-! ## A177813.P9586572436854857283

`A292338(A100793(n))`
-/

namespace A177813.P9586572436854857283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292338 (A100793 n).toNat

end

end A177813.P9586572436854857283

/-!
# A177814: Numbers k such that k^3 divides 14^(k^2) + 1.

The programs for A177814, there is no canonical definition to state claims against.
-/

/-! ## A177814.P12147165474638659848

`A086963(a(n-1)+4)` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A177814.P12147165474638659848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  A086963 (a (n - 1) + 4).toNat

end

end A177814.P12147165474638659848

/-! ## A177814.P17675333957180491020

`or(ceil(24^(n/4)), A298538(floor(22^(n/4))))`
-/

namespace A177814.P17675333957180491020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈(24 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉ (A298538 ⌊(22 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋.toNat)

end

end A177814.P17675333957180491020

/-!
# A177815: Triangle read by rows: binomial(n, m^3).

The programs for A177815, there is no canonical definition to state claims against.
-/

/-! ## A177815.P5937964065535255382

`A007318(eq[1, A010057(A002262(n))])`
-/

namespace A177815.P5937964065535255382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177815.P5937964065535255382

/-! ## A177815.P12849461736717507042

`A007318(eq[1, A332016(A002262(n))])`
-/

namespace A177815.P12849461736717507042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332016 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177815.P12849461736717507042

/-! ## A177815.P17299299662279089316

`A007318(eq[0, A218854(A002260(n+1))])`
-/

namespace A177815.P17299299662279089316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218854 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177815.P17299299662279089316

/-! ## A177815.P8939987505078608596

`A007318(eq[2, A134735(A104763(n+1))])`
-/

namespace A177815.P8939987505078608596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (A104763 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177815.P8939987505078608596

/-! ## A177815.P3569600261834397119

`A007318(eq[2, A003963(A140207(n)+2)])`
-/

namespace A177815.P3569600261834397119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A140207 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177815.P3569600261834397119

/-!
# A177817: Numbers k such that k^3 divides 17^(k^2) + 1.

The programs for A177817, there is no canonical definition to state claims against.
-/

/-! ## A177817.P17421163304537582656

`A292392(n+1)%p?[68*n²+1]`
-/

namespace A177817.P17421163304537582656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  68 * n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292392 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A177817.P17421163304537582656

/-! ## A177817.P4248734545159891585

`A292392(A082743(n))`
-/

namespace A177817.P4248734545159891585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292392 (A082743 n).toNat

end

end A177817.P4248734545159891585

/-! ## A177817.P16913542645599983299

`A292392(A381225(n))`
-/

namespace A177817.P16913542645599983299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292392 (A381225 n).toNat

end

end A177817.P16913542645599983299

/-! ## A177817.P13456600376457157884

`A018663(A187568(n+1))`
-/

namespace A177817.P13456600376457157884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018663 (A187568 (n + 1)).toNat

end

end A177817.P13456600376457157884

/-! ## A177817.P11211930569767426748

`A292392(A001104(n+1))`
-/

namespace A177817.P11211930569767426748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292392 (A001104 (n + 1)).toNat

end

end A177817.P11211930569767426748

/-!
# A177820: Numbers k such that k^3 divides 20^(k^2) + 1.

The programs for A177820, there is no canonical definition to state claims against.
-/

/-! ## A177820.P19810241688386826

`record[gcd(A002061(n), A168828(n))]`
-/

namespace A177820.P19810241688386826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002061 n) (A168828 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177820.P19810241688386826

/-!
# A177822: Sub-triangle of A008292: terms with square indices.

The programs for A177822, there is no canonical definition to state claims against.
-/

/-! ## A177822.P17642259286818923697

`A042963(A000079(A177812(n)))-A177812(n)`
-/

namespace A177822.P17642259286818923697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (A000079 (A177812 n).toNat).toNat - A177812 n

end

end A177822.P17642259286818923697

/-! ## A177822.P3732835838007667635

`A285357(A281624(n+1))%A217726(2*(n+1))`
-/

namespace A177822.P3732835838007667635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285357 (A281624 (n + 1)).toNat) (A217726 (2 * (n + 1)))

end

end A177822.P3732835838007667635

/-! ## A177822.P9279421271358289126

`A008292(A003401(n+1))^A064989(A346793(n+1))`
-/

namespace A177822.P9279421271358289126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (A003401 (n + 1)).toNat : ℚ) ^ (A064989 (A346793 (n + 1)).toNat : ℤ)

end

end A177822.P9279421271358289126

/-! ## A177822.P1373824582580714413

`A008292(A003401(n+1)^A226873(n))`
-/

namespace A177822.P1373824582580714413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.roundAway ((A003401 (n + 1) : ℚ) ^ (A226873 n : ℤ))).toNat

end

end A177822.P1373824582580714413

/-!
# A177823: Triangle of Eulerian numbers squared: A008292(n,m)^2 read by rows.

The programs for A177823, there is no canonical definition to state claims against.
-/

/-! ## A177823.P16181806273542161401

`A008292(n+1)²`
-/

namespace A177823.P16181806273542161401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) ^ 2

end

end A177823.P16181806273542161401

/-! ## A177823.P10941161024940517642

`A123125(comp[∑[n]])²`
-/

namespace A177823.P10941161024940517642
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2

end

end A177823.P10941161024940517642

/-! ## A177823.P8938073255130501104

`ceil(A176200(n)/2)²`
-/

namespace A177823.P8938073255130501104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176200 n : ℚ) / 2⌉ ^ 2

end

end A177823.P8938073255130501104

/-! ## A177823.P14577811691732809696

`A008292(n%(n+1)+1)^2`
-/

namespace A177823.P14577811691732809696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n % (n + 1) + 1) ^ 2

end

end A177823.P14577811691732809696

/-! ## A177823.P7896635025445167693

`A173018(comp[A000096(n)])²`
-/

namespace A177823.P7896635025445167693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) ^ 2

end

end A177823.P7896635025445167693

/-! ## A177823.P18068332713686912025

`A173018(A007401(n+1))²`
-/

namespace A177823.P18068332713686912025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (A007401 (n + 1)).toNat ^ 2

end

end A177823.P18068332713686912025

/-! ## A177823.P15273242890316505058

`A173018(lt[1, A048854(n)])²`
-/

namespace A177823.P15273242890316505058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A177823.P15273242890316505058

/-! ## A177823.P703656940400250010

`A173018(lt[1, A130321(n)])²`
-/

namespace A177823.P703656940400250010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A177823.P703656940400250010

/-! ## A177823.P13415180993977742183

`(A174303(n)/A144464(n))²`
-/

namespace A177823.P13415180993977742183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A174303 n : ℚ) / (A144464 n : ℚ)) ^ 2

end

end A177823.P13415180993977742183

/-! ## A177823.P1473549854238221113

`(A257620(n)/A098355(n))²`
-/

namespace A177823.P1473549854238221113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A257620 n : ℚ) / (A098355 n : ℚ)) ^ 2

end

end A177823.P1473549854238221113

/-! ## A177823.P16884400920712511976

`(A257609(n)/A137688(n))²`
-/

namespace A177823.P16884400920712511976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A257609 n : ℚ) / (A137688 n : ℚ)) ^ 2

end

end A177823.P16884400920712511976

/-! ## A177823.P16193500296914502764

`gcd(A174303(n), A257620(n))²`
-/

namespace A177823.P16193500296914502764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A174303 n) (A257620 n) ^ 2

end

end A177823.P16193500296914502764

/-! ## A177823.P17526201216257475389

`A173018(lt[n, A049020(n)²])²`
-/

namespace A177823.P17526201216257475389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A177823.P17526201216257475389

/-! ## A177823.P6452695851828965332

`A173018(lt[1, A004736(n+1)])²`
-/

namespace A177823.P6452695851828965332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A177823.P6452695851828965332

/-! ## A177823.P3642612845336064066

`A173018(lt[1, A061356(n+2)])²`
-/

namespace A177823.P3642612845336064066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061356 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A177823.P3642612845336064066

/-! ## A177823.P17448088966402070644

`A173018(A002024(n+1)+n)²`
-/

namespace A177823.P17448088966402070644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (A002024 (n + 1) + (n : ℤ)).toNat ^ 2

end

end A177823.P17448088966402070644

/-! ## A177823.P8676241014197634237

`(A141686(n+1)/A007318(n))²`
-/

namespace A177823.P8676241014197634237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A141686 (n + 1) : ℚ) / (A007318 n : ℚ)) ^ 2

end

end A177823.P8676241014197634237

/-! ## A177823.P9922409955757076050

`(A142075(n+1)/A059268(n))²`
-/

namespace A177823.P9922409955757076050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A142075 (n + 1) : ℚ) / (A059268 n : ℚ)) ^ 2

end

end A177823.P9922409955757076050

/-! ## A177823.P3156357946918648231

`(A296229(n+1)/A140513(n))²`
-/

namespace A177823.P3156357946918648231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A296229 (n + 1) : ℚ) / (A140513 n : ℚ)) ^ 2

end

end A177823.P3156357946918648231

/-! ## A177823.P9348407441995203886

`(A128613(n+1)+A128612(n+1))²`
-/

namespace A177823.P9348407441995203886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A128613 (n + 1) + A128612 (n + 1)) ^ 2

end

end A177823.P9348407441995203886

/-!
# A177824: a(n) = (Fibonacci(n)*Fibonacci(n+7)) mod 7.

The programs for A177824, the canonical program `A177824.P6916438723185174319` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177824 has offset 0).

The definition of A177824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177824.P6916438723185174319

`A260259(n+3)%7`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A177824

/-- `A260259(n+3)%7` -/
def P6916438723185174319.Spec : Prop :=
  ∀ n, P6916438723185174319.a n = A177824 n

theorem P6916438723185174319.correct : P6916438723185174319.Spec := by
  intro n
  simp only [A177824]

end A177824

/-!
# A177825: Expansion of 1/((1 + x^3 - x^4)*(1 - x)).

The programs for A177825, the canonical program `A177825.P13829640405673245386` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177825 has offset 0).

The definition of A177825 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175790, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A177825.P13829640405673245386

`(-1)^n*A175790(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A177825

/-- `(-1)^n*A175790(n)` -/
def P13829640405673245386.Spec : Prop :=
  ∀ n, P13829640405673245386.a n = A177825 n

theorem P13829640405673245386.correct : P13829640405673245386.Spec := by
  intro n
  simp only [A177825]

end A177825

/-! ## A177825.P6056969382835620957

`a(n-4)+1-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A177825.P6056969382835620957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 0] fun n a =>
  a (n - 4) + (1 - a (n - 3))

end

end A177825.P6056969382835620957

namespace A177825

/-- `a(n-4)+1-a(n-3)` -/
def P6056969382835620957.Spec : Prop :=
  ∀ n, P6056969382835620957.a n = A177825 n

end A177825

/-! ## A177825.P17508817618568275653

`1-(a(n-3)-a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A177825.P17508817618568275653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 0] fun n a =>
  1 - (a (n - 3) - a (n - 4))

end

end A177825.P17508817618568275653

namespace A177825

/-- `1-(a(n-3)-a(n-4))` -/
def P17508817618568275653.Spec : Prop :=
  ∀ n, P17508817618568275653.a n = A177825 n

end A177825

/-! ## A177825.P17249374379259744231

`A175790(n)/A033999(n)`
-/

namespace A177825.P17249374379259744231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175790 n : ℚ) / (A033999 n : ℚ)

end

end A177825.P17249374379259744231

namespace A177825

/-- `A175790(n)/A033999(n)` -/
def P17249374379259744231.Spec : Prop :=
  ∀ n, P17249374379259744231.a n = (A177825 n : ℚ)

end A177825

/-! ## A177825.P13517000632548794356

`A175790(n)/A175790(Δ[A007494(n)])`
-/

namespace A177825.P13517000632548794356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175790 n : ℚ) / (A175790 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A177825.P13517000632548794356

namespace A177825

/-- `A175790(n)/A175790(Δ[A007494(n)])` -/
def P13517000632548794356.Spec : Prop :=
  ∀ n, P13517000632548794356.a n = (A177825 n : ℚ)

end A177825

/-! ## A177825.P2470073407239662863

`∑[a(n-4)-a(n-3)]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=-1`
-/

namespace A177825.P2470073407239662863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, -1] fun n f1 =>
  f1 (n - 4) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177825.P2470073407239662863

namespace A177825

/-- `∑[a(n-4)-a(n-3)]` -/
def P2470073407239662863.Spec : Prop :=
  ∀ n, P2470073407239662863.a n = A177825 n

end A177825

/-! ## A177825.P6515704811636462996

`∑[A017817(n)*A033999(n)]`
-/

namespace A177825.P6515704811636462996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177825.P6515704811636462996

namespace A177825

/-- `∑[A017817(n)*A033999(n)]` -/
def P6515704811636462996.Spec : Prop :=
  ∀ n, P6515704811636462996.a n = A177825 n

end A177825

/-! ## A177825.P13817544399058810072

`∑[A017817(n)/A033999(n²)]`
-/

namespace A177825.P13817544399058810072
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017817 n : ℚ) / (A033999 (n ^ 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177825.P13817544399058810072

namespace A177825

/-- `∑[A017817(n)/A033999(n²)]` -/
def P13817544399058810072.Spec : Prop :=
  ∀ n, P13817544399058810072.a n = (A177825 n : ℚ)

end A177825

/-!
# A177826: Sub-triangle of A060187: even-indexed entries of even-indexed rows.

The programs for A177826, there is no canonical definition to state claims against.
-/

/-! ## A177826.P4963940162993413332

`A060187(A185868(n+1))`
-/

namespace A177826.P4963940162993413332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (A185868 (n + 1)).toNat

end

end A177826.P4963940162993413332

/-! ## A177826.P8761790081396855275

`A060187(eq[A071023(n), A162514(n)])`
-/

namespace A177826.P8761790081396855275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177826.P8761790081396855275

/-! ## A177826.P7555139445069836596

`A060187(eq[A124927(n), A155998(n)])`
-/

namespace A177826.P7555139445069836596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177826.P7555139445069836596

/-! ## A177826.P10100527749087801215

`A060187(eq[A063524(n), A333330(n)])`
-/

namespace A177826.P10100527749087801215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177826.P10100527749087801215

/-! ## A177826.P14963107943047585151

`A060187(A005408(n)+A003056(n)²)`
-/

namespace A177826.P14963107943047585151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (A005408 n + A003056 n ^ 2).toNat

end

end A177826.P14963107943047585151

/-!
# A177827: Sub-triangle of A060187 formed by taking every third-indexed term of every third row.

The programs for A177827, there is no canonical definition to state claims against.
-/

/-! ## A177827.P4946853110712577492

`A060187((A351358(12*n+4)+1)²)`
-/

namespace A177827.P4946853110712577492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 ((A351358 (12 * n + 4) + 1) ^ 2).toNat

end

end A177827.P4946853110712577492

/-! ## A177827.P15918145077423023869

`A060187(A215366(n)^A141343(n))`
-/

namespace A177827.P15918145077423023869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (SequenceMachineLib.roundAway ((A215366 n : ℚ) ^ (A141343 n : ℤ))).toNat

end

end A177827.P15918145077423023869

/-! ## A177827.P5445849347916921836

`A060187(A055573(n+1)^A027935(n))`
-/

namespace A177827.P5445849347916921836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (SequenceMachineLib.roundAway ((A055573 (n + 1) : ℚ) ^ (A027935 n : ℤ))).toNat

end

end A177827.P5445849347916921836

/-! ## A177827.P11071585875526384861

`A060187(A139047(n)^A002260(n+1))`
-/

namespace A177827.P11071585875526384861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (SequenceMachineLib.roundAway ((A139047 n : ℚ) ^ (A002260 (n + 1) : ℤ))).toNat

end

end A177827.P11071585875526384861

/-!
# A177828: First differences of A176983.

The programs for A177828, there is no canonical definition to state claims against.
-/

/-! ## A177828.P13867640641179974408

`Δ[A176983(n+1)]`
-/

namespace A177828.P13867640641179974408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177828.P13867640641179974408

/-! ## A177828.P16120819559215028

`abs(Δ[A176983(-xor(n, -1))])`
-/

namespace A177828.P16120819559215028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176983 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A177828.P16120819559215028

/-! ## A177828.P4802735376207917352

`Δ[record[A176983(A117910(n))]]`
-/

namespace A177828.P4802735376207917352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176983 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177828.P4802735376207917352

/-! ## A177828.P14408646106135589660

`Δ[record[A176983(A291769(n))]]`
-/

namespace A177828.P14408646106135589660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176983 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177828.P14408646106135589660

/-! ## A177828.P3789545867015619333

`Δ[record[A176983(A331886(n))]]`
-/

namespace A177828.P3789545867015619333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176983 (A331886 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177828.P3789545867015619333

/-! ## A177828.P13864499089592000130

`abs(Δ[A176983(A005408(n)-n)])`
-/

namespace A177828.P13864499089592000130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176983 (A005408 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A177828.P13864499089592000130

/-! ## A177828.P14040723103380785718

`A176983(n+2)-A176983(n+1)`
-/

namespace A177828.P14040723103380785718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176983 (n + 2) - A176983 (n + 1)

end

end A177828.P14040723103380785718

/-! ## A177828.P12229245416049298940

`Δ[A014963(A176983(ϕ²-(ϕ-n)))]`
-/

namespace A177828.P12229245416049298940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A176983 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177828.P12229245416049298940

/-!
# A177829: Positions of 2 in A176983.

The programs for A177829, there is no canonical definition to state claims against.
-/

/-! ## A177829.P13660330249175737560

`A229618(A350976(n+1)%A212953(2*n+5))`
-/

namespace A177829.P13660330249175737560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229618 (Int.tmod (A350976 (n + 1)) (A212953 (2 * n + 5))).toNat

end

end A177829.P13660330249175737560

/-!
# A177830: Values of k in A176983.

The programs for A177830, there is no canonical definition to state claims against.
-/

/-! ## A177830.P6268161469029213778

`A069003(∑[A177828(abs(1-n)+1)])`
-/

namespace A177830.P6268161469029213778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177828 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069003 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A177830.P6268161469029213778

/-! ## A177830.P2522537573979622339

`A069003(p?[A177828(n)+a(n-1)])` with `a(0)=2`
-/

namespace A177830.P2522537573979622339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A177828 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069003 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177830.P2522537573979622339

/-! ## A177830.P7895994624748525148

`A069003(∑[A177828(n+1)]+2-A177828(n+1))`
-/

namespace A177830.P7895994624748525148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069003 (∑ j ∈ Finset.range (n + 1), f1 j + (2 - A177828 (n + 1))).toNat

end

end A177830.P7895994624748525148

/-! ## A177830.P12171177748443477637

`A069003(A176983(n+1))`
-/

namespace A177830.P12171177748443477637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069003 (A176983 (n + 1)).toNat

end

end A177830.P12171177748443477637

/-! ## A177830.P3504553135526640943

`∑{digits}[A053000(A176983(n+1)), A006530(#)]`
-/

namespace A177830.P3504553135526640943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A176983 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A006530 x).sum

end

end A177830.P3504553135526640943

/-!
# A177831: Values of q in A176983.

The programs for A177831, there is no canonical definition to state claims against.
-/

/-! ## A177831.P7639860657457952939

`A007491(A176983(n+1))`
-/

namespace A177831.P7639860657457952939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (A176983 (n + 1)).toNat

end

end A177831.P7639860657457952939

/-! ## A177831.P3197244867480211243

`A068486(p?[A176983(n+1)])`
-/

namespace A177831.P3197244867480211243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068486 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177831.P3197244867480211243

/-! ## A177831.P15964858890650247229

`A068486(∑{p}[A176983(n+1), #])`
-/

namespace A177831.P15964858890650247229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068486 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A177831.P15964858890650247229

/-! ## A177831.P6630840567540531712

`∩[A240130(n+1), A379405(n)]`
-/

namespace A177831.P6630840567540531712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379405 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177831.P6630840567540531712

/-! ## A177831.P12006380228308495386

`A007491(∑[A177828(abs(1-n)+1)])`
-/

namespace A177831.P12006380228308495386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177828 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A177831.P12006380228308495386

/-!
# A177832: Smallest k > 0 such that k^prime(n) + prime(n) is prime.

The programs for A177832, there is no canonical definition to state claims against.
-/

/-! ## A177832.P9146956586346262135

`A072883(p?[comp[n²]])`
-/

namespace A177832.P9146956586346262135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072883 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A177832.P9146956586346262135

/-! ## A177832.P125988007114740565

`A072883(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A177832.P125988007114740565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072883 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A177832.P125988007114740565

/-! ## A177832.P4752781028808067170

`A072883(Δ[A007504(n)])`
-/

namespace A177832.P4752781028808067170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072883 (f1 (n + 1) - f1 n).toNat

end

end A177832.P4752781028808067170

/-! ## A177832.P8130873191457292238

`A072883(record[A051698(n)])`
-/

namespace A177832.P8130873191457292238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072883 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A177832.P8130873191457292238

/-! ## A177832.P9088248173423396944

`A072883(A000040(n+1))`
-/

namespace A177832.P9088248173423396944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072883 (A000040 (n + 1)).toNat

end

end A177832.P9088248173423396944

/-! ## A177832.P10990298898726387498

`A072883(A006005(n+1))`
-/

namespace A177832.P10990298898726387498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072883 (A006005 (n + 1)).toNat

end

end A177832.P10990298898726387498

/-! ## A177832.P3362375873188474654

`A072883(A176997(n+1))`
-/

namespace A177832.P3362375873188474654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072883 (A176997 (n + 1)).toNat

end

end A177832.P3362375873188474654

/-! ## A177832.P13473625075547799272

`A072883(A216883(n+1))`
-/

namespace A177832.P13473625075547799272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072883 (A216883 (n + 1)).toNat

end

end A177832.P13473625075547799272

/-! ## A177832.P9656124777821821834

`A072883(A216884(n+1))`
-/

namespace A177832.P9656124777821821834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072883 (A216884 (n + 1)).toNat

end

end A177832.P9656124777821821834

/-! ## A177832.P7348723060596885158

`A072883(A216885(n+1))`
-/

namespace A177832.P7348723060596885158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072883 (A216885 (n + 1)).toNat

end

end A177832.P7348723060596885158

/-!
# A177833: Numbers k such that k^2 - 13 and k^2 + 13 are primes.

The programs for A177833, there is no canonical definition to state claims against.
-/

/-! ## A177833.P760258180822513518

`∩[A113536(n+1), A296507(n+1)]`
-/

namespace A177833.P760258180822513518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177833.P760258180822513518

/-! ## A177833.P12643265489308839457

`filter[A153355(2*n+1), A280711(#)]`
-/

namespace A177833.P12643265489308839457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153355 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280711 (f1 j).toNat = 1) n)

end

end A177833.P12643265489308839457

/-!
# A177835: Primes p for which a smaller prime q exists with A000120(q) >= 2*A000120(p)-1.

The programs for A177835, there is no canonical definition to state claims against.
-/

/-! ## A177835.P268049237399218417

`p?[A095075(n+1)%A320673(n+1)]`
-/

namespace A177835.P268049237399218417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095075 (n + 1)) (A320673 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177835.P268049237399218417

/-! ## A177835.P13170364047671455216

`A095075(n+2)+A000007(A000070(n))`
-/

namespace A177835.P13170364047671455216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095075 (n + 2) + A000007 (A000070 n).toNat

end

end A177835.P13170364047671455216

/-! ## A177835.P1243265223135441837

`A006530(A095075(n+2)*A340466(n+1))`
-/

namespace A177835.P1243265223135441837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A095075 (n + 2) * A340466 (n + 1)).toNat

end

end A177835.P1243265223135441837

/-! ## A177835.P4383278303636796282

`or(A008966(A063990(n+1)), A095075(n+2))`
-/

namespace A177835.P4383278303636796282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008966 (A063990 (n + 1)).toNat) (A095075 (n + 2))

end

end A177835.P4383278303636796282

/-! ## A177835.P10233965446507308772

`A095075(n+2)*A218116(A122848(n))`
-/

namespace A177835.P10233965446507308772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095075 (n + 2) * A218116 (A122848 n).toNat

end

end A177835.P10233965446507308772

/-!
# A177836: Terms of A095075 which are not in A177835.

The programs for A177836, there is no canonical definition to state claims against.
-/

/-! ## A177836.P6364272238074802878

`filter[A066196(n+1), A135947(#)]`
-/

namespace A177836.P6364272238074802878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135947 (f1 j).toNat = 1) n)

end

end A177836.P6364272238074802878

/-! ## A177836.P12697239970494017949

`A066196(6%A352157(n+1)+1+n)`
-/

namespace A177836.P12697239970494017949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066196 (Int.tmod 6 (A352157 (n + 1)) + 1 + (n : ℤ)).toNat

end

end A177836.P12697239970494017949

/-!
# A177837: a(n) = binomial(n^3-2, n-2).

The programs for A177837, there is no canonical definition to state claims against.
-/

/-! ## A177837.P8505099770888809216

`C((n+2)^3-2, n)`
-/

namespace A177837.P8505099770888809216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((n + 2) ^ 3 : ℤ) - 2).toNat n

end

end A177837.P8505099770888809216

/-!
# A177840: Consider the n pairs (1,2), ..., (2n-1,2n); a(n) is the number of permutations of [ 2n ] with no two fixed points for any pair.

The programs for A177840, the canonical program `A177840.P2921443202114710363` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177840 has offset 0).

The definition of A177840 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177840.P2921443202114710363

`2*n*(2*n-1)*a(n-1)+4*n*(n-1)*a(n-2)+(-1)^n` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A177840

/-- `2*n*(2*n-1)*a(n-1)+4*n*(n-1)*a(n-2)+(-1)^n` -/
def P2921443202114710363.Spec : Prop :=
  ∀ n, P2921443202114710363.a n = A177840 n

theorem P2921443202114710363.correct : P2921443202114710363.Spec := by
  intro n
  simp only [A177840]

end A177840

/-!
# A177842: Period 27: repeat [1, 81, 81, 3, 81, 81, 9, 81, 81, 3, 81, 81, 3, 81, 81, 9, 81, 81, 3, 81, 81, 1, 81, 81, 9, 81, 81].

The programs for A177842, there is no canonical definition to state claims against.
-/

/-! ## A177842.P11478709981637773526

`A061040(n+3)-9*A061039(n+3)`
-/

namespace A177842.P11478709981637773526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061040 (n + 3) - 9 * A061039 (n + 3)

end

end A177842.P11478709981637773526

/-!
# A177843: a(n) = 6*a(n-1)-8*a(n-2)-9 for n > 3; a(0)=775, a(1)=8919, a(2)=49581, a(3)=197469.

The programs for A177843, there is no canonical definition to state claims against.
-/

/-! ## A177843.P2428577456226465293

`A077077(4*n)`
-/

namespace A177843.P2428577456226465293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077077 (4 * n)

end

end A177843.P2428577456226465293

/-! ## A177843.P10965326414830257726

`or(1, A077077(A008586(n)))`
-/

namespace A177843.P10965326414830257726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A077077 (A008586 n).toNat)

end

end A177843.P10965326414830257726

/-! ## A177843.P10331320187659527595

`record[gcd(A077077(n), A208457(n))]`
-/

namespace A177843.P10331320187659527595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A077077 n) (A208457 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177843.P10331320187659527595

/-! ## A177843.P12321397963164725155

`or(1, A077077(A016813(n)-1))`
-/

namespace A177843.P12321397963164725155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A077077 (A016813 n - 1).toNat)

end

end A177843.P12321397963164725155

/-! ## A177843.P13128828213357039502

`record[root(A077077(n), A077069(n+1))]`
-/

namespace A177843.P13128828213357039502
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077077 n : ℝ) ^ (1 / (A077069 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177843.P13128828213357039502

/-!
# A177844: a(n) = 6*a(n-1)-8*a(n-2) for n > 3; a(0)=279, a(1)=3996, a(2)=16008, a(3)=64784.

The programs for A177844, there is no canonical definition to state claims against.
-/

/-! ## A177844.P9910548437585152337

`A077077(4*n+1)/6`
-/

namespace A177844.P9910548437585152337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077077 (4 * n + 1) : ℚ) / 6

end

end A177844.P9910548437585152337

/-! ## A177844.P6994954428188641560

`floor(A077077(A016813(n))/6)`
-/

namespace A177844.P6994954428188641560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077077 (A016813 n).toNat : ℚ) / 6⌋

end

end A177844.P6994954428188641560

/-! ## A177844.P15811654955526886277

`lcm(A077077(A016813(n))/6, A329683(n))`
-/

namespace A177844.P15811654955526886277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A077077 (A016813 n).toNat : ℚ) / 6)) (A329683 n)

end

end A177844.P15811654955526886277

/-! ## A177844.P13727259816583145493

`or(A077077(A016813(n))/6, A000007(n))`
-/

namespace A177844.P13727259816583145493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A077077 (A016813 n).toNat : ℚ) / 6)) (A000007 n)

end

end A177844.P13727259816583145493

/-! ## A177844.P3260897667561161411

`or(A077077(A016813(n))/6, A000038(n))`
-/

namespace A177844.P3260897667561161411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A077077 (A016813 n).toNat : ℚ) / 6)) (A000038 n)

end

end A177844.P3260897667561161411

/-! ## A177844.P7652863608682910472

`A077077(A016813(n))/6*char[A003188(n)]`
-/

namespace A177844.P7652863608682910472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077077 (A016813 n).toNat : ℚ) / 6 * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

end

end A177844.P7652863608682910472

/-! ## A177844.P11777891715498494582

`char[A055001(n+1)]+A077077(A016813(n))/6`
-/

namespace A177844.P11777891715498494582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055001 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) + (A077077 (A016813 n).toNat : ℚ) / 6

end

end A177844.P11777891715498494582

/-! ## A177844.P16218493257340132398

`A077077(A016813(n))/6*A014963(A008653(n))`
-/

namespace A177844.P16218493257340132398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077077 (A016813 n).toNat : ℚ) / 6 * (A014963 (A008653 n).toNat : ℚ)

end

end A177844.P16218493257340132398

/-! ## A177844.P12724909832923307340

`A077077(A016813(n))/6*A132350(A130330(n))`
-/

namespace A177844.P12724909832923307340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077077 (A016813 n).toNat : ℚ) / 6 * (A132350 (A130330 n).toNat : ℚ)

end

end A177844.P12724909832923307340

/-!
# A177845: a(n) = 6*a(n-1)-8*a(n-2)-3 for n > 2; a(0)=775, a(1)=8919, a(2)=34223.

The programs for A177845, there is no canonical definition to state claims against.
-/

/-! ## A177845.P10288083789253875736

`A077077(4*n+2)/3`
-/

namespace A177845.P10288083789253875736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077077 (4 * n + 2) : ℚ) / 3

end

end A177845.P10288083789253875736

/-! ## A177845.P9979143338848922514

`ceil(A077077(A016825(n))/3)`
-/

namespace A177845.P9979143338848922514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077077 (A016825 n).toNat : ℚ) / 3⌉

end

end A177845.P9979143338848922514

/-! ## A177845.P13039123993025547918

`A101637(A020639(n+1))+A077077(A016825(n))/3`
-/

namespace A177845.P13039123993025547918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101637 (A020639 (n + 1)).toNat : ℚ) + (A077077 (A016825 n).toNat : ℚ) / 3

end

end A177845.P13039123993025547918

/-! ## A177845.P16504901953605275683

`A101637(A204553(n+1))+A077077(A016825(n))/3`
-/

namespace A177845.P16504901953605275683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101637 (A204553 (n + 1)).toNat : ℚ) + (A077077 (A016825 n).toNat : ℚ) / 3

end

end A177845.P16504901953605275683

/-! ## A177845.P13775503799927544823

`A101637(A102380(n+1))+A077077(A016825(n))/3`
-/

namespace A177845.P13775503799927544823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101637 (A102380 (n + 1)).toNat : ℚ) + (A077077 (A016825 n).toNat : ℚ) / 3

end

end A177845.P13775503799927544823

/-!
# A177846: a(n) = 6*a(n-1)-8*a(n-2) for n > 2; a(0)=837, a(1)=7896, a(2)=32176.

The programs for A177846, there is no canonical definition to state claims against.
-/

/-! ## A177846.P10713542757955134604

`record[A077077(xor(3, n))/6]`
-/

namespace A177846.P10713542757955134604
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077077 (Nat.xor 3 n) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177846.P10713542757955134604

/-! ## A177846.P15297514804856729731

`A077077(4*n+3)/6`
-/

namespace A177846.P15297514804856729731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077077 (4 * n + 3) : ℚ) / 6

end

end A177846.P15297514804856729731

/-!
# A177847: Array T(n,m)= (n*m)!*Beta(n, m) read by antidiagonals.

The programs for A177847, there is no canonical definition to state claims against.
-/

/-! ## A177847.P15453595722544151992

`A098361(n)*A177939(n+1)`
-/

namespace A177847.P15453595722544151992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A177939 (n + 1)

end

end A177847.P15453595722544151992

/-! ## A177847.P12535018424838632615

`A003991(n+1)!/A003506(n+1)`
-/

namespace A177847.P12535018424838632615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003991 (n + 1)).toNat : ℚ) / (A003506 (n + 1) : ℚ)

end

end A177847.P12535018424838632615

/-! ## A177847.P11752759011860440647

`A060854(n+1)*A098361(n)*A009963(n)`
-/

namespace A177847.P11752759011860440647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060854 (n + 1) * A098361 n * A009963 n

end

end A177847.P11752759011860440647

/-! ## A177847.P2429066753717476333

`A009963(n)*A098361(n)*A004065(A115216(n))`
-/

namespace A177847.P2429066753717476333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009963 n * A098361 n * A004065 (A115216 n).toNat

end

end A177847.P2429066753717476333

/-! ## A177847.P11559457333803595389

`A009963(n)*A098361(n)*A290252(A193903(n))`
-/

namespace A177847.P11559457333803595389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009963 n * A098361 n * A290252 (A193903 n).toNat

end

end A177847.P11559457333803595389

/-!
# A177848: Triangle, read by rows, T(n, k) = t(k, n-k+1) - t(1, n) + 1 where t(n, m) = (n*m)!*Beta(n, m).

The programs for A177848, there is no canonical definition to state claims against.
-/

/-! ## A177848.P10953677228693281059

`A298093(A174109(n)+1)`
-/

namespace A177848.P10953677228693281059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298093 (A174109 n + 1).toNat

end

end A177848.P10953677228693281059

/-! ## A177848.P8962659036092224184

`C(A056608(3^n), 2)`
-/

namespace A177848.P8962659036092224184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A056608 (3 ^ n)).toNat 2

end

end A177848.P8962659036092224184

/-! ## A177848.P8680122613614262569

`A165661(A273204(n))`
-/

namespace A177848.P8680122613614262569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165661 (A273204 n).toNat

end

end A177848.P8680122613614262569

/-! ## A177848.P18114660853637617111

`A147472(A106033(n+1))`
-/

namespace A177848.P18114660853637617111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147472 (A106033 (n + 1)).toNat

end

end A177848.P18114660853637617111

/-! ## A177848.P1169831653513762849

`A034364(A317786(n+1))`
-/

namespace A177848.P1169831653513762849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034364 (A317786 (n + 1)).toNat

end

end A177848.P1169831653513762849

/-!
# A177849: The number of ways of minimal weight to make change for n cents using fairly valued United States coins (copper 1-cent coin, a nickel 5-cent coin, and silver 10-cent and 25-cent coins) assuming that silver is more valuable than nickel and that nickel is more valuable than copper.

The programs for A177849, there is no canonical definition to state claims against.
-/

/-! ## A177849.P5565221533156427492

`A055642(A160941(n+1)%A105591(n))`
-/

namespace A177849.P5565221533156427492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.tmod (A160941 (n + 1)) (A105591 n)).toNat

end

end A177849.P5565221533156427492

/-! ## A177849.P12330938804398027128

`A303838(A320241(floor(n/5))+1)`
-/

namespace A177849.P12330938804398027128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303838 (A320241 ⌊(n : ℚ) / 5⌋.toNat + 1).toNat

end

end A177849.P12330938804398027128

/-! ## A177849.P15476597759481587809

`A324837(A320241(floor(n/5))+1)`
-/

namespace A177849.P15476597759481587809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324837 (A320241 ⌊(n : ℚ) / 5⌋.toNat + 1).toNat

end

end A177849.P15476597759481587809

/-! ## A177849.P14596486121559806798

`A346418(A003238(5*floor(n/5)+2))`
-/

namespace A177849.P14596486121559806798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346418 (A003238 (5 * ⌊(n : ℚ) / 5⌋ + 2).toNat).toNat

end

end A177849.P14596486121559806798

/-! ## A177849.P6632989245736080976

`(A045887(2*n+1)%A191426(n+4))!`
-/

namespace A177849.P6632989245736080976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A045887 (2 * n + 1)) (A191426 (n + 4))).toNat

end

end A177849.P6632989245736080976

/-! ## A177849.P14617468204264828659

`A307739(A138471(n)%A298981(n+1))`
-/

namespace A177849.P14617468204264828659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307739 (Int.tmod (A138471 n) (A298981 (n + 1))).toNat

end

end A177849.P14617468204264828659

/-! ## A177849.P1487762174204780552

`A055641(A103181(2*n)*A167677(n))`
-/

namespace A177849.P1487762174204780552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A103181 (2 * n) * A167677 n).toNat

end

end A177849.P1487762174204780552

/-! ## A177849.P5748184700568551570

`gcd(A188169(A329193(n+3)), A196563(2*n))`
-/

namespace A177849.P5748184700568551570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A188169 (A329193 (n + 3)).toNat) (A196563 (2 * n))

end

end A177849.P5748184700568551570

/-! ## A177849.P15412733578157962273

`(A045887(2*n+1)%A084192(n))!`
-/

namespace A177849.P15412733578157962273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A045887 (2 * n + 1)) (A084192 n)).toNat

end

end A177849.P15412733578157962273

/-! ## A177849.P11694266530201746530

`∏{e}[A108111(A108105(n)), #]`
-/

namespace A177849.P11694266530201746530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108111 (A108105 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A177849.P11694266530201746530

/-!
# A177851: Triangle read by rows: T(n, m) = binomial(n + m - 3, m - 1)*(2 * m + n - 2) / m, for n>=1 and 1<=m<=n.

The programs for A177851, there is no canonical definition to state claims against.
-/

/-! ## A177851.P16340502439608988502

`A029635(A245300(n)+1)`
-/

namespace A177851.P16340502439608988502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (A245300 n + 1).toNat

end

end A177851.P16340502439608988502

/-! ## A177851.P5120425488447186218

`A115241(A245300(n)+1)`
-/

namespace A177851.P5120425488447186218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115241 (A245300 n + 1).toNat

end

end A177851.P5120425488447186218

/-! ## A177851.P7896580730082045796

`A029635((A214661(n+1)+1)/2)`
-/

namespace A177851.P7896580730082045796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.roundAway ((A214661 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A177851.P7896580730082045796

/-! ## A177851.P5946578758075909145

`A029635(1-A001489(A245300(n)))`
-/

namespace A177851.P5946578758075909145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (1 - A001489 (A245300 n).toNat).toNat

end

end A177851.P5946578758075909145

/-! ## A177851.P16363586147324783798

`A165257(n+1)+A059481(n)-A046899(n)`
-/

namespace A177851.P16363586147324783798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165257 (n + 1) + (A059481 n - A046899 n)

end

end A177851.P16363586147324783798

/-! ## A177851.P1457917005970653201

`A059481(n)+A135278(A245300(n))-A046899(n)`
-/

namespace A177851.P1457917005970653201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 n + (A135278 (A245300 n).toNat - A046899 n)

end

end A177851.P1457917005970653201

/-!
# A177852: prime(n)-A177687(n).

The programs for A177852, the canonical program `A177852.P6076088614486311757` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177852 has offset 1).

The definition of A177852 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A177687, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A177852.P6076088614486311757

`A000040(n+1)-A177687(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A177852

/-- `A000040(n+1)-A177687(n+1)` -/
def P6076088614486311757.Spec : Prop :=
  ∀ n, P6076088614486311757.a n = A177852 (n + 1)

theorem P6076088614486311757.correct : P6076088614486311757.Spec := by
  intro n
  simp only [A177852, Nat.add_sub_cancel]

end A177852

/-! ## A177852.P10132896742652443484

`Δ[A007504(n)]-A177687(n+1)`
-/

namespace A177852.P10132896742652443484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A177687 (n + 1)

end

end A177852.P10132896742652443484

namespace A177852

/-- `Δ[A007504(n)]-A177687(n+1)` -/
def P10132896742652443484.Spec : Prop :=
  ∀ n, P10132896742652443484.a n = A177852 (n + 1)

end A177852

/-! ## A177852.P8324406065727704230

`abs(Δ[A008348(n)])-A177687(n+1)`
-/

namespace A177852.P8324406065727704230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A177687 (n + 1)

end

end A177852.P8324406065727704230

namespace A177852

/-- `abs(Δ[A008348(n)])-A177687(n+1)` -/
def P8324406065727704230.Spec : Prop :=
  ∀ n, P8324406065727704230.a n = A177852 (n + 1)

end A177852

/-! ## A177852.P8238185091048965507

`sqrt(A001248(n+1))-A177687(n+1)`
-/

namespace A177852.P8238185091048965507
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) - (A177687 (n + 1) : ℝ)

end

end A177852.P8238185091048965507

namespace A177852

/-- `sqrt(A001248(n+1))-A177687(n+1)` -/
def P8238185091048965507.Spec : Prop :=
  ∀ n, P8238185091048965507.a n = (A177852 (n + 1) : ℝ)

end A177852

/-! ## A177852.P6363817525074974576

`A035103(n+1)+A177959(n+1)-A177687(n+1)`
-/

namespace A177852.P6363817525074974576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (n + 1) + (A177959 (n + 1) - A177687 (n + 1))

end

end A177852.P6363817525074974576

namespace A177852

/-- `A035103(n+1)+A177959(n+1)-A177687(n+1)` -/
def P6363817525074974576.Spec : Prop :=
  ∀ n, P6363817525074974576.a n = A177852 (n + 1)

end A177852

/-! ## A177852.P6186423791752285345

`record[A006530(n+2)]-A177687(n+1)`
-/

namespace A177852.P6186423791752285345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A177687 (n + 1)

end

end A177852.P6186423791752285345

namespace A177852

/-- `record[A006530(n+2)]-A177687(n+1)` -/
def P6186423791752285345.Spec : Prop :=
  ∀ n, P6186423791752285345.a n = A177852 (n + 1)

end A177852

/-! ## A177852.P4960964015492735427

`record[A020639(n+2)]-A177687(n+1)`
-/

namespace A177852.P4960964015492735427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A177687 (n + 1)

end

end A177852.P4960964015492735427

namespace A177852

/-- `record[A020639(n+2)]-A177687(n+1)` -/
def P4960964015492735427.Spec : Prop :=
  ∀ n, P4960964015492735427.a n = A177852 (n + 1)

end A177852

/-! ## A177852.P9680314209986146008

`A067747(2*n+1)-A177687(n+1)`
-/

namespace A177852.P9680314209986146008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * n + 1) - A177687 (n + 1)

end

end A177852.P9680314209986146008

namespace A177852

/-- `A067747(2*n+1)-A177687(n+1)` -/
def P9680314209986146008.Spec : Prop :=
  ∀ n, P9680314209986146008.a n = A177852 (n + 1)

end A177852

/-! ## A177852.P13266552565194578443

`record[A014963(n+2)]-A177687(n+1)`
-/

namespace A177852.P13266552565194578443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A177687 (n + 1)

end

end A177852.P13266552565194578443

namespace A177852

/-- `record[A014963(n+2)]-A177687(n+1)` -/
def P13266552565194578443.Spec : Prop :=
  ∀ n, P13266552565194578443.a n = A177852 (n + 1)

end A177852

/-! ## A177852.P12629812976720479738

`A008578(n+2)-A178244(A008578(n+2))`
-/

namespace A177852.P12629812976720479738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A178244 (A008578 (n + 2)).toNat

end

end A177852.P12629812976720479738

namespace A177852

/-- `A008578(n+2)-A178244(A008578(n+2))` -/
def P12629812976720479738.Spec : Prop :=
  ∀ n, P12629812976720479738.a n = A177852 (n + 1)

end A177852

/-! ## A177852.P15524270941521864954

`A182986(n+2)-A178244(A182986(n+2))`
-/

namespace A177852.P15524270941521864954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) - A178244 (A182986 (n + 2)).toNat

end

end A177852.P15524270941521864954

namespace A177852

/-- `A182986(n+2)-A178244(A182986(n+2))` -/
def P15524270941521864954.Spec : Prop :=
  ∀ n, P15524270941521864954.a n = A177852 (n + 1)

end A177852

/-! ## A177852.P558950835365080292

`p?[A001057(n)]-A177687(n+1)`
-/

namespace A177852.P558950835365080292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A177687 (n + 1)

end

end A177852.P558950835365080292

namespace A177852

/-- `p?[A001057(n)]-A177687(n+1)` -/
def P558950835365080292.Spec : Prop :=
  ∀ n, P558950835365080292.a n = A177852 (n + 1)

end A177852

/-!
# A177853: Partial sums of A018805.

The programs for A177853, the canonical program `A177853.P6963506388651497221` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177853 has offset 1).

The definition of A177853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177853.P4540289192280905284

`∑[A018805(n+1)]`
-/

namespace A177853.P4540289192280905284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177853.P4540289192280905284

namespace A177853

/-- `∑[A018805(n+1)]` -/
def P4540289192280905284.Spec : Prop :=
  ∀ n, P4540289192280905284.a n = A177853 (n + 1)

end A177853

/-! ## A177853.P6963506388651497221

`∑[∑[A140434(n+1)]]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A177853

/-- `∑[∑[A140434(n+1)]]` -/
def P6963506388651497221.Spec : Prop :=
  ∀ n, P6963506388651497221.a n = A177853 (n + 1)

theorem P6963506388651497221.correct : P6963506388651497221.Spec := by
  intro n
  simp only [A177853, Nat.add_sub_cancel]

end A177853

/-! ## A177853.P4101116848788479310

`∑[2*A015614(n+1)+1]`
-/

namespace A177853.P4101116848788479310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015614 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177853.P4101116848788479310

namespace A177853

/-- `∑[2*A015614(n+1)+1]` -/
def P4101116848788479310.Spec : Prop :=
  ∀ n, P4101116848788479310.a n = A177853 (n + 1)

end A177853

/-! ## A177853.P5545149334528439675

`∑[2*A092249(n+1)-1]`
-/

namespace A177853.P5545149334528439675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092249 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177853.P5545149334528439675

namespace A177853

/-- `∑[2*A092249(n+1)-1]` -/
def P5545149334528439675.Spec : Prop :=
  ∀ n, P5545149334528439675.a n = A177853 (n + 1)

end A177853

/-! ## A177853.P12375616778718284913

`2*A103116(n+1)-(n+1)`
-/

namespace A177853.P12375616778718284913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103116 (n + 1) - (n + 1 : ℤ)

end

end A177853.P12375616778718284913

namespace A177853

/-- `2*A103116(n+1)-(n+1)` -/
def P12375616778718284913.Spec : Prop :=
  ∀ n, P12375616778718284913.a n = A177853 (n + 1)

end A177853

/-! ## A177853.P10640308181004045125

`∑[∑[2*A000010(n+1)]-1]`
-/

namespace A177853.P10640308181004045125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177853.P10640308181004045125

namespace A177853

/-- `∑[∑[2*A000010(n+1)]-1]` -/
def P10640308181004045125.Spec : Prop :=
  ∀ n, P10640308181004045125.a n = A177853 (n + 1)

end A177853

/-! ## A177853.P1412890298297464162

`∑[(n+1)²-A100613(n+1)]`
-/

namespace A177853.P1412890298297464162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A100613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177853.P1412890298297464162

namespace A177853

/-- `∑[(n+1)²-A100613(n+1)]` -/
def P1412890298297464162.Spec : Prop :=
  ∀ n, P1412890298297464162.a n = A177853 (n + 1)

end A177853

/-! ## A177853.P5162873518416208852

`∑[∑[2*(A109606(n+1)+1)]-1]`
-/

namespace A177853.P5162873518416208852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A109606 (n + 1) + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177853.P5162873518416208852

namespace A177853

/-- `∑[∑[2*(A109606(n+1)+1)]-1]` -/
def P5162873518416208852.Spec : Prop :=
  ∀ n, P5162873518416208852.a n = A177853 (n + 1)

end A177853

/-! ## A177853.P18043818744384390330

`∑[∑[2*(A039649(n+1)-1)]-1]`
-/

namespace A177853.P18043818744384390330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A039649 (n + 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177853.P18043818744384390330

namespace A177853

/-- `∑[∑[2*(A039649(n+1)-1)]-1]` -/
def P18043818744384390330.Spec : Prop :=
  ∀ n, P18043818744384390330.a n = A177853 (n + 1)

end A177853

/-! ## A177853.P4549286969475541644

`∑[∑[A004277(A000010(n+1))]-1]`
-/

namespace A177853.P4549286969475541644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A000010 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177853.P4549286969475541644

namespace A177853

/-- `∑[∑[A004277(A000010(n+1))]-1]` -/
def P4549286969475541644.Spec : Prop :=
  ∀ n, P4549286969475541644.a n = A177853 (n + 1)

end A177853

/-! ## A177853.P10781905747027423752

`∑[∑[A004277(A109606(n+1)+1)]]-(n+1)`
-/

namespace A177853.P10781905747027423752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A109606 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A177853.P10781905747027423752

namespace A177853

/-- `∑[∑[A004277(A109606(n+1)+1)]]-(n+1)` -/
def P10781905747027423752.Spec : Prop :=
  ∀ n, P10781905747027423752.a n = A177853 (n + 1)

end A177853

/-! ## A177853.P7964930167764009047

`∑[2*∑[A000010(n+1)%A000203(n+1)]+1]`
-/

namespace A177853.P7964930167764009047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) (A000203 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177853.P7964930167764009047

namespace A177853

/-- `∑[2*∑[A000010(n+1)%A000203(n+1)]+1]` -/
def P7964930167764009047.Spec : Prop :=
  ∀ n, P7964930167764009047.a n = A177853 (n + 1)

end A177853

/-! ## A177853.P4058305660885612804

`∑[∑[A000010(n+1)*A020639(A000010(n+2))]]`
-/

namespace A177853.P4058305660885612804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A020639 (A000010 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177853.P4058305660885612804

namespace A177853

/-- `∑[∑[A000010(n+1)*A020639(A000010(n+2))]]` -/
def P4058305660885612804.Spec : Prop :=
  ∀ n, P4058305660885612804.a n = A177853 (n + 1)

end A177853

/-! ## A177853.P15612668891666343570

`∑[A049696(n+1)-1]`
-/

namespace A177853.P15612668891666343570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049696 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177853.P15612668891666343570

namespace A177853

/-- `∑[A049696(n+1)-1]` -/
def P15612668891666343570.Spec : Prop :=
  ∀ n, P15612668891666343570.a n = A177853 (n + 1)

end A177853

/-! ## A177853.P1991190472185940222

`∑[A206350(n+2)-1]`
-/

namespace A177853.P1991190472185940222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206350 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177853.P1991190472185940222

namespace A177853

/-- `∑[A206350(n+2)-1]` -/
def P1991190472185940222.Spec : Prop :=
  ∀ n, P1991190472185940222.a n = A177853 (n + 1)

end A177853

/-! ## A177853.P9369924772823637282

`A274008(n+1)-(n+2)`
-/

namespace A177853.P9369924772823637282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274008 (n + 1) - (n + 2 : ℤ)

end

end A177853.P9369924772823637282

namespace A177853

/-- `A274008(n+1)-(n+2)` -/
def P9369924772823637282.Spec : Prop :=
  ∀ n, P9369924772823637282.a n = A177853 (n + 1)

end A177853

/-! ## A177853.P15911204758904214181

`2*A005598(n+1)-(n+3)`
-/

namespace A177853.P15911204758904214181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005598 (n + 1) - (n + 3 : ℤ)

end

end A177853.P15911204758904214181

namespace A177853

/-- `2*A005598(n+1)-(n+3)` -/
def P15911204758904214181.Spec : Prop :=
  ∀ n, P15911204758904214181.a n = A177853 (n + 1)

end A177853

/-! ## A177853.P16497365911029013901

`A001489(n+1)+2*A103116(n+1)`
-/

namespace A177853.P16497365911029013901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + 2 * A103116 (n + 1)

end

end A177853.P16497365911029013901

namespace A177853

/-- `A001489(n+1)+2*A103116(n+1)` -/
def P16497365911029013901.Spec : Prop :=
  ∀ n, P16497365911029013901.a n = A177853 (n + 1)

end A177853

/-! ## A177853.P13795410162691635513

`∑[A049691(n+1)-2]`
-/

namespace A177853.P13795410162691635513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049691 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177853.P13795410162691635513

namespace A177853

/-- `∑[A049691(n+1)-2]` -/
def P13795410162691635513.Spec : Prop :=
  ∀ n, P13795410162691635513.a n = A177853 (n + 1)

end A177853

/-!
# A177854: Smallest prime of rank n.

The programs for A177854, there is no canonical definition to state claims against.
-/

/-! ## A177854.P11033846542744430476

`A006530(∑[12*a(n-1)])` with `a(0)=2, a(1)=10`
-/

namespace A177854.P11033846542744430476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 10] fun n f1 =>
  12 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A177854.P11033846542744430476

/-!
# A177855: Divisors of 2^1092 - 1.

The programs for A177855, there is no canonical definition to state claims against.
-/

/-! ## A177855.P10115233094650615158

`∪[A003524(n+1), A003536(n+1)]%A003521(n+2)`
-/

namespace A177855.P10115233094650615158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003536 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A003521 (n + 2))

end

end A177855.P10115233094650615158

/-! ## A177855.P9379940940305473051

`∪[A003524(n+1), A003536(n+2)]%A003545(n+4)`
-/

namespace A177855.P9379940940305473051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003536 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A003545 (n + 4))

end

end A177855.P9379940940305473051

/-! ## A177855.P18139822457881549630

`∪[A003536(n+2), A003524(n+1)]%A003551(n+5)`
-/

namespace A177855.P18139822457881549630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003536 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003524 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A003551 (n + 5))

end

end A177855.P18139822457881549630

/-! ## A177855.P1409561522705730095

`record[A028234(A340830(n+1)+n+1)]`
-/

namespace A177855.P1409561522705730095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A340830 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177855.P1409561522705730095

/-! ## A177855.P14619057259562201516

`eq[A040810(n), A043278(A038763(n))]`
-/

namespace A177855.P14619057259562201516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040810 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A038763 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177855.P14619057259562201516

/-!
# A177858: Triangle in which row n gives the number of primes <= 2^n having k 1's in their binary representation, k=1..n.

The programs for A177858, there is no canonical definition to state claims against.
-/

/-! ## A177858.P8987006889522329917

`or(A173922(A133498(n)), A316723(n))`
-/

namespace A177858.P8987006889522329917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A173922 (A133498 n).toNat) (A316723 n)

end

end A177858.P8987006889522329917

/-! ## A177858.P14596436085654943654

`A001221(Δ[A022160(n+1)]*A022174(n))`
-/

namespace A177858.P14596436085654943654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((f1 (n + 1) - f1 n) * A022174 n).toNat

end

end A177858.P14596436085654943654

/-! ## A177858.P15635422374873447106

`A059259(n)+A000035(A285115(n))`
-/

namespace A177858.P15635422374873447106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 n + A000035 (A285115 n).toNat

end

end A177858.P15635422374873447106

/-! ## A177858.P4356842116240698691

`abs(A317531(A000096(A180190(n+1))))`
-/

namespace A177858.P4356842116240698691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A317531 (A000096 (A180190 (n + 1)).toNat).toNat|

end

end A177858.P4356842116240698691

/-! ## A177858.P14729177624449629854

`A059259(n)+A010051(A000930(2*n))`
-/

namespace A177858.P14729177624449629854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 n + A010051 (A000930 (2 * n)).toNat

end

end A177858.P14729177624449629854

/-!
# A177859: Complement of A152412.

The programs for A177859, there is no canonical definition to state claims against.
-/

/-! ## A177859.P17124564906449082477

`comp[A152412(n+1)]`
-/

namespace A177859.P17124564906449082477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A177859.P17124564906449082477

/-! ## A177859.P13561834965895317446

`comp[Δ[A152412(A152271(n))]]`
-/

namespace A177859.P13561834965895317446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152412 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A177859.P13561834965895317446

/-! ## A177859.P14756052539516809029

`comp[record[A152412(A126759(n))]]`
-/

namespace A177859.P14756052539516809029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152412 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A177859.P14756052539516809029

/-! ## A177859.P16373797013615820120

`comp[record[A152412(A133310(n))]]`
-/

namespace A177859.P16373797013615820120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152412 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A177859.P16373797013615820120

/-! ## A177859.P51381955929992312

`comp[record[A152412(A143182(n))]]`
-/

namespace A177859.P51381955929992312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152412 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A177859.P51381955929992312

/-! ## A177859.P16117616910692619894

`comp[record[A152412(A193592(n))]]`
-/

namespace A177859.P16117616910692619894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152412 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A177859.P16117616910692619894

/-!
# A177860: Product of the quadratic residues of prime(n).

The programs for A177860, there is no canonical definition to state claims against.
-/

/-! ## A177860.P9781660908205889076

`A177771(n+1)/A177861(n+1)`
-/

namespace A177860.P9781660908205889076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177771 (n + 1) : ℚ) / (A177861 (n + 1) : ℚ)

end

end A177860.P9781660908205889076

/-! ## A177860.P17643376973492140211

`A006093(n+1)!/A177861(n+1)`
-/

namespace A177860.P17643376973492140211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A006093 (n + 1)).toNat : ℚ) / (A177861 (n + 1) : ℚ)

end

end A177860.P17643376973492140211

/-! ## A177860.P6782787413115894070

`A094587(A008837(n+1))/A177861(n+1)`
-/

namespace A177860.P6782787413115894070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094587 (A008837 (n + 1)).toNat : ℚ) / (A177861 (n + 1) : ℚ)

end

end A177860.P6782787413115894070

/-! ## A177860.P12866605296515075482

`A372651(A138980(n))`
-/

namespace A177860.P12866605296515075482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372651 (A138980 n).toNat

end

end A177860.P12866605296515075482

/-! ## A177860.P13477011414302909992

`A372651(A181325(n))`
-/

namespace A177860.P13477011414302909992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372651 (A181325 n).toNat

end

end A177860.P13477011414302909992

/-!
# A177861: Product of the quadratic nonresidues of prime(n).

The programs for A177861, there is no canonical definition to state claims against.
-/

/-! ## A177861.P13708574039470435007

`A177771(n+1)/A177860(n+1)`
-/

namespace A177861.P13708574039470435007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177771 (n + 1) : ℚ) / (A177860 (n + 1) : ℚ)

end

end A177861.P13708574039470435007

/-! ## A177861.P17906062092335704360

`A006093(n+1)!/A177860(n+1)`
-/

namespace A177861.P17906062092335704360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A006093 (n + 1)).toNat : ℚ) / (A177860 (n + 1) : ℚ)

end

end A177861.P17906062092335704360

/-! ## A177861.P11649780783556439815

`A006973(A000040(n+1))/A177860(n+1)`
-/

namespace A177861.P11649780783556439815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006973 (A000040 (n + 1)).toNat : ℚ) / (A177860 (n + 1) : ℚ)

end

end A177861.P11649780783556439815

/-! ## A177861.P775912607185889242

`A094587(A008837(n+1))/A177860(n+1)`
-/

namespace A177861.P775912607185889242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094587 (A008837 (n + 1)).toNat : ℚ) / (A177860 (n + 1) : ℚ)

end

end A177861.P775912607185889242

/-!
# A177863: Product modulo p of the quadratic nonresidues of p, where p = prime(n).

The programs for A177863, there is no canonical definition to state claims against.
-/

/-! ## A177863.P15747838571737441571

`A326047(p?[xor(1, n)+1])`
-/

namespace A177863.P15747838571737441571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326047 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A177863.P15747838571737441571

/-! ## A177863.P2057255442357122397

`xor(1, A050452(p?[xor(1, n)+1]))`
-/

namespace A177863.P2057255442357122397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A050452 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A177863.P2057255442357122397

/-! ## A177863.P2152703462480705279

`A326047(p?[a(n-1)+2])` with `a(0)=2, a(1)=1`
-/

namespace A177863.P2152703462480705279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326047 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A177863.P2152703462480705279

/-! ## A177863.P3301245293550227062

`p?[ceil(2/acot(n))]-A163366(n+1)`
-/

namespace A177863.P3301245293550227062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A163366 (n + 1)

end

end A177863.P3301245293550227062

/-! ## A177863.P87493906631304809

`A326047(Δ[A007504(n)])`
-/

namespace A177863.P87493906631304809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326047 (f1 (n + 1) - f1 n).toNat

end

end A177863.P87493906631304809

/-! ## A177863.P15237021973611175606

`A326048(Δ[A007504(n)])`
-/

namespace A177863.P15237021973611175606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326048 (f1 (n + 1) - f1 n).toNat

end

end A177863.P15237021973611175606

/-! ## A177863.P13485207921168819852

`A326047(p?[A091203(n)])`
-/

namespace A177863.P13485207921168819852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326047 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177863.P13485207921168819852

/-! ## A177863.P9739112547662072569

`A326048(p?[A256450(n)])`
-/

namespace A177863.P9739112547662072569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326048 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177863.P9739112547662072569

/-! ## A177863.P8082277090078720397

`A143201(A072900(n+1))`
-/

namespace A177863.P8082277090078720397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143201 (A072900 (n + 1)).toNat

end

end A177863.P8082277090078720397

/-! ## A177863.P2099613836506796921

`A326047(A000040(n+1))`
-/

namespace A177863.P2099613836506796921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326047 (A000040 (n + 1)).toNat

end

end A177863.P2099613836506796921

/-!
# A177864: a(n) is the smallest nontrivial quadratic residue modulo prime(n), for n >= 3.

The programs for A177864, there is no canonical definition to state claims against.
-/

/-! ## A177864.P8720720898610793529

`A333669(p?[or(1, 3*n+1)])`
-/

namespace A177864.P8720720898610793529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333669 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A177864.P8720720898610793529

/-! ## A177864.P4455767043588343171

`A333669(A215848(n+1))`
-/

namespace A177864.P4455767043588343171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333669 (A215848 (n + 1)).toNat

end

end A177864.P4455767043588343171

/-! ## A177864.P16421823355453146129

`A291357(A024698(n+2))`
-/

namespace A177864.P16421823355453146129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291357 (A024698 (n + 2)).toNat

end

end A177864.P16421823355453146129

/-! ## A177864.P11611994270286092783

`A333669(A045344(n+2))`
-/

namespace A177864.P11611994270286092783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333669 (A045344 (n + 2)).toNat

end

end A177864.P11611994270286092783

/-! ## A177864.P22012919297927462

`A333669(A065091(n+2))`
-/

namespace A177864.P22012919297927462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333669 (A065091 (n + 2)).toNat

end

end A177864.P22012919297927462

/-! ## A177864.P16480631086781320852

`A333669(A140475(n+2))`
-/

namespace A177864.P16480631086781320852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333669 (A140475 (n + 2)).toNat

end

end A177864.P16480631086781320852

/-! ## A177864.P8053475563614026964

`A333669(A000040(n+3))`
-/

namespace A177864.P8053475563614026964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333669 (A000040 (n + 3)).toNat

end

end A177864.P8053475563614026964

/-! ## A177864.P252451470736445306

`A333669(record[A006530(n+5)])`
-/

namespace A177864.P252451470736445306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333669 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A177864.P252451470736445306

/-! ## A177864.P2782953495019560375

`A333669(record[A014963(n+5)])`
-/

namespace A177864.P2782953495019560375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333669 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A177864.P2782953495019560375

/-! ## A177864.P14291527446130897691

`A333669(record[A020639(n+5)])`
-/

namespace A177864.P14291527446130897691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333669 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A177864.P14291527446130897691

/-!
# A177865: Polya-Vinogradov numbers: a(n) is the maximum over all k > 0 of |#(quadratic residues modulo p up to k) - #(quadratic nonresidues modulo p up to k)| where p is the n-th prime and n > 1.

The programs for A177865, there is no canonical definition to state claims against.
-/

/-! ## A177865.P3195449325251964489

`A257639(p?[A335836(n+1)])`
-/

namespace A177865.P3195449325251964489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177865.P3195449325251964489

/-! ## A177865.P11677387031949560587

`A000120(A156055(3*n+1)+A096816(n))`
-/

namespace A177865.P11677387031949560587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A156055 (3 * n + 1) + A096816 n).toNat

end

end A177865.P11677387031949560587

/-! ## A177865.P7786110943095240425

`A135662(A187112(n+1)+p?[A335836(n+1)])`
-/

namespace A177865.P7786110943095240425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (A187112 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177865.P7786110943095240425

/-! ## A177865.P18391938249069821180

`A373954(A027907(3*n+1))+A086916(n+1)`
-/

namespace A177865.P18391938249069821180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 (A027907 (3 * n + 1)).toNat + A086916 (n + 1)

end

end A177865.P18391938249069821180

/-! ## A177865.P15920869939775075687

`A089643(A299201(2*(n+1))+A245001(n+3))`
-/

namespace A177865.P15920869939775075687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 (A299201 (2 * (n + 1)) + A245001 (n + 3)).toNat

end

end A177865.P15920869939775075687

/-!
# A177867: a(n)=sqrt(A178825(n)+A178825(n+1)).

The programs for A177867, there is no canonical definition to state claims against.
-/

/-! ## A177867.P17522323204059998851

`sqrt(A178825(n+1)+A178825(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A177867.P17522323204059998851
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A178825 (n + 1) + A178825 (n + 2) : ℝ)

end

end A177867.P17522323204059998851

/-! ## A177867.P6616921635709885544

`A000196(A178825(n+1)+A178825(n+2))`
-/

namespace A177867.P6616921635709885544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A178825 (n + 1) + A178825 (n + 2)).toNat

end

end A177867.P6616921635709885544

/-! ## A177867.P14779226729569476705

`A178786(A178825(n+1)+A178825(n+2))`
-/

namespace A177867.P14779226729569476705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A178825 (n + 1) + A178825 (n + 2)).toNat

end

end A177867.P14779226729569476705

/-! ## A177867.P15703701520559379674

`record[A054541(A167487(n)-A215848(n+1))]`
-/

namespace A177867.P15703701520559379674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A167487 n - A215848 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177867.P15703701520559379674

/-! ## A177867.P12831029279507301743

`A214628(∑[n+1]+2)`
-/

namespace A177867.P12831029279507301743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214628 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A177867.P12831029279507301743

/-!
# A177869: Integers divisible by their number of digits in binary.

The programs for A177869, the canonical program `A177869.P3283892457013278428` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177869 has offset 1).

The definition of A177869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 825 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177869.P3283892457013278428

`record[gcd(n+1, (n+1)%A070939(n+1))]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A177869

/-- `record[gcd(n+1, (n+1)%A070939(n+1))]` -/
def P3283892457013278428.Spec : Prop :=
  ∀ n, (P3283892457013278428.a n : ℤ) = A177869 (n + 1)

theorem P3283892457013278428.correct : P3283892457013278428.Spec := by
  intro n
  simp only [A177869, Nat.add_sub_cancel]

end A177869

/-! ## A177869.P74806367057327433

`eq[n+1, lcm(n+1, A029837(n+2))]+1`
-/

namespace A177869.P74806367057327433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A029837 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A177869.P74806367057327433

namespace A177869

/-- `eq[n+1, lcm(n+1, A029837(n+2))]+1` -/
def P74806367057327433.Spec : Prop :=
  ∀ n, (P74806367057327433.a n : ℤ) = A177869 (n + 1)

end A177869

/-! ## A177869.P8714563705179076709

`eq[n%A070939(n), A000007(n)]`
-/

namespace A177869.P8714563705179076709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A070939 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177869.P8714563705179076709

namespace A177869

/-- `eq[n%A070939(n), A000007(n)]` -/
def P8714563705179076709.Spec : Prop :=
  ∀ n, (P8714563705179076709.a n : ℤ) = A177869 (n + 1)

end A177869

/-! ## A177869.P17638382600087225760

`eq[gcd(n, A029837(n+1)), A070939(n)]`
-/

namespace A177869.P17638382600087225760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A029837 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A177869.P17638382600087225760

namespace A177869

/-- `eq[gcd(n, A029837(n+1)), A070939(n)]` -/
def P17638382600087225760.Spec : Prop :=
  ∀ n, (P17638382600087225760.a n : ℤ) = A177869 (n + 1)

end A177869

/-! ## A177869.P12987606841553232444

`eq[0, A008486(n)%A008486(A070939(n))]`
-/

namespace A177869.P12987606841553232444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008486 n) (A008486 (A070939 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A177869.P12987606841553232444

namespace A177869

/-- `eq[0, A008486(n)%A008486(A070939(n))]` -/
def P12987606841553232444.Spec : Prop :=
  ∀ n, (P12987606841553232444.a n : ℤ) = A177869 (n + 1)

end A177869

/-! ## A177869.P9623998728965343221

`lt[2*A352452(n), n]`
-/

namespace A177869.P9623998728965343221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A352452 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A177869.P9623998728965343221

namespace A177869

/-- `lt[2*A352452(n), n]` -/
def P9623998728965343221.Spec : Prop :=
  ∀ n, (P9623998728965343221.a n : ℤ) = A177869 (n + 1)

end A177869

/-! ## A177869.P3535152425562018335

`lt[n, 2*A352451(n)]`
-/

namespace A177869.P3535152425562018335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A352451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A177869.P3535152425562018335

namespace A177869

/-- `lt[n, 2*A352451(n)]` -/
def P3535152425562018335.Spec : Prop :=
  ∀ n, (P3535152425562018335.a n : ℤ) = A177869 (n + 1)

end A177869

/-! ## A177869.P14245668628902611893

`lt[A352452(n), A352451(n)]`
-/

namespace A177869.P14245668628902611893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177869.P14245668628902611893

namespace A177869

/-- `lt[A352452(n), A352451(n)]` -/
def P14245668628902611893.Spec : Prop :=
  ∀ n, (P14245668628902611893.a n : ℤ) = A177869 (n + 1)

end A177869

/-!
# A177871: Numbers k such that bigomega(k)^omega(k) > k.

The programs for A177871, there is no canonical definition to state claims against.
-/

/-! ## A177871.P2072656932401746898

`A080742(A288658(n+1))`
-/

namespace A177871.P2072656932401746898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080742 (A288658 (n + 1)).toNat

end

end A177871.P2072656932401746898

/-! ## A177871.P6965324723322469513

`A286596(A340307(n+1))`
-/

namespace A177871.P6965324723322469513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286596 (A340307 (n + 1)).toNat

end

end A177871.P6965324723322469513

/-!
# A177872: Numbers k such that k is a quadratic residue modulo reverse(k) and reverse(k) is a quadratic residue modulo k.

The programs for A177872, there is no canonical definition to state claims against.
-/

/-! ## A177872.P16412056090333844301

`∑[A026148(A276150(A094373(n)))]`
-/

namespace A177872.P16412056090333844301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A276150 (A094373 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177872.P16412056090333844301

/-! ## A177872.P12711783474732743000

`∑[A274531(A014101(A293520(n)))]`
-/

namespace A177872.P12711783474732743000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274531 (A014101 (A293520 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177872.P12711783474732743000

/-! ## A177872.P13045182391475234494

`record[A249727(A345931(n+1)*A345931(n+2))]`
-/

namespace A177872.P13045182391475234494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249727 (A345931 (n + 1) * A345931 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177872.P13045182391475234494

/-! ## A177872.P8577772269139121933

`lt[A056959(A199205(n+1)), A008000(2*n)]`
-/

namespace A177872.P8577772269139121933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056959 (A199205 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177872.P8577772269139121933

/-!
# A177873: Primes p such that p is a quadratic residue modulo reverse(p) and reverse(p) is a quadratic residue modulo p.

The programs for A177873, there is no canonical definition to state claims against.
-/

/-! ## A177873.P18237828949864674716

`∩[A177872(n+1), A334321(n+1)]`
-/

namespace A177873.P18237828949864674716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177873.P18237828949864674716

/-! ## A177873.P16474680940759053677

`∩[A034845(n+1), A177872(n+1)]`
-/

namespace A177873.P16474680940759053677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177873.P16474680940759053677

/-!
# A177874: The number of decimal digits in the Lucas-Lehmer number A003010(n).

The programs for A177874, there is no canonical definition to state claims against.
-/

/-! ## A177874.P6736505790313166767

`A005843(a(n-1))-A174208(n)` with `a(0)=1`
-/

namespace A177874.P6736505790313166767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005843 (a (n - 1)).toNat - A174208 n

end

end A177874.P6736505790313166767

/-! ## A177874.P14074059641452330226

`A005843(a(n-1))-char[A096276(n)]` with `a(0)=1, a(1)=2`
-/

namespace A177874.P14074059641452330226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A005843 (a (n - 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A177874.P14074059641452330226

/-! ## A177874.P15298583590460046750

`A028310(2*a(n-1)-A174208(n))` with `a(0)=1`
-/

namespace A177874.P15298583590460046750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (2 * a (n - 1) - A174208 n).toNat

end

end A177874.P15298583590460046750

/-! ## A177874.P15951936333882085240

`A008619(A251763(n)+A033138(n+1))`
-/

namespace A177874.P15951936333882085240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A251763 n + A033138 (n + 1)).toNat

end

end A177874.P15951936333882085240

/-! ## A177874.P10726481065368462500

`A008619(or(A033138(n+1), A308994(n)))`
-/

namespace A177874.P10726481065368462500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lor (A033138 (n + 1)) (A308994 n)).toNat

end

end A177874.P10726481065368462500

/-!
# A177875: The number of decimal digits in Lucas-Lehmer numbers A003010(k-2) divisible by 2^k-1.

The programs for A177875, there is no canonical definition to state claims against.
-/

/-! ## A177875.P9571681504245838135

`A177874(A153798(n+2))`
-/

namespace A177875.P9571681504245838135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177874 (A153798 (n + 2)).toNat

end

end A177875.P9571681504245838135

/-! ## A177875.P3196315456122992124

`A177874(A122834(n+1)-2)`
-/

namespace A177875.P3196315456122992124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177874 (A122834 (n + 1) - 2).toNat

end

end A177875.P3196315456122992124

/-! ## A177875.P279022396822765149

`A177874(A000043(n+2)-2)`
-/

namespace A177875.P279022396822765149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177874 (A000043 (n + 2) - 2).toNat

end

end A177875.P279022396822765149

/-!
# A177877: Triangle in which row n is derived from (1,2,3,...,n) dot (n,n-1,...,1) with additive carryovers.

The programs for A177877, the canonical program `A177877.P42856707843489636` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177877 has offset 0).

The definition of A177877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177877.P42856707843489636

`A082652(n+1)-A000292(A002262(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A177877

/-- `A082652(n+1)-A000292(A002262(n))` -/
def P42856707843489636.Spec : Prop :=
  ∀ n, P42856707843489636.a n = A177877 n

theorem P42856707843489636.correct : P42856707843489636.Spec := by
  intro n
  simp only [A177877]

end A177877

/-! ## A177877.P8949338765140886896

`A213500(∑[char[∑[n]]]²-n)`
-/

namespace A177877.P8949338765140886896
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A177877.P8949338765140886896

namespace A177877

/-- `A213500(∑[char[∑[n]]]²-n)` -/
def P8949338765140886896.Spec : Prop :=
  ∀ n, P8949338765140886896.a n = A177877 n

end A177877

/-! ## A177877.P9969861200288708351

`and(-1, A213500(A038722(n+1)))`
-/

namespace A177877.P9969861200288708351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A213500 (A038722 (n + 1)).toNat)

end

end A177877.P9969861200288708351

namespace A177877

/-- `and(-1, A213500(A038722(n+1)))` -/
def P9969861200288708351.Spec : Prop :=
  ∀ n, P9969861200288708351.a n = A177877 n

end A177877

/-! ## A177877.P14532561306826934024

`A213500(A038722(n+1))%A169740(n)`
-/

namespace A177877.P14532561306826934024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213500 (A038722 (n + 1)).toNat) (A169740 n)

end

end A177877.P14532561306826934024

namespace A177877

/-- `A213500(A038722(n+1))%A169740(n)` -/
def P14532561306826934024.Spec : Prop :=
  ∀ n, P14532561306826934024.a n = A177877 n

end A177877

/-! ## A177877.P5988104962559620522

`A001844(n)%2*A213500(A038722(n+1))`
-/

namespace A177877.P5988104962559620522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001844 n) 2 * A213500 (A038722 (n + 1)).toNat

end

end A177877.P5988104962559620522

namespace A177877

/-- `A001844(n)%2*A213500(A038722(n+1))` -/
def P5988104962559620522.Spec : Prop :=
  ∀ n, P5988104962559620522.a n = A177877 n

end A177877

/-! ## A177877.P17859071856543625817

`A008288(n)%2*A213500(A038722(n+1))`
-/

namespace A177877.P17859071856543625817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008288 n) 2 * A213500 (A038722 (n + 1)).toNat

end

end A177877.P17859071856543625817

namespace A177877

/-- `A008288(n)%2*A213500(A038722(n+1))` -/
def P17859071856543625817.Spec : Prop :=
  ∀ n, P17859071856543625817.a n = A177877 n

end A177877

/-! ## A177877.P18252927239391938194

`A169741(n+1)%2*A213500(A038722(n+1))`
-/

namespace A177877.P18252927239391938194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169741 (n + 1)) 2 * A213500 (A038722 (n + 1)).toNat

end

end A177877.P18252927239391938194

namespace A177877

/-- `A169741(n+1)%2*A213500(A038722(n+1))` -/
def P18252927239391938194.Spec : Prop :=
  ∀ n, P18252927239391938194.a n = A177877 n

end A177877

/-! ## A177877.P15825939172803548143

`A140765(n)+A000217(A002260(n+1))`
-/

namespace A177877.P15825939172803548143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140765 n + A000217 (A002260 (n + 1)).toNat

end

end A177877.P15825939172803548143

namespace A177877

/-- `A140765(n)+A000217(A002260(n+1))` -/
def P15825939172803548143.Spec : Prop :=
  ∀ n, P15825939172803548143.a n = A177877 n

end A177877

/-! ## A177877.P17049032908087576996

`A213750(A061579(n)+1)-A140765(n)`
-/

namespace A177877.P17049032908087576996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213750 (A061579 n + 1).toNat - A140765 n

end

end A177877.P17049032908087576996

namespace A177877

/-- `A213750(A061579(n)+1)-A140765(n)` -/
def P17049032908087576996.Spec : Prop :=
  ∀ n, P17049032908087576996.a n = A177877 n

end A177877

/-! ## A177877.P2334966472709521845

`A140765(comp[∑[n-1]])`
-/

namespace A177877.P2334966472709521845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140765 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A177877.P2334966472709521845

namespace A177877

/-- `A140765(comp[∑[n-1]])` -/
def P2334966472709521845.Spec : Prop :=
  ∀ n, P2334966472709521845.a n = A177877 n

end A177877

/-!
# A177878: Triangle in which row n is generated from (1,2,3,...,n) dot (n, n-1,...,1) with subtractive carryovers.

The programs for A177878, there is no canonical definition to state claims against.
-/

/-! ## A177878.P16759579168144865236

`A143219(n+1)%A004277(A003057(n+2))`
-/

namespace A177878.P16759579168144865236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143219 (n + 1)) (A004277 (A003057 (n + 2)).toNat)

end

end A177878.P16759579168144865236

/-!
# A177880: Numbers k such that not all exponents in the prime power factorization of k are in A005836.

The programs for A177880, there is no canonical definition to state claims against.
-/

/-! ## A177880.P5177013431974374385

`lt[1, A294932(n+1)]+1`
-/

namespace A177880.P5177013431974374385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294932 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A177880.P5177013431974374385

/-! ## A177880.P12142924522206096131

`lt[A061200(n+1)%3, 1]+1`
-/

namespace A177880.P12142924522206096131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061200 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A177880.P12142924522206096131

/-! ## A177880.P9051645921868057654

`lt[1, A294932(A028310(n))]`
-/

namespace A177880.P9051645921868057654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294932 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A177880.P9051645921868057654

/-! ## A177880.P17918411290749500868

`A020725(lt[1, A294932(n+1)])`
-/

namespace A177880.P17918411290749500868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A177880.P17918411290749500868

/-! ## A177880.P16861403660709565451

`lt[1, A294932(A000007(n)+n)]`
-/

namespace A177880.P16861403660709565451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294932 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A177880.P16861403660709565451

/-! ## A177880.P17119803696113197368

`lt[1, A294932(A233583(n+1))]`
-/

namespace A177880.P17119803696113197368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294932 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A177880.P17119803696113197368

/-!
# A177881: Partial sums of round(3^n/10).

The programs for A177881, the canonical program `A177881.P15901361799766635825` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177881 has offset 0).

The definition of A177881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177881.P11268694115524650394

`a(n-4)+4*3^(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4`
-/

namespace A177881.P11268694115524650394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1, 4] fun n a =>
  a (n - 4) + 4 * (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

end

end A177881.P11268694115524650394

namespace A177881

/-- `a(n-4)+4*3^(n-3)` -/
def P11268694115524650394.Spec : Prop :=
  ∀ n, P11268694115524650394.a n = (A177881 n : ℚ)

end A177881

/-! ## A177881.P15901361799766635825

`4*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A177881

/-- `4*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)` -/
def P15901361799766635825.Spec : Prop :=
  ∀ n, P15901361799766635825.a n = A177881 n

theorem P15901361799766635825.correct : P15901361799766635825.Spec := by
  intro n
  simp only [A177881]

end A177881

/-! ## A177881.P5519743136633392391

`floor((3*3^n-1)/20)`
-/

namespace A177881.P5519743136633392391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 * 3 ^ n : ℤ) - 1 : ℚ) / 20⌋

end

end A177881.P5519743136633392391

namespace A177881

/-- `floor((3*3^n-1)/20)` -/
def P5519743136633392391.Spec : Prop :=
  ∀ n, P5519743136633392391.a n = A177881 n

end A177881

/-! ## A177881.P13968974495066071030

`and(2, n)/2+3*a(n-1)` with `a(0)=0`
-/

namespace A177881.P13968974495066071030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.land 2 n : ℚ) / 2 + 3 * a (n - 1)

end

end A177881.P13968974495066071030

namespace A177881

/-- `and(2, n)/2+3*a(n-1)` -/
def P13968974495066071030.Spec : Prop :=
  ∀ n, P13968974495066071030.a n = (A177881 n : ℚ)

end A177881

/-! ## A177881.P9155113767355132752

`∑[3^(n-2)-a(n-2)]` with `a(0)=0, a(1)=0`
-/

namespace A177881.P9155113767355132752
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177881.P9155113767355132752

namespace A177881

/-- `∑[3^(n-2)-a(n-2)]` -/
def P9155113767355132752.Spec : Prop :=
  ∀ n, P9155113767355132752.a n = (A177881 n : ℚ)

end A177881

/-! ## A177881.P12565460831894369565

`floor(n/2)%2+3*a(n-1)` with `a(0)=0`
-/

namespace A177881.P12565460831894369565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod ⌊(n : ℚ) / 2⌋ 2 + 3 * a (n - 1)

end

end A177881.P12565460831894369565

namespace A177881

/-- `floor(n/2)%2+3*a(n-1)` -/
def P12565460831894369565.Spec : Prop :=
  ∀ n, P12565460831894369565.a n = A177881 n

end A177881

/-! ## A177881.P8236568369638369025

`∑[3*a(n-1)]-a(n-2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A177881.P8236568369638369025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 2)

end

end A177881.P8236568369638369025

namespace A177881

/-- `∑[3*a(n-1)]-a(n-2)` -/
def P8236568369638369025.Spec : Prop :=
  ∀ n, P8236568369638369025.a n = A177881 n

end A177881

/-! ## A177881.P16212097073354184934

`3*a(n-1)+1-a(n-2)%3` with `a(0)=0, a(1)=0`
-/

namespace A177881.P16212097073354184934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  3 * a (n - 1) + (1 - Int.tmod (a (n - 2)) 3)

end

end A177881.P16212097073354184934

namespace A177881

/-- `3*a(n-1)+1-a(n-2)%3` -/
def P16212097073354184934.Spec : Prop :=
  ∀ n, P16212097073354184934.a n = A177881 n

end A177881

/-! ## A177881.P13171082903126845272

`A178543(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A177881.P13171082903126845272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A178543 (n - 1) + a (n - 1)

end

end A177881.P13171082903126845272

namespace A177881

/-- `A178543(n-1)+a(n-1)` -/
def P13171082903126845272.Spec : Prop :=
  ∀ n, P13171082903126845272.a n = A177881 n

end A177881

/-! ## A177881.P17977149683955781719

`∑[floor(∑[3*a(n-1)]/5)]` with `a(0)=2, a(1)=1`
-/

namespace A177881.P17977149683955781719
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177881.P17977149683955781719

namespace A177881

/-- `∑[floor(∑[3*a(n-1)]/5)]` -/
def P17977149683955781719.Spec : Prop :=
  ∀ n, P17977149683955781719.a n = A177881 n

end A177881

/-! ## A177881.P15754372481254406328

`∑[round(A046717(n)/5)]`
-/

namespace A177881.P15754372481254406328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A046717 n : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177881.P15754372481254406328

namespace A177881

/-- `∑[round(A046717(n)/5)]` -/
def P15754372481254406328.Spec : Prop :=
  ∀ n, P15754372481254406328.a n = A177881 n

end A177881

/-! ## A177881.P7395879786753293874

`floor(3^n/5)-a(n-1)` with `a(0)=0`
-/

namespace A177881.P7395879786753293874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(3 ^ n : ℚ) / 5⌋ - a (n - 1)

end

end A177881.P7395879786753293874

namespace A177881

/-- `floor(3^n/5)-a(n-1)` -/
def P7395879786753293874.Spec : Prop :=
  ∀ n, P7395879786753293874.a n = A177881 n

end A177881

/-! ## A177881.P4738338765359687449

`round(A140298(3*n+2)/20)`
-/

namespace A177881.P4738338765359687449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A140298 (3 * n + 2) : ℚ) / 20)

end

end A177881.P4738338765359687449

namespace A177881

/-- `round(A140298(3*n+2)/20)` -/
def P4738338765359687449.Spec : Prop :=
  ∀ n, P4738338765359687449.a n = A177881 n

end A177881

/-! ## A177881.P4199155171077956476

`round(A034472(n+2)/60)`
-/

namespace A177881.P4199155171077956476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A034472 (n + 2) : ℚ) / 60)

end

end A177881.P4199155171077956476

namespace A177881

/-- `round(A034472(n+2)/60)` -/
def P4199155171077956476.Spec : Prop :=
  ∀ n, P4199155171077956476.a n = A177881 n

end A177881

/-! ## A177881.P5266806226355879674

`round(A058481(n+2)/60)`
-/

namespace A177881.P5266806226355879674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A058481 (n + 2) : ℚ) / 60)

end

end A177881.P5266806226355879674

namespace A177881

/-- `round(A058481(n+2)/60)` -/
def P5266806226355879674.Spec : Prop :=
  ∀ n, P5266806226355879674.a n = A177881 n

end A177881

/-!
# A177882: Trisection of A001317.

The programs for A177882, the canonical program `A177882.P5293616037841746258` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177882 has offset 0).

The definition of A177882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177882.P5293616037841746258

`A001317(3*n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A177882

/-- `A001317(3*n)` -/
def P5293616037841746258.Spec : Prop :=
  ∀ n, P5293616037841746258.a n = A177882 n

theorem P5293616037841746258.correct : P5293616037841746258.Spec := by
  intro n
  simp only [A177882]

end A177882

/-! ## A177882.P14769309272416202183

`A087745(6*n)`
-/

namespace A177882.P14769309272416202183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087745 (6 * n)

end

end A177882.P14769309272416202183

namespace A177882

/-- `A087745(6*n)` -/
def P14769309272416202183.Spec : Prop :=
  ∀ n, P14769309272416202183.a n = A177882 n

end A177882

/-! ## A177882.P10834783161200958946

`record[A001317(n)^(gcd(3, n)-2)]`
-/

namespace A177882.P10834783161200958946
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001317 n : ℚ) ^ ((Nat.gcd 3 n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177882.P10834783161200958946

namespace A177882

/-- `record[A001317(n)^(gcd(3, n)-2)]` -/
def P10834783161200958946.Spec : Prop :=
  ∀ n, P10834783161200958946.a n = (A177882 n : ℚ)

end A177882

/-! ## A177882.P9083425326852748518

`A366264(A031377(n+1))`
-/

namespace A177882.P9083425326852748518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366264 (A031377 (n + 1)).toNat

end

end A177882.P9083425326852748518

namespace A177882

/-- `A366264(A031377(n+1))` -/
def P9083425326852748518.Spec : Prop :=
  ∀ n, P9083425326852748518.a n = A177882 n

end A177882

/-! ## A177882.P8875817017941413608

`record[A001317(n)^A049347(n)]`
-/

namespace A177882.P8875817017941413608
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001317 n : ℚ) ^ (A049347 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177882.P8875817017941413608

namespace A177882

/-- `record[A001317(n)^A049347(n)]` -/
def P8875817017941413608.Spec : Prop :=
  ∀ n, P8875817017941413608.a n = (A177882 n : ℚ)

end A177882

/-!
# A177883: Period 6: repeat [4, 5, 7, 2, 1, 8].

The programs for A177883, the canonical program `A177883.P14335341884129606724` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177883 has offset 0).

The definition of A177883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177883.P14335341884129606724

`a(n-6)` with `a(0)=4, a(1)=5, a(2)=7, a(3)=2, a(4)=1, a(5)=8`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A177883

/-- `a(n-6)` -/
def P14335341884129606724.Spec : Prop :=
  ∀ n, (P14335341884129606724.a n : ℤ) = A177883 n

theorem P14335341884129606724.correct : P14335341884129606724.Spec := by
  intro n
  simp only [A177883]

end A177883

/-!
# A177884: Pseudoprimes to base 2 of the form 4k+3.

The programs for A177884, there is no canonical definition to state claims against.
-/

/-! ## A177884.P16430896338357741920

`A001567(eq[3, A001567(n+1)%4]+1)`
-/

namespace A177884.P16430896338357741920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001567 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A177884.P16430896338357741920

/-! ## A177884.P17540077315929616495

`A001567(eq[2, and(2, A001567(n+1))]+1)`
-/

namespace A177884.P17540077315929616495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A001567 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A177884.P17540077315929616495

/-! ## A177884.P2480346311676260373

`A020230(eq[2, and(2, A020230(n+1))]+1)`
-/

namespace A177884.P2480346311676260373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A020230 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020230 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A177884.P2480346311676260373

/-! ## A177884.P15046656301624793750

`∩[or(2, A020230(n+1)), A020136(n+1)]`
-/

namespace A177884.P15046656301624793750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A020230 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177884.P15046656301624793750

/-! ## A177884.P18382210856726175018

`∩[or(2, A020230(n+1)), A020144(n+1)]`
-/

namespace A177884.P18382210856726175018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A020230 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177884.P18382210856726175018

/-!
# A177885: a(n) = (1-n)^(n-1).

The programs for A177885, the canonical program `A177885.P15800969220133233524` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177885 has offset 0).

The definition of A177885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177885.P15800969220133233524

`(1-n)^(n-1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A177885

/-- `(1-n)^(n-1)` -/
def P15800969220133233524.Spec : Prop :=
  ∀ n, P15800969220133233524.a n = (A177885 n : ℚ)

end A177885

/-! ## A177885.P9190880723589840262

`A244116(∑[n]+n)`
-/

namespace A177885.P9190880723589840262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244116 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A177885.P9190880723589840262

namespace A177885

/-- `A244116(∑[n]+n)` -/
def P9190880723589840262.Spec : Prop :=
  ∀ n, P9190880723589840262.a n = A177885 n

end A177885

/-! ## A177885.P3376409914598496245

`A039621(∑[abs(1-n)])`
-/

namespace A177885.P3376409914598496245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039621 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A177885.P3376409914598496245

namespace A177885

/-- `A039621(∑[abs(1-n)])` -/
def P3376409914598496245.Spec : Prop :=
  ∀ n, P3376409914598496245.a n = A177885 n

end A177885

/-! ## A177885.P3576530908482015138

`ceil(A024000(n)^xor(-1, -n))`
-/

namespace A177885.P3576530908482015138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A024000 n : ℚ) ^ (Int.xor (-1) (-(n : ℤ)) : ℤ)⌉

end

end A177885.P3576530908482015138

namespace A177885

/-- `ceil(A024000(n)^xor(-1, -n))` -/
def P3576530908482015138.Spec : Prop :=
  ∀ n, P3576530908482015138.a n = A177885 n

end A177885

/-! ## A177885.P636740902295847014

`floor(A024000(n)^A023443(n))`
-/

namespace A177885.P636740902295847014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024000 n : ℚ) ^ (A023443 n : ℤ)⌋

end

end A177885.P636740902295847014

namespace A177885

/-- `floor(A024000(n)^A023443(n))` -/
def P636740902295847014.Spec : Prop :=
  ∀ n, P636740902295847014.a n = A177885 n

end A177885

/-! ## A177885.P8409257890977664803

`floor(A024000(n)^log2(A011782(n)))`
-/

namespace A177885.P8409257890977664803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024000 n : ℝ) ^ (Real.logb 2 (A011782 n : ℝ))⌋

end

end A177885.P8409257890977664803

namespace A177885

/-- `floor(A024000(n)^log2(A011782(n)))` -/
def P8409257890977664803.Spec : Prop :=
  ∀ n, P8409257890977664803.a n = A177885 n

end A177885

/-! ## A177885.P8812341445185731414

`A244117(∑[n]+n)`
-/

namespace A177885.P8812341445185731414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244117 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A177885.P8812341445185731414

namespace A177885

/-- `A244117(∑[n]+n)` -/
def P8812341445185731414.Spec : Prop :=
  ∀ n, P8812341445185731414.a n = A177885 n

end A177885

/-!
# A177886: The number of isomorphism classes of Latin quandles (a.k.a. left distributive quasigroups) of order n.

The programs for A177886, there is no canonical definition to state claims against.
-/

/-! ## A177886.P3764148938905939448

`A193067(n+1)+A102683(A131269(n))`
-/

namespace A177886.P3764148938905939448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193067 (n + 1) + A102683 (A131269 n).toNat

end

end A177886.P3764148938905939448

/-! ## A177886.P12081548609403019374

`A193067(n+1)+A088806(A091955(n+1))`
-/

namespace A177886.P12081548609403019374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193067 (n + 1) + A088806 (A091955 (n + 1)).toNat

end

end A177886.P12081548609403019374

/-! ## A177886.P9123669864786894887

`A193067(n+1)+A010894(A022442(n))`
-/

namespace A177886.P9123669864786894887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193067 (n + 1) + A010894 ((A022442 n).toNat + 21)

end

end A177886.P9123669864786894887

/-! ## A177886.P17349929704359604703

`xor(A160086(A116362(n)), A193067(n+1))`
-/

namespace A177886.P17349929704359604703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A160086 (A116362 n).toNat) (A193067 (n + 1))

end

end A177886.P17349929704359604703

/-! ## A177886.P16307739317955973717

`A279372(A291756(n+1))+A193067(n+1)`
-/

namespace A177886.P16307739317955973717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279372 (A291756 (n + 1)).toNat + A193067 (n + 1)

end

end A177886.P16307739317955973717

/-!
# A177887: The areas of Pythagorean triangles divided by 6.

The programs for A177887, there is no canonical definition to state claims against.
-/

/-! ## A177887.P6944145181815370887

`A009112(n+1)/6`
-/

namespace A177887.P6944145181815370887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009112 (n + 1) : ℚ) / 6

end

end A177887.P6944145181815370887

/-! ## A177887.P12806449529347585303

`A118903(n+1)/12`
-/

namespace A177887.P12806449529347585303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118903 (n + 1) : ℚ) / 12

end

end A177887.P12806449529347585303

/-! ## A177887.P2990809633519348310

`A256418(n+1)/24`
-/

namespace A177887.P2990809633519348310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256418 (n + 1) : ℚ) / 24

end

end A177887.P2990809633519348310

/-! ## A177887.P9076703505953833176

`record[A009111(A032742(n+1))/6]`
-/

namespace A177887.P9076703505953833176
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009111 (A032742 (n + 1)).toNat : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177887.P9076703505953833176

/-! ## A177887.P7408463398667163731

`record[A009111(A054576(n+1))/6]`
-/

namespace A177887.P7408463398667163731
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009111 (A054576 (n + 1)).toNat : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177887.P7408463398667163731

/-! ## A177887.P12657893857007258618

`A008615(A009112(n+1))`
-/

namespace A177887.P12657893857007258618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A009112 (n + 1)).toNat

end

end A177887.P12657893857007258618

/-! ## A177887.P5066572463834031433

`A112689(or(3, A009112(n+1)))`
-/

namespace A177887.P5066572463834031433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (Int.lor 3 (A009112 (n + 1))).toNat

end

end A177887.P5066572463834031433

/-! ## A177887.P2956945004161570018

`A051724(A118903(n+1))`
-/

namespace A177887.P2956945004161570018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A118903 (n + 1)).toNat

end

end A177887.P2956945004161570018

/-! ## A177887.P8510731088659868884

`A194698(A256418(n+1))`
-/

namespace A177887.P8510731088659868884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A256418 (n + 1)).toNat

end

end A177887.P8510731088659868884

/-!
# A177888: P_n(k) with P_0(z) = z+1 and P_n(z) = z + P_(n-1)(z)*(P_(n-1)(z)-z) for n>1; square array P_n(k), n>=0, k>=0, read by antidiagonals.

The programs for A177888, there is no canonical definition to state claims against.
-/

/-! ## A177888.P603180788680437252

`A246348(A087483(n)^A287847(n))`
-/

namespace A177888.P603180788680437252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246348 (SequenceMachineLib.roundAway ((A087483 n : ℚ) ^ (A287847 n : ℤ))).toNat

end

end A177888.P603180788680437252

/-! ## A177888.P15562339954314254149

`A033948(A185095(n)^A034380(3*n+1))`
-/

namespace A177888.P15562339954314254149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (SequenceMachineLib.roundAway ((A185095 n : ℚ) ^ (A034380 (3 * n + 1) : ℤ))).toNat

end

end A177888.P15562339954314254149

/-! ## A177888.P2201675300591691402

`A185095(lcm(n, C(n, floor(n/6))))`
-/

namespace A177888.P2201675300591691402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185095 (Nat.lcm n (Nat.choose n ⌊(n : ℚ) / 6⌋.toNat))

end

end A177888.P2201675300591691402

/-! ## A177888.P5421628475304924874

`A000005((gcd(n, n%2)+1)^(∑[∑[char[∑[n]]]²]%(n+1)))`
-/

namespace A177888.P5421628475304924874
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((Nat.gcd n (n % 2) + 1) ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)))

end

end A177888.P5421628475304924874

/-! ## A177888.P6247469762464174406

`A000005(3^(C(comp[∑[n]]-n, 2)-(n+1))^(n+1-C(∑[char[∑[n]]], 2))!)`
-/

namespace A177888.P6247469762464174406
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (((3 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)) ^ Nat.factorial ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)).toNat)).toNat

end

end A177888.P6247469762464174406

/-!
# A177890: 15-gonal (or pentadecagonal) pyramidal numbers: a(n) = n*(n+1)*(13*n-10)/6.

The programs for A177890, the canonical program `A177890.P18382336139185566816` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177890 has offset 0).

The definition of A177890 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(13*n-10)/6` (program `A177890.P1362550277348258482`, by `A177890.P1362550277348258482.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177890.P1362550277348258482

`n*(n+1)*(13*n-10)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A177890.P1362550277348258482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * (((13 * n : ℤ) - 10 : ℚ) / 6))

end

end A177890.P1362550277348258482

namespace A177890

/-- `n*(n+1)*(13*n-10)/6` -/
def P1362550277348258482.Spec : Prop :=
  ∀ n, P1362550277348258482.a n = (A177890 n : ℚ)

theorem P1362550277348258482.correct : P1362550277348258482.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A177890, Nat.add_sub_cancel, A177890.P1362550277348258482.a, A177890.P18382336139185566816.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A177890, Nat.add_sub_cancel, A177890.P1362550277348258482.a, A177890.P18382336139185566816.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A177890

/-! ## A177890.P18382336139185566816

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=16, a(3)=58`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A177890

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P18382336139185566816.Spec : Prop :=
  ∀ n, P18382336139185566816.a n = A177890 n

theorem P18382336139185566816.correct : P18382336139185566816.Spec := by
  intro n
  simp only [A177890]

end A177890

/-! ## A177890.P7563724096634118951

`∑[13*C(n, 2)+n]`
-/

namespace A177890.P7563724096634118951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * Nat.choose n 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177890.P7563724096634118951

namespace A177890

/-- `∑[13*C(n, 2)+n]` -/
def P7563724096634118951.Spec : Prop :=
  ∀ n, (P7563724096634118951.a n : ℤ) = A177890 n

end A177890

/-! ## A177890.P17998962925874776410

`∑[∑[a(n-1)+13]]` with `a(0)=0, a(1)=1`
-/

namespace A177890.P17998962925874776410
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + 13

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177890.P17998962925874776410

namespace A177890

/-- `∑[∑[a(n-1)+13]]` -/
def P17998962925874776410.Spec : Prop :=
  ∀ n, (P17998962925874776410.a n : ℤ) = A177890 n

end A177890

/-! ## A177890.P15839456297027631105

`∑[A051867(n)]`
-/

namespace A177890.P15839456297027631105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177890.P15839456297027631105

namespace A177890

/-- `∑[A051867(n)]` -/
def P15839456297027631105.Spec : Prop :=
  ∀ n, P15839456297027631105.a n = A177890 n

end A177890

/-! ## A177890.P60734142485129715

`∑[A226488(n)-n]`
-/

namespace A177890.P60734142485129715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226488 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177890.P60734142485129715

namespace A177890

/-- `∑[A226488(n)-n]` -/
def P60734142485129715.Spec : Prop :=
  ∀ n, P60734142485129715.a n = A177890 n

end A177890

/-! ## A177890.P8434943738277021831

`∑[A226489(n)-n²]`
-/

namespace A177890.P8434943738277021831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226489 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177890.P8434943738277021831

namespace A177890

/-- `∑[A226489(n)-n²]` -/
def P8434943738277021831.Spec : Prop :=
  ∀ n, P8434943738277021831.a n = A177890 n

end A177890

/-! ## A177890.P10668850991207951431

`(A256648(n)+∑[n])/2`
-/

namespace A177890.P10668850991207951431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256648 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2

end

end A177890.P10668850991207951431

namespace A177890

/-- `(A256648(n)+∑[n])/2` -/
def P10668850991207951431.Spec : Prop :=
  ∀ n, P10668850991207951431.a n = (A177890 n : ℚ)

end A177890

/-! ## A177890.P9166727078873928466

`∑[n]+A062025(n)-n`
-/

namespace A177890.P9166727078873928466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A062025 n - (n : ℤ))

end

end A177890.P9166727078873928466

namespace A177890

/-- `∑[n]+A062025(n)-n` -/
def P9166727078873928466.Spec : Prop :=
  ∀ n, P9166727078873928466.a n = A177890 n

end A177890

/-! ## A177890.P1101634036017374424

`A007588(n)+A005581(n)`
-/

namespace A177890.P1101634036017374424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 n + A005581 n

end

end A177890.P1101634036017374424

namespace A177890

/-- `A007588(n)+A005581(n)` -/
def P1101634036017374424.Spec : Prop :=
  ∀ n, P1101634036017374424.a n = A177890 n

end A177890

/-! ## A177890.P16247630194353731926

`A051925(n)+A004467(n)`
-/

namespace A177890.P16247630194353731926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051925 n + A004467 n

end

end A177890.P16247630194353731926

namespace A177890

/-- `A051925(n)+A004467(n)` -/
def P16247630194353731926.Spec : Prop :=
  ∀ n, P16247630194353731926.a n = A177890 n

end A177890

/-! ## A177890.P11101813014423307186

`A135503(n)+A007587(n)`
-/

namespace A177890.P11101813014423307186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A007587 n

end

end A177890.P11101813014423307186

namespace A177890

/-- `A135503(n)+A007587(n)` -/
def P11101813014423307186.Spec : Prop :=
  ∀ n, P11101813014423307186.a n = A177890 n

end A177890

/-! ## A177890.P16860929509622755763

`A161680(n)+A062025(n)`
-/

namespace A177890.P16860929509622755763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A062025 n

end

end A177890.P16860929509622755763

namespace A177890

/-- `A161680(n)+A062025(n)` -/
def P16860929509622755763.Spec : Prop :=
  ∀ n, P16860929509622755763.a n = A177890 n

end A177890

/-! ## A177890.P10230900632248159684

`A257093(n)-A046092(n)`
-/

namespace A177890.P10230900632248159684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257093 n - A046092 n

end

end A177890.P10230900632248159684

namespace A177890

/-- `A257093(n)-A046092(n)` -/
def P10230900632248159684.Spec : Prop :=
  ∀ n, P10230900632248159684.a n = A177890 n

end A177890

/-! ## A177890.P11645514478501672733

`A172078(n)-A135503(n)`
-/

namespace A177890.P11645514478501672733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172078 n - A135503 n

end

end A177890.P11645514478501672733

namespace A177890

/-- `A172078(n)-A135503(n)` -/
def P11645514478501672733.Spec : Prop :=
  ∀ n, P11645514478501672733.a n = A177890 n

end A177890

/-! ## A177890.P12534650767783037218

`A249354(n)-A092185(n)`
-/

namespace A177890.P12534650767783037218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249354 n - A092185 n

end

end A177890.P12534650767783037218

namespace A177890

/-- `A249354(n)-A092185(n)` -/
def P12534650767783037218.Spec : Prop :=
  ∀ n, P12534650767783037218.a n = A177890 n

end A177890

/-! ## A177890.P5561069931152814867

`A211612(n)-A215646(n)`
-/

namespace A177890.P5561069931152814867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211612 n - A215646 n

end

end A177890.P5561069931152814867

namespace A177890

/-- `A211612(n)-A215646(n)` -/
def P5561069931152814867.Spec : Prop :=
  ∀ n, P5561069931152814867.a n = A177890 n

end A177890

/-! ## A177890.P12090298860501170708

`A242135(n)+A185788(n+1)`
-/

namespace A177890.P12090298860501170708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242135 n + A185788 (n + 1)

end

end A177890.P12090298860501170708

namespace A177890

/-- `A242135(n)+A185788(n+1)` -/
def P12090298860501170708.Spec : Prop :=
  ∀ n, P12090298860501170708.a n = A177890 n

end A177890

/-! ## A177890.P13487049454727734472

`A168574(n)-A132127(n+1)`
-/

namespace A177890.P13487049454727734472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168574 n - A132127 (n + 1)

end

end A177890.P13487049454727734472

namespace A177890

/-- `A168574(n)-A132127(n+1)` -/
def P13487049454727734472.Spec : Prop :=
  ∀ n, P13487049454727734472.a n = A177890 n

end A177890

/-!
# A177891: Numbers n such that sum of proper (or aliquot) divisors of n is a semiprime.

The programs for A177891, the canonical program `A177891.P10399352112052943989` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177891 has offset 1).

The definition of A177891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7695 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177891.P10399352112052943989

`eq[2, A001222(A000203(n+2)-(n+2))]+2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A177891

/-- `eq[2, A001222(A000203(n+2)-(n+2))]+2` -/
def P10399352112052943989.Spec : Prop :=
  ∀ n, (P10399352112052943989.a n : ℤ) = A177891 (n + 1)

theorem P10399352112052943989.correct : P10399352112052943989.Spec := by
  intro n
  simp only [A177891, Nat.add_sub_cancel]

end A177891

/-! ## A177891.P3095126200076965061

`eq[2, ∑{e}[A001065(n+1), #]]+1`
-/

namespace A177891.P3095126200076965061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A177891.P3095126200076965061

namespace A177891

/-- `eq[2, ∑{e}[A001065(n+1), #]]+1` -/
def P3095126200076965061.Spec : Prop :=
  ∀ n, (P3095126200076965061.a n : ℤ) = A177891 (n + 1)

end A177891

/-! ## A177891.P9711551743713978869

`eq[2, A001222(abs(∑{d}[n, #]-(n+1))+1)]`
-/

namespace A177891.P9711551743713978869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) - (n + 1 : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A177891.P9711551743713978869

namespace A177891

/-- `eq[2, A001222(abs(∑{d}[n, #]-(n+1))+1)]` -/
def P9711551743713978869.Spec : Prop :=
  ∀ n, (P9711551743713978869.a n : ℤ) = A177891 (n + 1)

end A177891

/-! ## A177891.P6449182716909262110

`eq[2, ∑{e}[A000203(n+1)-(n+1), #]]+1`
-/

namespace A177891.P6449182716909262110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A177891.P6449182716909262110

namespace A177891

/-- `eq[2, ∑{e}[A000203(n+1)-(n+1), #]]+1` -/
def P6449182716909262110.Spec : Prop :=
  ∀ n, (P6449182716909262110.a n : ℤ) = A177891 (n + 1)

end A177891

/-! ## A177891.P7118327414555239694

`eq[2, A001222(A173455(n+1))]+1`
-/

namespace A177891.P7118327414555239694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A173455 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A177891.P7118327414555239694

namespace A177891

/-- `eq[2, A001222(A173455(n+1))]+1` -/
def P7118327414555239694.Spec : Prop :=
  ∀ n, (P7118327414555239694.a n : ℤ) = A177891 (n + 1)

end A177891

/-! ## A177891.P13105603288546136933

`eq[2, A001222(A001065(n+2))]+2`
-/

namespace A177891.P13105603288546136933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001065 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A177891.P13105603288546136933

namespace A177891

/-- `eq[2, A001222(A001065(n+2))]+2` -/
def P13105603288546136933.Spec : Prop :=
  ∀ n, (P13105603288546136933.a n : ℤ) = A177891 (n + 1)

end A177891

/-! ## A177891.P6756870510112371148

`eq[2, A001222(A048050(n+1)+1)]+1`
-/

namespace A177891.P6756870510112371148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A048050 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A177891.P6756870510112371148

namespace A177891

/-- `eq[2, A001222(A048050(n+1)+1)]+1` -/
def P6756870510112371148.Spec : Prop :=
  ∀ n, (P6756870510112371148.a n : ℤ) = A177891 (n + 1)

end A177891

/-! ## A177891.P11848998156016304755

`eq[2, A105700(A001065(n+1))]+1`
-/

namespace A177891.P11848998156016304755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A001065 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A177891.P11848998156016304755

namespace A177891

/-- `eq[2, A105700(A001065(n+1))]+1` -/
def P11848998156016304755.Spec : Prop :=
  ∀ n, (P11848998156016304755.a n : ℤ) = A177891 (n + 1)

end A177891

/-! ## A177891.P14610218488110431888

`eq[2, A105700(A001065(A028310(n)))]`
-/

namespace A177891.P14610218488110431888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A001065 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A177891.P14610218488110431888

namespace A177891

/-- `eq[2, A105700(A001065(A028310(n)))]` -/
def P14610218488110431888.Spec : Prop :=
  ∀ n, (P14610218488110431888.a n : ℤ) = A177891 (n + 1)

end A177891

/-! ## A177891.P7457392499305938746

`eq[2, A001222(A001065(A233583(n+1)))]`
-/

namespace A177891.P7457392499305938746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001065 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A177891.P7457392499305938746

namespace A177891

/-- `eq[2, A001222(A001065(A233583(n+1)))]` -/
def P7457392499305938746.Spec : Prop :=
  ∀ n, (P7457392499305938746.a n : ℤ) = A177891 (n + 1)

end A177891

/-!
# A177895: Trace of the square matrix whose rows are the cyclic permutations of the digits of n.

The programs for A177895, the canonical program `A177895.P16336607388393552249` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177895 has offset 0).

The definition of A177895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177895.P16336607388393552249

`A059995(n)+A010879(A056142(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A177895

/-- `A059995(n)+A010879(A056142(n))` -/
def P16336607388393552249.Spec : Prop :=
  ∀ n, P16336607388393552249.a n = A177895 n

theorem P16336607388393552249.correct : P16336607388393552249.Spec := by
  intro n
  simp only [A177895]

end A177895

/-! ## A177895.P2223303131758357779

`A217657(n)+A055017(A056142(n))`
-/

namespace A177895.P2223303131758357779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 n + A055017 (A056142 n).toNat

end

end A177895.P2223303131758357779

namespace A177895

/-- `A217657(n)+A055017(A056142(n))` -/
def P2223303131758357779.Spec : Prop :=
  ∀ n, P2223303131758357779.a n = A177895 n

end A177895

/-! ## A177895.P10686111281567295982

`A225693(n)+A062329(A051022(n))`
-/

namespace A177895.P10686111281567295982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n + A062329 (A051022 n).toNat

end

end A177895.P10686111281567295982

namespace A177895

/-- `A225693(n)+A062329(A051022(n))` -/
def P10686111281567295982.Spec : Prop :=
  ∀ n, P10686111281567295982.a n = A177895 n

end A177895

/-! ## A177895.P14044123125984130139

`A088133(A051022(n))-A055017(n)`
-/

namespace A177895.P14044123125984130139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088133 (A051022 n).toNat - A055017 n

end

end A177895.P14044123125984130139

namespace A177895

/-- `A088133(A051022(n))-A055017(n)` -/
def P14044123125984130139.Spec : Prop :=
  ∀ n, P14044123125984130139.a n = A177895 n

end A177895

/-! ## A177895.P15911061457943942289

`A081502(n)-A062329(A051022(n))`
-/

namespace A177895.P15911061457943942289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081502 n - A062329 (A051022 n).toNat

end

end A177895.P15911061457943942289

namespace A177895

/-- `A081502(n)-A062329(A051022(n))` -/
def P15911061457943942289.Spec : Prop :=
  ∀ n, P15911061457943942289.a n = A177895 n

end A177895

/-! ## A177895.P7367362026227949229

`A000030(A056142(n))*A055642(n)`
-/

namespace A177895.P7367362026227949229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A056142 n).toNat * A055642 n

end

end A177895.P7367362026227949229

namespace A177895

/-- `A000030(A056142(n))*A055642(n)` -/
def P7367362026227949229.Spec : Prop :=
  ∀ n, P7367362026227949229.a n = A177895 n

end A177895

/-! ## A177895.P8909818084836878308

`A225693(n)+A007953(A056142(n)-A000030(n))`
-/

namespace A177895.P8909818084836878308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n + A007953 (A056142 n - A000030 n).toNat

end

end A177895.P8909818084836878308

namespace A177895

/-- `A225693(n)+A007953(A056142(n)-A000030(n))` -/
def P8909818084836878308.Spec : Prop :=
  ∀ n, P8909818084836878308.a n = A177895 n

end A177895

/-! ## A177895.P5574361259043407738

`A088133(n)+A055017(n)*A057428((n+1)²)`
-/

namespace A177895.P5574361259043407738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088133 n + A055017 n * A057428 ((n + 1) ^ 2)

end

end A177895.P5574361259043407738

namespace A177895

/-- `A088133(n)+A055017(n)*A057428((n+1)²)` -/
def P5574361259043407738.Spec : Prop :=
  ∀ n, P5574361259043407738.a n = A177895 n

end A177895

/-!
# A177896: A binomial conjugate of the Narayana numbers.

The programs for A177896, there is no canonical definition to state claims against.
-/

/-! ## A177896.P10671001130879782806

`A119865(n)+A117896(A082614(n))`
-/

namespace A177896.P10671001130879782806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119865 n + A117896 (A082614 n).toNat

end

end A177896.P10671001130879782806

/-! ## A177896.P3589467099645485311

`A119865(n)+A011744(A119853(n+1))`
-/

namespace A177896.P3589467099645485311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119865 n + A011744 (A119853 (n + 1)).toNat

end

end A177896.P3589467099645485311

/-! ## A177896.P11012843755672665190

`A185284(A007947(3*n+4))+A119865(n)`
-/

namespace A177896.P11012843755672665190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A007947 (3 * n + 4)).toNat + A119865 n

end

end A177896.P11012843755672665190

/-!
# A177897: Triangle of octanomial coefficients read by rows: n-th row is obtained by expanding ((1+x)*(1+x^2)*(1+x^4))^n mod 2 and converting to decimal.

The programs for A177897, the canonical program `A177897.P11526367913359067018` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177897 has offset 0).

The definition of A177897 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177897.P11526367913359067018

`A001317(7*n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A177897

/-- `A001317(7*n)` -/
def P11526367913359067018.Spec : Prop :=
  ∀ n, P11526367913359067018.a n = A177897 n

theorem P11526367913359067018.correct : P11526367913359067018.Spec := by
  intro n
  simp only [A177897]

end A177897

/-! ## A177897.P5092060212889289614

`A087745(2*7*n)`
-/

namespace A177897.P5092060212889289614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087745 (2 * (7 * n))

end

end A177897.P5092060212889289614

namespace A177897

/-- `A087745(2*7*n)` -/
def P5092060212889289614.Spec : Prop :=
  ∀ n, P5092060212889289614.a n = A177897 n

end A177897

/-! ## A177897.P16186835636854487729

`A366264(A031911(n+1))`
-/

namespace A177897.P16186835636854487729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366264 (A031911 (n + 1)).toNat

end

end A177897.P16186835636854487729

namespace A177897

/-- `A366264(A031911(n+1))` -/
def P16186835636854487729.Spec : Prop :=
  ∀ n, P16186835636854487729.a n = A177897 n

end A177897

/-! ## A177897.P4942095365650138188

`or(1, A001317(A008589(n)))`
-/

namespace A177897.P4942095365650138188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001317 (A008589 n).toNat)

end

end A177897.P4942095365650138188

namespace A177897

/-- `or(1, A001317(A008589(n)))` -/
def P4942095365650138188.Spec : Prop :=
  ∀ n, P4942095365650138188.a n = A177897 n

end A177897

/-! ## A177897.P6859769056632767776

`A276618(A000217(7*n))`
-/

namespace A177897.P6859769056632767776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 (A000217 (7 * n)).toNat

end

end A177897.P6859769056632767776

namespace A177897

/-- `A276618(A000217(7*n))` -/
def P6859769056632767776.Spec : Prop :=
  ∀ n, P6859769056632767776.a n = A177897 n

end A177897

/-!
# A177899: Nonsquarefree numbers that are not in A177880.

The programs for A177899, there is no canonical definition to state claims against.
-/

/-! ## A177899.P8822153221899200303

`lt[A294932(n+1), A007424(n+1)]+1`
-/

namespace A177899.P8822153221899200303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007424 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A177899.P8822153221899200303

/-! ## A177899.P15438783230305339586

`eq[A008683(n+1)+1, A294932(n+1)]+1`
-/

namespace A177899.P15438783230305339586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294932 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A177899.P15438783230305339586

/-! ## A177899.P5502975718664818719

`∩[A000452(n+1), A013929(n+1)]`
-/

namespace A177899.P5502975718664818719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177899.P5502975718664818719

/-! ## A177899.P5398768309875963001

`∩[A000452(n+1), A046099(n+1)]`
-/

namespace A177899.P5398768309875963001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177899.P5398768309875963001

/-! ## A177899.P395976562320689014

`∩[A000452(n+1), A046790(n+1)]`
-/

namespace A177899.P395976562320689014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177899.P395976562320689014

/-! ## A177899.P2951579272474236385

`∩[A000452(n+1), A048108(n+1)]`
-/

namespace A177899.P2951579272474236385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177899.P2951579272474236385

/-! ## A177899.P4654981252185144529

`∩[A000452(n+1), A049199(n+1)]`
-/

namespace A177899.P4654981252185144529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177899.P4654981252185144529

/-! ## A177899.P8669578250669478542

`∩[A000452(n+1), A062171(n+1)]`
-/

namespace A177899.P8669578250669478542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177899.P8669578250669478542

/-! ## A177899.P15618761325830008966

`∩[A000452(n+1), A080756(n+1)]`
-/

namespace A177899.P15618761325830008966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177899.P15618761325830008966

/-! ## A177899.P17815153343411904297

`∩[A000452(n+1), A274141(n+1)]`
-/

namespace A177899.P17815153343411904297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177899.P17815153343411904297

/-! ## A177899.P7046199921810811538

`A020725(lt[A294932(n+1), A007424(n+1)])`
-/

namespace A177899.P7046199921810811538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A177899.P7046199921810811538

/-! ## A177899.P3438410426004039699

`∩[A000452(n+1), A225353(n+1)]`
-/

namespace A177899.P3438410426004039699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177899.P3438410426004039699

/-! ## A177899.P2023008445917129670

`∩[A000452(n+1), A299117(n+1)]`
-/

namespace A177899.P2023008445917129670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177899.P2023008445917129670

