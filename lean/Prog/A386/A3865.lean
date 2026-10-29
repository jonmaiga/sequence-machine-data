import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A386500: a(n) is the 3-adic valuation of A386252(n).

The programs for A386500, there is no canonical definition to state claims against.
-/

/-! ## A386500.P3959820451581949871

`A007949(A386252(n+1))`
-/

namespace A386500.P3959820451581949871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A386252 (n + 1)).toNat

end

end A386500.P3959820451581949871

/-! ## A386500.P16992826797195840756

`val(A386252(n+1), 3)`
-/

namespace A386500.P16992826797195840756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A386252 (n + 1)).toNat 3

end

end A386500.P16992826797195840756

/-! ## A386500.P14298505279123312667

`A354100(A080185(n+2))`
-/

namespace A386500.P14298505279123312667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354100 (A080185 (n + 2)).toNat

end

end A386500.P14298505279123312667

/-! ## A386500.P1459551316518323858

`gcd(A156077(A289322(n)), A246435(n+2))`
-/

namespace A386500.P1459551316518323858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156077 (A289322 n).toNat) (A246435 (n + 2))

end

end A386500.P1459551316518323858

/-! ## A386500.P6768796419736568789

`A007949(A080185(n+2)+1)`
-/

namespace A386500.P6768796419736568789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A080185 (n + 2) + 1).toNat

end

end A386500.P6768796419736568789

/-!
# A386501: Numbers k divisible by A004719(k), excluding trivial cases.

The programs for A386501, there is no canonical definition to state claims against.
-/

/-! ## A386501.P13278148706071419129

`A090053(∑[C(n+1, A372603(n+1))])`
-/

namespace A386501.P13278148706071419129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A372603 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090053 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A386501.P13278148706071419129

/-!
# A386502: E.g.f. A(x) satisfies A(x) = exp(x + x^4*A'''(x)).

The programs for A386502, there is no canonical definition to state claims against.
-/

/-! ## A386502.P10061484184714322675

`A193871(A148255(n))`
-/

namespace A386502.P10061484184714322675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193871 (A148255 n).toNat

end

end A386502.P10061484184714322675

/-! ## A386502.P4628634824235076582

`A010070(xor(1, A367868(n)))`
-/

namespace A386502.P4628634824235076582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010070 (Int.xor 1 (A367868 n)).toNat

end

end A386502.P4628634824235076582

/-!
# A386505: a(0) = 1; a(n) = a(n-1) + Sum_{k=0..n-1} (1 + k) * k^2 * binomial(n-1,k) * a(k) * a(n-1-k).

The programs for A386505, there is no canonical definition to state claims against.
-/

/-! ## A386505.P3884725307023714335

`A026139(∏[∏[A351018(n)]])`
-/

namespace A386505.P3884725307023714335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351018 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026139 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A386505.P3884725307023714335

/-!
# A386510: a(0) = 1; a(n) = a(n-1) + Sum_{k=0..n-1} (1 + k) * binomial(k+1,2) * binomial(n-1,k) * a(k) * a(n-1-k).

The programs for A386510, there is no canonical definition to state claims against.
-/

/-! ## A386510.P942544792823589707

`A120243(A156907(n))`
-/

namespace A386510.P942544792823589707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120243 (A156907 n).toNat

end

end A386510.P942544792823589707

/-!
# A386511: a(0) = 1; a(n) = a(n-1) + Sum_{k=0..n-1} (1 + k) * binomial(k+2,3) * binomial(n-1,k) * a(k) * a(n-1-k).

The programs for A386511, there is no canonical definition to state claims against.
-/

/-! ## A386511.P17248842270751114875

`A123242(A084858(n))`
-/

namespace A386511.P17248842270751114875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123242 (A084858 n).toNat

end

end A386511.P17248842270751114875

/-!
# A386512: a(0) = 1; a(n) = a(n-1) + Sum_{k=0..n-1} (1 + k) * binomial(k+3,4) * binomial(n-1,k) * a(k) * a(n-1-k).

The programs for A386512, there is no canonical definition to state claims against.
-/

/-! ## A386512.P1217641660757471709

`∑[A240497(∑[A116634(2*n+3)])]`
-/

namespace A386512.P1217641660757471709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116634 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240497 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386512.P1217641660757471709

/-!
# A386513: a(0) = 1; a(n) = a(n-1) + Sum_{k=0..n-1} (1 + k) * binomial(k+4,5) * binomial(n-1,k) * a(k) * a(n-1-k).

The programs for A386513, there is no canonical definition to state claims against.
-/

/-! ## A386513.P8415710653874452916

`A171435(A097627(n+1)-A000537(n))`
-/

namespace A386513.P8415710653874452916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A097627 (n + 1) - A000537 n).toNat

end

end A386513.P8415710653874452916

/-!
# A386514: Expansion of e.g.f. exp(x^2/(1-x)^3).

The programs for A386514, there is no canonical definition to state claims against.
-/

/-! ## A386514.P5054254533509702764

`A366953(n)+A008966(A076765(n))`
-/

namespace A386514.P5054254533509702764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366953 n + A008966 (A076765 n).toNat

end

end A386514.P5054254533509702764

/-! ## A386514.P7915005074316398710

`A366953(n)+A059484(A074019(n+1))`
-/

namespace A386514.P7915005074316398710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366953 n + A059484 (A074019 (n + 1)).toNat

end

end A386514.P7915005074316398710

/-!
# A386516: Least k such that k^2+1 contains exactly n distinct prime factors of the form m^2+1 or 0 if no such k exists.

The programs for A386516, there is no canonical definition to state claims against.
-/

/-! ## A386516.P14531262339179811791

`∑[∑[A103288(A052873(n))]]`
-/

namespace A386516.P14531262339179811791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103288 (A052873 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386516.P14531262339179811791

/-!
# A386517: a(n) = 60*binomial(3*n,n)/(n+2).

The programs for A386517, the canonical program `A386517.P2721402725429736476` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386517 has offset 0).

The definition of A386517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386517.P2721402725429736476

`60*A005809(n)/(n+2)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A386517

/-- `60*A005809(n)/(n+2)` -/
def P2721402725429736476.Spec : Prop :=
  ∀ n, P2721402725429736476.a n = (A386517 n : ℚ)

end A386517

/-! ## A386517.P2841771935719026194

`60*C(3*n, n)/(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386517.P2841771935719026194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (60 * Nat.choose (3 * n) n : ℚ) / (n + 2 : ℚ)

end

end A386517.P2841771935719026194

namespace A386517

/-- `60*C(3*n, n)/(n+2)` -/
def P2841771935719026194.Spec : Prop :=
  ∀ n, P2841771935719026194.a n = (A386517 n : ℚ)

end A386517

/-! ## A386517.P8711766296196115286

`3*(n+1)*A361037(n)`
-/

namespace A386517.P8711766296196115286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) * A361037 n

end

end A386517.P8711766296196115286

namespace A386517

/-- `3*(n+1)*A361037(n)` -/
def P8711766296196115286.Spec : Prop :=
  ∀ n, P8711766296196115286.a n = A386517 n

end A386517

/-!
# A386519: Index of the smallest prime p such that the number of digits L in the repeating decimal period of 1/p equals the n-th prime.

The programs for A386519, there is no canonical definition to state claims against.
-/

/-! ## A386519.P3292712982289392920

`A338792(A000040(n+1))`
-/

namespace A386519.P3292712982289392920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338792 (A000040 (n + 1)).toNat

end

end A386519.P3292712982289392920

/-! ## A386519.P13167504217093531330

`A338792(record[A346704(2*(n+2))])`
-/

namespace A386519.P13167504217093531330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346704 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338792 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A386519.P13167504217093531330

/-!
# A386521: Integers w such that the Diophantine equation x^2 + y^3 + z^4 = w^5 with GCD(x,y,z)=1 has no positive integer solutions.

The programs for A386521, there is no canonical definition to state claims against.
-/

/-! ## A386521.P4653811373710583430

`eq[1, A214028(A386377(n+1)+1)]+1`
-/

namespace A386521.P4653811373710583430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214028 (A386377 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A386521.P4653811373710583430

/-!
# A386524: a(n+1) is the smallest product of two or more primes which sum to a(n), starting from a(1) = 5.

The programs for A386524, there is no canonical definition to state claims against.
-/

/-! ## A386524.P8525635826748301086

`A288814(a(n-1))` with `a(0)=5`
-/

namespace A386524.P8525635826748301086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A288814 (a (n - 1)).toNat

end

end A386524.P8525635826748301086

/-! ## A386524.P9377321258555592931

`A056240(a(n-1))` with `a(0)=5, a(1)=6`
-/

namespace A386524.P9377321258555592931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 6] fun n a =>
  A056240 (a (n - 1)).toNat

end

end A386524.P9377321258555592931

/-! ## A386524.P6531295923570870226

`A001414(A318387(n+1))`
-/

namespace A386524.P6531295923570870226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A318387 (n + 1)).toNat

end

end A386524.P6531295923570870226

/-! ## A386524.P5176284834472603888

`A081758(A318387(n+2))`
-/

namespace A386524.P5176284834472603888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081758 (A318387 (n + 2)).toNat

end

end A386524.P5176284834472603888

/-!
# A386525: a(n) is the least k such that at least n terms of A063655 starting from index k are strictly decreasing.

The programs for A386525, there is no canonical definition to state claims against.
-/

/-! ## A386525.P6673211346442643688

`A350943(a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A386525.P6673211346442643688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  A350943 (a (n - 1)).toNat

end

end A386525.P6673211346442643688

/-!
# A386529: Primes which remain prime after replacing 6's with 0's and 0's with 6's in their decimal representation.

The programs for A386529, there is no canonical definition to state claims against.
-/

/-! ## A386529.P10511134960720013649

`A000040(lt[A054354(n+5), A195310(2*(n+1))])`
-/

namespace A386529.P10511134960720013649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195310 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A386529.P10511134960720013649

/-! ## A386529.P6445112453323640463

`A000040(lt[A335446(3*n+2), A000120(n)])`
-/

namespace A386529.P6445112453323640463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A386529.P6445112453323640463

/-! ## A386529.P4420695736787414913

`A000040(lt[A062977(3*n+2), A333766(3*n)])`
-/

namespace A386529.P4420695736787414913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A386529.P4420695736787414913

/-! ## A386529.P5894967585887869795

`A000040(lt[A335446(3*n+2), A333766(3*n)])`
-/

namespace A386529.P5894967585887869795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A386529.P5894967585887869795

/-! ## A386529.P17867018793325662907

`record[A000040(n+1)-A350139(3*n+5)]`
-/

namespace A386529.P17867018793325662907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A350139 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A386529.P17867018793325662907

/-!
# A386531: E.g.f. A(x) satisfies A(x) = exp(x + x^3/6 * A''(x)).

The programs for A386531, there is no canonical definition to state claims against.
-/

/-! ## A386531.P6362230892357618899

`A319778(∑[abs(2-n)])`
-/

namespace A386531.P6362230892357618899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319778 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A386531.P6362230892357618899

/-! ## A386531.P15408481845123659631

`A174050(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A386531.P15408481845123659631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A174050 (a (n - 1)).toNat

end

end A386531.P15408481845123659631

/-!
# A386532: E.g.f. A(x) satisfies A(x) = exp(x + x^4/24 * A'''(x)).

The programs for A386532, there is no canonical definition to state claims against.
-/

/-! ## A386532.P6692262712466109072

`A237513(A106640(n))`
-/

namespace A386532.P6692262712466109072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237513 (A106640 n).toNat

end

end A386532.P6692262712466109072

/-! ## A386532.P4456382320524803608

`A325707(A291532(n+1))`
-/

namespace A386532.P4456382320524803608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325707 (A291532 (n + 1)).toNat

end

end A386532.P4456382320524803608

/-! ## A386532.P16692942959444968372

`A380392(A366095(n+1))`
-/

namespace A386532.P16692942959444968372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380392 (A366095 (n + 1)).toNat

end

end A386532.P16692942959444968372

/-!
# A386534: E.g.f. A(x) satisfies A(x) = exp(x * A(x) + x^5/120 * A''''(x)).

The programs for A386534, there is no canonical definition to state claims against.
-/

/-! ## A386534.P15115597198325010275

`A084591(A002426(n))-A030179(n)`
-/

namespace A386534.P15115597198325010275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084591 (A002426 n).toNat - A030179 n

end

end A386534.P15115597198325010275

/-! ## A386534.P6875036258865543632

`A218827(n+1)-A338236(A374745(n+3))`
-/

namespace A386534.P6875036258865543632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218827 (n + 1) - A338236 (A374745 (n + 3)).toNat

end

end A386534.P6875036258865543632

/-!
# A386535: Number of independent vertex sets in the n-Lindgren-Sousselier graph.

The programs for A386535, the canonical program `A386535.P16161535181411716812` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386535 has offset 0).

The definition of A386535 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386535.P16161535181411716812

`ogf((7-71x-11x^2+21x^3+14x^4)/(1-21x+84x^2+87x^3+13x^4-4x^5))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386535

/-- `ogf((7-71x-11x^2+21x^3+14x^4)/(1-21x+84x^2+87x^3+13x^4-4x^5))` -/
def P16161535181411716812.Spec : Prop :=
  ∀ n, P16161535181411716812.a n = A386535 n

theorem P16161535181411716812.correct : P16161535181411716812.Spec := by
  intro n
  simp only [A386535]

end A386535

/-!
# A386536: Exponent of the highest power of 2 dividing the n-th number that is cubefree but not squarefree.

The programs for A386536, the canonical program `A386536.P5039393821723974418` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386536 has offset 1).

The definition of A386536 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067259, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A386536.P5039393821723974418

`A007814(A067259(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A386536

/-- `A007814(A067259(n+1))` -/
def P5039393821723974418.Spec : Prop :=
  ∀ n, P5039393821723974418.a n = A386536 (n + 1)

theorem P5039393821723974418.correct : P5039393821723974418.Spec := by
  intro n
  simp only [A386536, Nat.add_sub_cancel]

end A386536

/-! ## A386536.P16217136733393782285

`val(A067259(n+1), 2)`
-/

namespace A386536.P16217136733393782285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A067259 (n + 1)).toNat 2

end

end A386536.P16217136733393782285

namespace A386536

/-- `val(A067259(n+1), 2)` -/
def P16217136733393782285.Spec : Prop :=
  ∀ n, (P16217136733393782285.a n : ℤ) = A386536 (n + 1)

end A386536

/-! ## A386536.P3383453999214363441

`val(eq[2, A051903(n+1)]+1, 2)`
-/

namespace A386536.P3383453999214363441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) 2

end

end A386536.P3383453999214363441

namespace A386536

/-- `val(eq[2, A051903(n+1)]+1, 2)` -/
def P3383453999214363441.Spec : Prop :=
  ∀ n, (P3383453999214363441.a n : ℤ) = A386536 (n + 1)

end A386536

/-! ## A386536.P4148038351704607529

`A147648(A067259(n+1)+A000007(n+2))`
-/

namespace A386536.P4148038351704607529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147648 (A067259 (n + 1) + A000007 (n + 2)).toNat

end

end A386536.P4148038351704607529

namespace A386536

/-- `A147648(A067259(n+1)+A000007(n+2))` -/
def P4148038351704607529.Spec : Prop :=
  ∀ n, P4148038351704607529.a n = A386536 (n + 1)

end A386536

/-! ## A386536.P9719413024898224056

`A001511(A067259(n+1))-A001511(2*n+5)`
-/

namespace A386536.P9719413024898224056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A067259 (n + 1)).toNat - A001511 (2 * n + 5)

end

end A386536.P9719413024898224056

namespace A386536

/-- `A001511(A067259(n+1))-A001511(2*n+5)` -/
def P9719413024898224056.Spec : Prop :=
  ∀ n, P9719413024898224056.a n = A386536 (n + 1)

end A386536

/-! ## A386536.P16966813326062069469

`A158409(3*n+1)%A001511(A067259(n+1))`
-/

namespace A386536.P16966813326062069469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158409 (3 * n + 1)) (A001511 (A067259 (n + 1)).toNat)

end

end A386536.P16966813326062069469

namespace A386536

/-- `A158409(3*n+1)%A001511(A067259(n+1))` -/
def P16966813326062069469.Spec : Prop :=
  ∀ n, P16966813326062069469.a n = A386536 (n + 1)

end A386536

/-! ## A386536.P7671811751364477968

`A147648(A000040(n+1)*A067259(n+1))`
-/

namespace A386536.P7671811751364477968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147648 (A000040 (n + 1) * A067259 (n + 1)).toNat

end

end A386536.P7671811751364477968

namespace A386536

/-- `A147648(A000040(n+1)*A067259(n+1))` -/
def P7671811751364477968.Spec : Prop :=
  ∀ n, P7671811751364477968.a n = A386536 (n + 1)

end A386536

/-!
# A386537: Exponent of the highest power of 2 dividing the n-th number whose prime factorization exponents are all powers of 2 (A138302).

The programs for A386537, the canonical program `A386537.P3580917112878141729` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386537 has offset 1).

The definition of A386537 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138302, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A386537.P3580917112878141729

`A007814(A138302(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A386537

/-- `A007814(A138302(n+1))` -/
def P3580917112878141729.Spec : Prop :=
  ∀ n, P3580917112878141729.a n = A386537 (n + 1)

theorem P3580917112878141729.correct : P3580917112878141729.Spec := by
  intro n
  simp only [A386537, Nat.add_sub_cancel]

end A386537

/-! ## A386537.P14727264445905401175

`val(A138302(n+1), 2)`
-/

namespace A386537.P14727264445905401175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A138302 (n + 1)).toNat 2

end

end A386537.P14727264445905401175

namespace A386537

/-- `val(A138302(n+1), 2)` -/
def P14727264445905401175.Spec : Prop :=
  ∀ n, (P14727264445905401175.a n : ℤ) = A386537 (n + 1)

end A386537

/-! ## A386537.P3300976947811983546

`val(record[A367168(n+1)], 2)`
-/

namespace A386537.P3300976947811983546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367168 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A386537.P3300976947811983546

namespace A386537

/-- `val(record[A367168(n+1)], 2)` -/
def P3300976947811983546.Spec : Prop :=
  ∀ n, (P3300976947811983546.a n : ℤ) = A386537 (n + 1)

end A386537

/-! ## A386537.P18081760105980202551

`A007814(record[A270418(n+1)])`
-/

namespace A386537.P18081760105980202551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A386537.P18081760105980202551

namespace A386537

/-- `A007814(record[A270418(n+1)])` -/
def P18081760105980202551.Spec : Prop :=
  ∀ n, P18081760105980202551.a n = A386537 (n + 1)

end A386537

/-! ## A386537.P1843077974747737898

`A007814(record[A367168(n+1)])`
-/

namespace A386537.P1843077974747737898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A386537.P1843077974747737898

namespace A386537

/-- `A007814(record[A367168(n+1)])` -/
def P1843077974747737898.Spec : Prop :=
  ∀ n, P1843077974747737898.a n = A386537 (n + 1)

end A386537

/-! ## A386537.P17591650739383388176

`A007814(record[(n+1)/A368540(n+1)])`
-/

namespace A386537.P17591650739383388176
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A368540 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A386537.P17591650739383388176

namespace A386537

/-- `A007814(record[(n+1)/A368540(n+1)])` -/
def P17591650739383388176.Spec : Prop :=
  ∀ n, P17591650739383388176.a n = A386537 (n + 1)

end A386537

/-! ## A386537.P8224354792726418559

`A001511(A138302(n+1))-A001511(2*n+5)`
-/

namespace A386537.P8224354792726418559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A138302 (n + 1)).toNat - A001511 (2 * n + 5)

end

end A386537.P8224354792726418559

namespace A386537

/-- `A001511(A138302(n+1))-A001511(2*n+5)` -/
def P8224354792726418559.Spec : Prop :=
  ∀ n, P8224354792726418559.a n = A386537 (n + 1)

end A386537

/-! ## A386537.P5288201293476222228

`val(record[A138302(A141256(n))], 2)`
-/

namespace A386537.P5288201293476222228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (A141256 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A386537.P5288201293476222228

namespace A386537

/-- `val(record[A138302(A141256(n))], 2)` -/
def P5288201293476222228.Spec : Prop :=
  ∀ n, (P5288201293476222228.a n : ℤ) = A386537 (n + 1)

end A386537

/-! ## A386537.P5898435343688683955

`A235127(A138302(n+1)^2)`
-/

namespace A386537.P5898435343688683955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A138302 (n + 1) ^ 2).toNat

end

end A386537.P5898435343688683955

namespace A386537

/-- `A235127(A138302(n+1)^2)` -/
def P5898435343688683955.Spec : Prop :=
  ∀ n, P5898435343688683955.a n = A386537 (n + 1)

end A386537

/-!
# A386538: a(n) is the maximum possible area of a polygon within a circle of radius n, where both the center and the vertices lie on points of a unit square grid.

The programs for A386538, there is no canonical definition to state claims against.
-/

/-! ## A386538.P13988204391065128445

`A124780(A038547(n+1))*A357575(n)`
-/

namespace A386538.P13988204391065128445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124780 (A038547 (n + 1)).toNat * A357575 n

end

end A386538.P13988204391065128445

/-! ## A386538.P9668863579501368339

`A237271(A128352(n+1))*A357575(n)`
-/

namespace A386538.P9668863579501368339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A128352 (n + 1)).toNat * A357575 n

end

end A386538.P9668863579501368339

/-! ## A386538.P11610669788628335680

`A357575(A099146(n+1))+A357575(n)`
-/

namespace A386538.P11610669788628335680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357575 (A099146 (n + 1)).toNat + A357575 n

end

end A386538.P11610669788628335680

/-! ## A386538.P5464845708412064061

`A124781(A038547(n+3))*A357575(n)`
-/

namespace A386538.P5464845708412064061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124781 (A038547 (n + 3)).toNat * A357575 n

end

end A386538.P5464845708412064061

/-!
# A386540: Primes p such that 2p - 1, 3p - 2, (p + 1)/2, and (p + 2)/3 are also prime.

The programs for A386540, there is no canonical definition to state claims against.
-/

/-! ## A386540.P2545173645541174072

`∩[A036570(n+1), A174734(n+1)]`
-/

namespace A386540.P2545173645541174072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386540.P2545173645541174072

/-!
# A386541: Lander and Parkin's 1966 counterexample to Euler's sum of powers conjecture: integers a, b, c, d and e, all > 1, such that a^k + b^k + c^k + d^k = e^k, with k = 5.

The programs for A386541, there is no canonical definition to state claims against.
-/

/-! ## A386541.P268814263790059272

`A364347(n+1)+A199593(A127662(n+1))`
-/

namespace A386541.P268814263790059272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364347 (n + 1) + A199593 (A127662 (n + 1)).toNat

end

end A386541.P268814263790059272

/-!
# A386542: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(3*n+2*k,k).

The programs for A386542, the canonical program `A386542.P15766864101444758819` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386542 has offset 0).

The definition of A386542 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)*C(3*n+2*#, #)]` (program `A386542.P15766864101444758819`, by `A386542.P15766864101444758819.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386542.P15766864101444758819

`∑{#}[n, C(n, #)*C(3*n+2*#, #)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386542

/-- `∑{#}[n, C(n, #)*C(3*n+2*#, #)]` -/
def P15766864101444758819.Spec : Prop :=
  ∀ n, (P15766864101444758819.a n : ℤ) = A386542 n

theorem P15766864101444758819.correct : P15766864101444758819.Spec := by
  intro n
  simp only [A386542]

end A386542

/-!
# A386546: Numbers k >= 1 such that k = d(k) + d(k+1) + ... + d(k+r) for some r >= 0 where d(i) is the number of divisors of i (A000005).

The programs for A386546, there is no canonical definition to state claims against.
-/

/-! ## A386546.P3230658199653344493

`A333489(3*n+4)-A127255(A002048(3*n+5))`
-/

namespace A386546.P3230658199653344493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (3 * n + 4) - A127255 (A002048 (3 * n + 5)).toNat

end

end A386546.P3230658199653344493

/-!
# A386547: a(n) is the least integer k such that 5^k begins with n!.

The programs for A386547, there is no canonical definition to state claims against.
-/

/-! ## A386547.P16329937252687704926

`A018862(n!)`
-/

namespace A386547.P16329937252687704926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018862 (Nat.factorial n)

end

end A386547.P16329937252687704926

/-! ## A386547.P10674910432847015091

`A018862(A000142(n))`
-/

namespace A386547.P10674910432847015091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018862 (A000142 n).toNat

end

end A386547.P10674910432847015091

/-! ## A386547.P7012185694442848518

`A018862(A033646(n))`
-/

namespace A386547.P7012185694442848518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018862 (A033646 n).toNat

end

end A386547.P7012185694442848518

/-! ## A386547.P8374046954556389734

`A018862(A033647(n))`
-/

namespace A386547.P8374046954556389734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018862 (A033647 n).toNat

end

end A386547.P8374046954556389734

/-!
# A386548: a(n) = [x^n] ((1 - x)/(1 - x + x^2))^n.

The programs for A386548, there is no canonical definition to state claims against.
-/

/-! ## A386548.P10903539938646103802

`A104597(A004273(n²))`
-/

namespace A386548.P10903539938646103802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104597 (A004273 (n ^ 2)).toNat

end

end A386548.P10903539938646103802

/-!
# A386549: Indices of hexagonal numbers that are one-sixth of another hexagonal number.

The programs for A386549, the canonical program `A386549.P11458680417021509837` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386549 has offset 1).

The definition of A386549 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386549.P11458680417021509837

`ogf((x-27x^2+2x^3)/(1-99x+99x^2-x^3))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386549

/-- `ogf((x-27x^2+2x^3)/(1-99x+99x^2-x^3))` -/
def P11458680417021509837.Spec : Prop :=
  ∀ n, P11458680417021509837.a n = A386549 (n + 1)

theorem P11458680417021509837.correct : P11458680417021509837.Spec := by
  intro n
  simp only [A386549, Nat.add_sub_cancel]

end A386549

/-!
# A386550: Indices of hexagonal numbers that are six times another hexagonal number.

The programs for A386550, the canonical program `A386550.P16876736337313960157` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386550 has offset 1).

The definition of A386550 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386550.P16876736337313960157

`ogf((2x-22x^2-4x^3)/(1-99x+99x^2-x^3))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386550

/-- `ogf((2x-22x^2-4x^3)/(1-99x+99x^2-x^3))` -/
def P16876736337313960157.Spec : Prop :=
  ∀ n, P16876736337313960157.a n = A386550 (n + 1)

theorem P16876736337313960157.correct : P16876736337313960157.Spec := by
  intro n
  simp only [A386550, Nat.add_sub_cancel]

end A386550

/-!
# A386551: Numbers that can terminate in 1 by successively dividing a contiguous substring of digits by 2.

The programs for A386551, there is no canonical definition to state claims against.
-/

/-! ## A386551.P18211773401429033672

`eq[1, A389140(n+1)]+1`
-/

namespace A386551.P18211773401429033672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389140 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A386551.P18211773401429033672

/-! ## A386551.P17159073694104617252

`lt[A389140(n+1), A282162(n)]+1`
-/

namespace A386551.P17159073694104617252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A386551.P17159073694104617252

/-!
# A386552: Concatenate powers of 10.

The programs for A386552, the canonical program `A386552.P15123243711025753606` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386552 has offset 0).

The definition of A386552 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386552.P15123243711025753606

`10^(n+1)*a(n-1)+10^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386552

/-- `10^(n+1)*a(n-1)+10^n` -/
def P15123243711025753606.Spec : Prop :=
  ∀ n, (P15123243711025753606.a n : ℤ) = A386552 n

theorem P15123243711025753606.correct : P15123243711025753606.Spec := by
  intro n
  simp only [A386552]

end A386552

/-! ## A386552.P15046556610250858766

`A101305(n)+10^A000096(n)`
-/

namespace A386552.P15046556610250858766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101305 n : ℚ) + (10 : ℚ) ^ (A000096 n : ℤ)

end

end A386552.P15046556610250858766

namespace A386552

/-- `A101305(n)+10^A000096(n)` -/
def P15046556610250858766.Spec : Prop :=
  ∀ n, P15046556610250858766.a n = (A386552 n : ℚ)

end A386552

/-! ## A386552.P17522115561949007576

`A182621(2^n)`
-/

namespace A386552.P17522115561949007576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182621 (2 ^ n)

end

end A386552.P17522115561949007576

namespace A386552

/-- `A182621(2^n)` -/
def P17522115561949007576.Spec : Prop :=
  ∀ n, P17522115561949007576.a n = A386552 n

end A386552

/-!
# A386553: Number of 2-colorings of an 3 X 3 X 3 grid, up to rotational symmetry, by the number of black cells.

The programs for A386553, there is no canonical definition to state claims against.
-/

/-! ## A386553.P8918612473960121489

`A349463(2*n+3)+A020908(A016129(n))`
-/

namespace A386553.P8918612473960121489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349463 (2 * n + 3) + A020908 (A016129 n).toNat

end

end A386553.P8918612473960121489

/-!
# A386559: Place a point on the integer coordinates, up to |n|, along all four axial directions on a Cartesian plane, and then join an infinite straight line between every pair of points: a(n) is the number of points where lines intersect in the resulting graph.

The programs for A386559, there is no canonical definition to state claims against.
-/

/-! ## A386559.P17168103183141636720

`A386561(n+1)-A386560(n+1)+1`
-/

namespace A386559.P17168103183141636720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386561 (n + 1) - A386560 (n + 1) + 1

end

end A386559.P17168103183141636720

/-!
# A386560: Place a point on the integer coordinates, up to |n|, along all four axial directions on a Cartesian plane, and then join an infinite straight line between every pair of points: a(n) is the number of finite regions created in the resulting graph.

The programs for A386560, there is no canonical definition to state claims against.
-/

/-! ## A386560.P13347095063239926062

`A386561(n+1)-A386559(n+1)+1`
-/

namespace A386560.P13347095063239926062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386561 (n + 1) - A386559 (n + 1) + 1

end

end A386560.P13347095063239926062

/-!
# A386561: Place a point on the integer coordinates, up to |n|, along all four axial directions on a Cartesian plane, and then join an infinite straight line between every pair of points: a(n) is the number of finite edges created in the resulting graph.

The programs for A386561, there is no canonical definition to state claims against.
-/

/-! ## A386561.P14109218610046773906

`A386559(n+1)+A386560(n+1)-1`
-/

namespace A386561.P14109218610046773906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386559 (n + 1) + A386560 (n + 1) - 1

end

end A386561.P14109218610046773906

/-!
# A386565: a(n) = Sum_{k=0..n-1} binomial(4*k-1,k) * binomial(4*n-4*k,n-k-1).

The programs for A386565, the canonical program `A386565.P14510562153424190105` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386565 has offset 0).

The definition of A386565 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386565.P14510562153424190105

`∑{#}[n-1, 4^(n-#-1)*C(3*n+#, #)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386565

/-- `∑{#}[n-1, 4^(n-#-1)*C(3*n+#, #)]` -/
def P14510562153424190105.Spec : Prop :=
  ∀ n, P14510562153424190105.a n = (A386565 n : ℚ)

end A386565

/-!
# A386566: a(n) = Sum_{k=0..n-1} binomial(5*k-1,k) * binomial(5*n-5*k,n-k-1).

The programs for A386566, the canonical program `A386566.P16319725667987147779` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386566 has offset 0).

The definition of A386566 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386566.P16319725667987147779

`∑{#}[n-1, 4^(n-#-1)*C(5*n, #)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386566

/-- `∑{#}[n-1, 4^(n-#-1)*C(5*n, #)]` -/
def P16319725667987147779.Spec : Prop :=
  ∀ n, P16319725667987147779.a n = (A386566 n : ℚ)

end A386566

/-!
# A386567: a(n) = Sum_{k=0..n-1} binomial(6*k-1,k) * binomial(6*n-6*k,n-k-1).

The programs for A386567, the canonical program `A386567.P2234141010994391740` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386567 has offset 0).

The definition of A386567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386567.P2234141010994391740

`∑{#}[n-1, 5^(n-#-1)*C(6*n, #)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386567

/-- `∑{#}[n-1, 5^(n-#-1)*C(6*n, #)]` -/
def P2234141010994391740.Spec : Prop :=
  ∀ n, P2234141010994391740.a n = (A386567 n : ℚ)

end A386567

/-!
# A386568: The number of binary self numbers not exceeding 10^n.

The programs for A386568, there is no canonical definition to state claims against.
-/

/-! ## A386568.P9834138531771453740

`A370620(n)-A370592(A275554(n))`
-/

namespace A386568.P9834138531771453740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370620 n - A370592 (A275554 n).toNat

end

end A386568.P9834138531771453740

/-!
# A386569: The number of binary self numbers not exceeding 2^n.

The programs for A386569, there is no canonical definition to state claims against.
-/

/-! ## A386569.P16822238720041859231

`A024417(A088357(n+1))`
-/

namespace A386569.P16822238720041859231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A088357 (n + 1)).toNat

end

end A386569.P16822238720041859231

/-! ## A386569.P18431380091539075253

`A051889(A240741(n))`
-/

namespace A386569.P18431380091539075253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A240741 (n + 21)).toNat

end

end A386569.P18431380091539075253

/-! ## A386569.P15795877135396675438

`A257639(A148360(n+1))`
-/

namespace A386569.P15795877135396675438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A148360 (n + 1)).toNat

end

end A386569.P15795877135396675438

/-! ## A386569.P10347712609378989128

`A247189(A216969(n+1))`
-/

namespace A386569.P10347712609378989128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247189 (A216969 (n + 1)).toNat

end

end A386569.P10347712609378989128

/-! ## A386569.P14901082548641752111

`A232746(A335342(n+2))`
-/

namespace A386569.P14901082548641752111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232746 (A335342 (n + 2)).toNat

end

end A386569.P14901082548641752111

/-!
# A386571: Numbers that are not of the form k - omega(k), where omega(k) is the number of distinct primes dividing k.

The programs for A386571, the canonical program `A386571.P6980462762357179349` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386571 has offset 1).

The definition of A386571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386571.P6980462762357179349

`comp[n-A001221(n+1)]+1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A386571

/-- `comp[n-A001221(n+1)]+1` -/
def P6980462762357179349.Spec : Prop :=
  ∀ n, (P6980462762357179349.a n : ℤ) = A386571 (n + 1)

theorem P6980462762357179349.correct : P6980462762357179349.Spec := by
  intro n
  simp only [A386571, Nat.add_sub_cancel]

end A386571

/-! ## A386571.P5949314343392878725

`eq[A057077(A248082(n+3)), A080732(n+1)]`
-/

namespace A386571.P5949314343392878725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A248082 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386571.P5949314343392878725

namespace A386571

/-- `eq[A057077(A248082(n+3)), A080732(n+1)]` -/
def P5949314343392878725.Spec : Prop :=
  ∀ n, (P5949314343392878725.a n : ℤ) = A386571 (n + 1)

end A386571

/-! ## A386571.P10840100004122082666

`lt[A223135(A138262(2*n+3)), A050320(n+1)]`
-/

namespace A386571.P10840100004122082666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 (A138262 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A386571.P10840100004122082666

namespace A386571

/-- `lt[A223135(A138262(2*n+3)), A050320(n+1)]` -/
def P10840100004122082666.Spec : Prop :=
  ∀ n, (P10840100004122082666.a n : ℤ) = A386571 (n + 1)

end A386571

/-!
# A386572: Numbers that are not of the form k - Omega(k), where Omega(k) is the number of prime factors of k counted with multiplicity.

The programs for A386572, the canonical program `A386572.P15637048353248042012` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386572 has offset 1).

The definition of A386572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386572.P15637048353248042012

`comp[n-A001222(n+1)]+1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A386572

/-- `comp[n-A001222(n+1)]+1` -/
def P15637048353248042012.Spec : Prop :=
  ∀ n, (P15637048353248042012.a n : ℤ) = A386572 (n + 1)

theorem P15637048353248042012.correct : P15637048353248042012.Spec := by
  intro n
  simp only [A386572, Nat.add_sub_cancel]

end A386572

/-!
# A386573: Sum of the squarefree balanced divisors of n.

The programs for A386573, the canonical program `A386573.P13918329885309829820` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386573 has offset 1).

The definition of A386573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386573.P13918329885309829820

`A351113(∏{p}[n+1, #])`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A386573

/-- `A351113(∏{p}[n+1, #])` -/
def P13918329885309829820.Spec : Prop :=
  ∀ n, P13918329885309829820.a n = A386573 (n + 1)

theorem P13918329885309829820.correct : P13918329885309829820.Spec := by
  intro n
  simp only [A386573, Nat.add_sub_cancel]

end A386573

/-! ## A386573.P402610940726301676

`A351113(A007947(n+1))`
-/

namespace A386573.P402610940726301676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351113 (A007947 (n + 1)).toNat

end

end A386573.P402610940726301676

namespace A386573

/-- `A351113(A007947(n+1))` -/
def P402610940726301676.Spec : Prop :=
  ∀ n, P402610940726301676.a n = A386573 (n + 1)

end A386573

/-! ## A386573.P4910502876493458080

`A351113(A318956(n+1))`
-/

namespace A386573.P4910502876493458080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351113 (A318956 (n + 1)).toNat

end

end A386573.P4910502876493458080

namespace A386573

/-- `A351113(A318956(n+1))` -/
def P4910502876493458080.Spec : Prop :=
  ∀ n, P4910502876493458080.a n = A386573 (n + 1)

end A386573

/-! ## A386573.P14480726947646715838

`A000203(gcd(∏{p}[n+1, #], A134341(3*n+5)))`
-/

namespace A386573.P14480726947646715838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A134341 (3 * n + 5)))

end

end A386573.P14480726947646715838

namespace A386573

/-- `A000203(gcd(∏{p}[n+1, #], A134341(3*n+5)))` -/
def P14480726947646715838.Spec : Prop :=
  ∀ n, P14480726947646715838.a n = A386573 (n + 1)

end A386573

/-! ## A386573.P2673049589225457826

`gcd(A040030(A106678(n)), A092936(n+1))`
-/

namespace A386573.P2673049589225457826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040030 (A106678 n).toNat) (A092936 (n + 1))

end

end A386573.P2673049589225457826

namespace A386573

/-- `gcd(A040030(A106678(n)), A092936(n+1))` -/
def P2673049589225457826.Spec : Prop :=
  ∀ n, (P2673049589225457826.a n : ℤ) = A386573 (n + 1)

end A386573

/-!
# A386574: Number of squarefree balanced divisors of n.

The programs for A386574, the canonical program `A386574.P1108007266045445128` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386574 has offset 1).

The definition of A386574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386574.P1108007266045445128

`A351112(∏{p}[n+1, #])`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A386574

/-- `A351112(∏{p}[n+1, #])` -/
def P1108007266045445128.Spec : Prop :=
  ∀ n, P1108007266045445128.a n = A386574 (n + 1)

theorem P1108007266045445128.correct : P1108007266045445128.Spec := by
  intro n
  simp only [A386574, Nat.add_sub_cancel]

end A386574

/-! ## A386574.P5195275495379616094

`A351112(A007947(n+1))`
-/

namespace A386574.P5195275495379616094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351112 (A007947 (n + 1)).toNat

end

end A386574.P5195275495379616094

namespace A386574

/-- `A351112(A007947(n+1))` -/
def P5195275495379616094.Spec : Prop :=
  ∀ n, P5195275495379616094.a n = A386574 (n + 1)

end A386574

/-! ## A386574.P13661623830183983223

`∑{d}[A007947(n+1), A351114(#)]`
-/

namespace A386574.P13661623830183983223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A351114 d

end

end A386574.P13661623830183983223

namespace A386574

/-- `∑{d}[A007947(n+1), A351114(#)]` -/
def P13661623830183983223.Spec : Prop :=
  ∀ n, P13661623830183983223.a n = A386574 (n + 1)

end A386574

/-! ## A386574.P5822898965268316022

`A351112(A318956(n+1))`
-/

namespace A386574.P5822898965268316022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351112 (A318956 (n + 1)).toNat

end

end A386574.P5822898965268316022

namespace A386574

/-- `A351112(A318956(n+1))` -/
def P5822898965268316022.Spec : Prop :=
  ∀ n, P5822898965268316022.a n = A386574 (n + 1)

end A386574

/-! ## A386574.P11992112856640968352

`A327704(A351112(n+1)%A096818(n+1))`
-/

namespace A386574.P11992112856640968352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327704 (Int.tmod (A351112 (n + 1)) (A096818 (n + 1))).toNat

end

end A386574.P11992112856640968352

namespace A386574

/-- `A327704(A351112(n+1)%A096818(n+1))` -/
def P11992112856640968352.Spec : Prop :=
  ∀ n, P11992112856640968352.a n = A386574 (n + 1)

end A386574

/-!
# A386575: Number of distinct separable and pairwise disjoint sets of strict integer partitions, one of each exponent in the prime factorization of n.

The programs for A386575, there is no canonical definition to state claims against.
-/

/-! ## A386575.P16858510171295021734

`A088151(A076413(n+1))`
-/

namespace A386575.P16858510171295021734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088151 (A076413 (n + 1)).toNat

end

end A386575.P16858510171295021734

/-! ## A386575.P11053146594456127736

`A344612(A305193(n+1)*A322452(n+1))`
-/

namespace A386575.P11053146594456127736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344612 (A305193 (n + 1) * A322452 (n + 1)).toNat

end

end A386575.P11053146594456127736

/-! ## A386575.P1818716975727557080

`A211666(n+5)-A211666(A327499(n+1))`
-/

namespace A386575.P1818716975727557080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (n + 5) - A211666 (A327499 (n + 1)).toNat

end

end A386575.P1818716975727557080

/-! ## A386575.P14531265659141487178

`A033886(A123322(n+1)%A181819(n+1))`
-/

namespace A386575.P14531265659141487178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033886 (Int.tmod (A123322 (n + 1)) (A181819 (n + 1))).toNat

end

end A386575.P14531265659141487178

/-! ## A386575.P1204432838873933199

`C(A045778(A045778(n+1)), A351944(n+1))`
-/

namespace A386575.P1204432838873933199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A045778 (A045778 (n + 1)).toNat).toNat (A351944 (n + 1)).toNat

end

end A386575.P1204432838873933199

/-! ## A386575.P945986352077198749

`A351564(n+1)+A033301(A384225(2*(n+1)))`
-/

namespace A386575.P945986352077198749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351564 (n + 1) + A033301 (A384225 (2 * (n + 1))).toNat

end

end A386575.P945986352077198749

/-! ## A386575.P17645611085980209878

`A293449(A181819(n+1)²)*A324837(A324837(n+1))`
-/

namespace A386575.P17645611085980209878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293449 (A181819 (n + 1) ^ 2).toNat * A324837 (A324837 (n + 1)).toNat

end

end A386575.P17645611085980209878

/-! ## A386575.P14784773672371285389

`A307430(A181819(n+1)^3)`
-/

namespace A386575.P14784773672371285389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307430 (A181819 (n + 1) ^ 3).toNat

end

end A386575.P14784773672371285389

/-! ## A386575.P2541827674027209472

`A351564(n+1)+A000007(A160239(n))`
-/

namespace A386575.P2541827674027209472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351564 (n + 1) + A000007 (A160239 n).toNat

end

end A386575.P2541827674027209472

/-! ## A386575.P519942413884909367

`C(A054977(A354598(n+8)), A327500(n+1))`
-/

namespace A386575.P519942413884909367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A054977 (A354598 (n + 8)).toNat).toNat (A327500 (n + 1)).toNat

end

end A386575.P519942413884909367

/-!
# A386577: Irregular triangle read by rows where T(n,k) is the number of permutations of the multiset of prime factors of n with k adjacent equal terms.

The programs for A386577, there is no canonical definition to state claims against.
-/

/-! ## A386577.P10790122226773913482

`and(A326516(n+1), A356316(A036039(n+2)))`
-/

namespace A386577.P10790122226773913482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A326516 (n + 1)) (A356316 (A036039 (n + 2)).toNat)

end

end A386577.P10790122226773913482

/-! ## A386577.P9500740949847414611

`A124762(A124773(2*n+1)+20)`
-/

namespace A386577.P9500740949847414611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A124773 (2 * n + 1) + 20).toNat

end

end A386577.P9500740949847414611

/-! ## A386577.P18141501519766831611

`A063014(n)-A112765(A384390(n+5))`
-/

namespace A386577.P18141501519766831611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 n - A112765 (A384390 (n + 5)).toNat

end

end A386577.P18141501519766831611

/-! ## A386577.P1592661715009053257

`A240668(A331593(n+1)^A023416(n))`
-/

namespace A386577.P1592661715009053257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240668 (SequenceMachineLib.roundAway ((A331593 (n + 1) : ℚ) ^ (A023416 n : ℤ))).toNat

end

end A386577.P1592661715009053257

/-! ## A386577.P5617102194109061780

`A030351(A299701(2*n+1)^A359400(n))`
-/

namespace A386577.P5617102194109061780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030351 (SequenceMachineLib.roundAway ((A299701 (2 * n + 1) : ℚ) ^ (A359400 n : ℤ))).toNat

end

end A386577.P5617102194109061780

/-!
# A386580: Number of normal multisets of size n having a permutation with all distinct run lengths.

The programs for A386580, there is no canonical definition to state claims against.
-/

/-! ## A386580.P7354364334875288411

`A011782(n)-A386581(n)`
-/

namespace A386580.P7354364334875288411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A386581 n

end

end A386580.P7354364334875288411

/-! ## A386580.P3077174960602314006

`A009998(A000124(n))-A386581(n)`
-/

namespace A386580.P3077174960602314006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 (A000124 n).toNat - A386581 n

end

end A386580.P3077174960602314006

/-! ## A386580.P17564291811103146245

`A000010(2^n)-A386581(n)`
-/

namespace A386580.P17564291811103146245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 ^ n) - A386581 n

end

end A386580.P17564291811103146245

/-! ## A386580.P7640611843701498375

`A026741(2^n)-A386581(n)`
-/

namespace A386580.P7640611843701498375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 ^ n) - A386581 n

end

end A386580.P7640611843701498375

/-! ## A386580.P8116883661777361743

`A111701(A000079(n))-A386581(n)`
-/

namespace A386580.P8116883661777361743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111701 (A000079 n).toNat - A386581 n

end

end A386580.P8116883661777361743

/-!
# A386581: Number of normal multisets of size n with no permutation having all distinct run lengths.

The programs for A386581, there is no canonical definition to state claims against.
-/

/-! ## A386581.P323345502040464191

`ceil(2^(n-1))-A386580(n)`
-/

namespace A386581.P323345502040464191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A386580 n

end

end A386581.P323345502040464191

/-! ## A386581.P12915812409513255103

`A261982(n)-A271075(A005177(n))`
-/

namespace A386581.P12915812409513255103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261982 n - A271075 (A005177 n).toNat

end

end A386581.P12915812409513255103

/-! ## A386581.P16025833693529418344

`A261982(n)-A079978(A289616(n))`
-/

namespace A386581.P16025833693529418344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261982 n - A079978 (A289616 n).toNat

end

end A386581.P16025833693529418344

/-!
# A386582: Number of distinct inseparable and pairwise disjoint sets of strict integer partitions, one of each exponent in the prime factorization of n.

The programs for A386582, there is no canonical definition to state claims against.
-/

/-! ## A386582.P17278983957849918039

`round(C(round(n*∏{e}[n+1, #/n]), 2)/6)`
-/

namespace A386582.P17278983957849918039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (SequenceMachineLib.roundAway ((n : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) / (n : ℚ)))).toNat 2 : ℚ) / 6)

end

end A386582.P17278983957849918039

/-! ## A386582.P5216380659910592400

`floor(A326515(n+1)/3)`
-/

namespace A386582.P5216380659910592400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A326515 (n + 1) : ℚ) / 3⌋

end

end A386582.P5216380659910592400

/-! ## A386582.P16703113277974302214

`floor(A369031(n+1)/4)`
-/

namespace A386582.P16703113277974302214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A369031 (n + 1) : ℚ) / 4⌋

end

end A386582.P16703113277974302214

/-! ## A386582.P5972156738771347787

`floor(log(A306694(n+1))²)`
-/

namespace A386582.P5972156738771347787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A306694 (n + 1) : ℝ) ^ 2⌋

end

end A386582.P5972156738771347787

/-! ## A386582.P12076748602775448837

`floor(A382525(n+1)/log(3))`
-/

namespace A386582.P12076748602775448837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A382525 (n + 1) : ℝ) / Real.log (3 : ℝ)⌋

end

end A386582.P12076748602775448837

/-! ## A386582.P16742140288737752749

`floor(A007305(n)/∏{p}[n+1, #+1])`
-/

namespace A386582.P16742140288737752749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007305 n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℚ)⌋

end

end A386582.P16742140288737752749

/-! ## A386582.P1430218442008822037

`floor(A326031(n)/∏{p}[n+1, #+1])`
-/

namespace A386582.P1430218442008822037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A326031 n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℚ)⌋

end

end A386582.P1430218442008822037

/-! ## A386582.P18084022672533206777

`A069905(round(n*∏{e}[n+1, #/n]))`
-/

namespace A386582.P18084022672533206777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (SequenceMachineLib.roundAway ((n : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) / (n : ℚ)))).toNat

end

end A386582.P18084022672533206777

/-! ## A386582.P17628038774559804191

`A325106(round(n*∏{e}[n+1, #/n]))`
-/

namespace A386582.P17628038774559804191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325106 (SequenceMachineLib.roundAway ((n : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) / (n : ℚ)))).toNat

end

end A386582.P17628038774559804191

/-! ## A386582.P5361275512527610670

`A365659(round(n*∏{e}[n+1, #/n]))`
-/

namespace A386582.P5361275512527610670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365659 (SequenceMachineLib.roundAway ((n : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) / (n : ℚ)))).toNat

end

end A386582.P5361275512527610670

/-!
# A386583: Triangle read by rows where T(n,k) is the number of length k integer partitions of n having a permutation without any adjacent equal parts (separable).

The programs for A386583, there is no canonical definition to state claims against.
-/

/-! ## A386583.P7526029003131817976

`A072233(n)-A386584(n)`
-/

namespace A386583.P7526029003131817976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n - A386584 n

end

end A386583.P7526029003131817976

/-! ## A386583.P11055509318235966323

`A072233(n)-A266754(A290569(n))`
-/

namespace A386583.P11055509318235966323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n - A266754 (A290569 n).toNat

end

end A386583.P11055509318235966323

/-! ## A386583.P13311183014447033259

`A351014(A226444(n)*A333755(n))`
-/

namespace A386583.P13311183014447033259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A226444 n * A333755 n).toNat

end

end A386583.P13311183014447033259

/-! ## A386583.P10524896501888679711

`A351014(A329312(n+1)*A333755(n))`
-/

namespace A386583.P10524896501888679711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A329312 (n + 1) * A333755 n).toNat

end

end A386583.P10524896501888679711

/-! ## A386583.P12235380942693792675

`A334029(A329312(n+1)*A353856(n))`
-/

namespace A386583.P12235380942693792675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334029 (A329312 (n + 1) * A353856 n).toNat

end

end A386583.P12235380942693792675

/-!
# A386584: Triangle read by rows where T(n,k) is the number of length k>=0 integer partitions of n having no permutation without any adjacent equal parts (inseparable).

The programs for A386584, there is no canonical definition to state claims against.
-/

/-! ## A386584.P952844721055957113

`A072233(n)-A386583(n)`
-/

namespace A386584.P952844721055957113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n - A386583 n

end

end A386584.P952844721055957113

/-! ## A386584.P8533112476402996167

`A266754(A290569(n))`
-/

namespace A386584.P8533112476402996167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266754 (A290569 n).toNat

end

end A386584.P8533112476402996167

/-! ## A386584.P11115231372160949796

`A293164(A345453(n+1))`
-/

namespace A386584.P11115231372160949796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293164 (A345453 (n + 1)).toNat

end

end A386584.P11115231372160949796

/-! ## A386584.P4953791339204097100

`A392742(A272679(n)*A392732(n+1))`
-/

namespace A386584.P4953791339204097100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392742 (A272679 n * A392732 (n + 1)).toNat

end

end A386584.P4953791339204097100

/-! ## A386584.P12506615437642243016

`A051903(gcd(A107430(n), A329580(3*n+4)))`
-/

namespace A386584.P12506615437642243016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (Int.gcd (A107430 n) (A329580 (3 * n + 4)))

end

end A386584.P12506615437642243016

/-!
# A386585: Triangle read by rows where T(n,k) is the number of integer partitions y of n into k = 0..n parts such that any multiset whose multiplicities are the parts of y is separable.

The programs for A386585, there is no canonical definition to state claims against.
-/

/-! ## A386585.P15331892457405824939

`A072233(n)-A386586(n)`
-/

namespace A386585.P15331892457405824939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n - A386586 n

end

end A386585.P15331892457405824939

/-! ## A386585.P12939890446430359171

`A343639(A182797(n+1))`
-/

namespace A386585.P12939890446430359171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343639 (A182797 (n + 1)).toNat

end

end A386585.P12939890446430359171

/-! ## A386585.P7730044250445313634

`A353849(A238414(n+1)²)`
-/

namespace A386585.P7730044250445313634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (A238414 (n + 1) ^ 2).toNat

end

end A386585.P7730044250445313634

/-! ## A386585.P16959941152702291318

`A257089(A386296(n+1)²+1)`
-/

namespace A386585.P16959941152702291318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257089 (A386296 (n + 1) ^ 2 + 1).toNat

end

end A386585.P16959941152702291318

/-! ## A386585.P2824549836603484485

`A001221((A386296(n+1)²+1)²)`
-/

namespace A386585.P2824549836603484485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((A386296 (n + 1) ^ 2 + 1) ^ 2).toNat

end

end A386585.P2824549836603484485

/-!
# A386586: Triangle read by rows where T(n,k) is the number of integer partitions y of n into k parts such that any multiset whose multiplicities are the parts of y is inseparable.

The programs for A386586, there is no canonical definition to state claims against.
-/

/-! ## A386586.P10096229959592491297

`A072233(n)-A386585(n)`
-/

namespace A386586.P10096229959592491297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n - A386585 n

end

end A386586.P10096229959592491297

/-! ## A386586.P17369386630824618579

`A303837(A389641(n))`
-/

namespace A386586.P17369386630824618579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303837 (A389641 n).toNat

end

end A386586.P17369386630824618579

/-! ## A386586.P3355128883331400655

`C(A184348(n+1), A246037(A355666(n)))`
-/

namespace A386586.P3355128883331400655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A184348 (n + 1)).toNat (A246037 (A355666 n).toNat).toNat

end

end A386586.P3355128883331400655

/-! ## A386586.P5487564183003567028

`A346087(A267401(n+1))`
-/

namespace A386586.P5487564183003567028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346087 (A267401 (n + 1)).toNat

end

end A386586.P5487564183003567028

/-! ## A386586.P3152943094075967281

`A124766(A337565(3*n+4)*A386636(n))`
-/

namespace A386586.P3152943094075967281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A337565 (3 * n + 4) * A386636 n).toNat

end

end A386586.P3152943094075967281

/-!
# A386588: a(n) = 2^a(n-1) mod n, with a(1) = 1.

The programs for A386588, the canonical program `A386588.P2433392601611208378` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386588 has offset 1).

The definition of A386588 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^a(n-1))%(n+1)` (program `A386588.P2433392601611208378`, by `A386588.P2433392601611208378.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386588.P2433392601611208378

`(2^a(n-1))%(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386588

/-- `(2^a(n-1))%(n+1)` -/
def P2433392601611208378.Spec : Prop :=
  ∀ n, (P2433392601611208378.a n : ℤ) = A386588 (n + 1)

theorem P2433392601611208378.correct : P2433392601611208378.Spec := by
  intro n
  simp only [A386588, Nat.add_sub_cancel]

end A386588

/-! ## A386588.P11068232531911968151

`A000079(a(n-1))%(n+1)` with `a(0)=1`
-/

namespace A386588.P11068232531911968151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A000079 (a (n - 1)).toNat) (n + 1 : ℤ)

end

end A386588.P11068232531911968151

namespace A386588

/-- `A000079(a(n-1))%(n+1)` -/
def P11068232531911968151.Spec : Prop :=
  ∀ n, P11068232531911968151.a n = A386588 (n + 1)

end A386588

/-!
# A386589: a(n) = Sum_{d|n} d^c(d), where c = A351114.

The programs for A386589, the canonical program `A386589.P14364682863583384821` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386589 has offset 1).

The definition of A386589 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351112, A351113, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A386589.P14364682863583384821

`A000005(n+1)+A351113(n+1)-A351112(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A386589

/-- `A000005(n+1)+A351113(n+1)-A351112(n+1)` -/
def P14364682863583384821.Spec : Prop :=
  ∀ n, P14364682863583384821.a n = A386589 (n + 1)

theorem P14364682863583384821.correct : P14364682863583384821.Spec := by
  intro n
  simp only [A386589, Nat.add_sub_cancel]

end A386589

/-! ## A386589.P801499903250374232

`A386591(n+1)+A351113(n+1)`
-/

namespace A386589.P801499903250374232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386591 (n + 1) + A351113 (n + 1)

end

end A386589.P801499903250374232

namespace A386589

/-- `A386591(n+1)+A351113(n+1)` -/
def P801499903250374232.Spec : Prop :=
  ∀ n, P801499903250374232.a n = A386589 (n + 1)

theorem P801499903250374232.correct : P801499903250374232.Spec := by
  intro n
  simp only [A386589, Nat.add_sub_cancel, A386589.P801499903250374232.a, A386589.P14364682863583384821.a, A000005, A000005.P16091521709108585461.a, A351112, A351112.P18121164159424966537.f1, A351112.P18121164159424966537.a, A351113, A351113.P14871538275720612314.f1, A351113.P14871538275720612314.a, A386591, A386591.P14499915022508730926.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A351114, A351114.P13024542866936842174.a, A063524, A063524.P5631347671191003537.a, A289412, A289412.P16736095440430260150.a, A000007, A000007.P6599383543502402472.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A009223, A009223.P16138447125390320102.a, A062354, A062354.P12090896162141185075.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A386589

/-! ## A386589.P8565547414777717623

`A386622(n+1)-A362707(n+1)`
-/

namespace A386589.P8565547414777717623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386622 (n + 1) - A362707 (n + 1)

end

end A386589.P8565547414777717623

namespace A386589

/-- `A386622(n+1)-A362707(n+1)` -/
def P8565547414777717623.Spec : Prop :=
  ∀ n, P8565547414777717623.a n = A386589 (n + 1)

theorem P8565547414777717623.correct : P8565547414777717623.Spec := by
  intro n
  simp only [A386589, Nat.add_sub_cancel, A386589.P8565547414777717623.a, A386589.P14364682863583384821.a, A000005, A000005.P16091521709108585461.a, A351112, A351112.P18121164159424966537.f1, A351112.P18121164159424966537.a, A351113, A351113.P14871538275720612314.f1, A351113.P14871538275720612314.a, A362707, A362707.P3299096256826437275.a, A386622, A386622.P1574536080220516373.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A351114, A351114.P13024542866936842174.a, A386591, A386591.P14499915022508730926.a, A063524, A063524.P5631347671191003537.a, A289412, A289412.P16736095440430260150.a, A000007, A000007.P6599383543502402472.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A009223, A009223.P16138447125390320102.a, A062354, A062354.P12090896162141185075.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A386589

/-! ## A386589.P6984629752198461478

`A000203(n+1)+A386591(n+1)-A386592(n+1)`
-/

namespace A386589.P6984629752198461478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A386591 (n + 1) - A386592 (n + 1))

end

end A386589.P6984629752198461478

namespace A386589

/-- `A000203(n+1)+A386591(n+1)-A386592(n+1)` -/
def P6984629752198461478.Spec : Prop :=
  ∀ n, P6984629752198461478.a n = A386589 (n + 1)

theorem P6984629752198461478.correct : P6984629752198461478.Spec := by
  intro n
  simp only [A386589, Nat.add_sub_cancel, A386589.P6984629752198461478.a, A386589.P14364682863583384821.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A351112, A351112.P18121164159424966537.f1, A351112.P18121164159424966537.a, A351113, A351113.P14871538275720612314.f1, A351113.P14871538275720612314.a, A386591, A386591.P14499915022508730926.a, A386592, A386592.P13459167421288589562.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A351114, A351114.P13024542866936842174.a, A063524, A063524.P5631347671191003537.a, A289412, A289412.P16736095440430260150.a, A000007, A000007.P6599383543502402472.a, A009223, A009223.P16138447125390320102.a, A062354, A062354.P12090896162141185075.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A386589

/-!
# A386591: Number of divisors of n that are not balanced numbers.

The programs for A386591, the canonical program `A386591.P14499915022508730926` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386591 has offset 1).

The definition of A386591 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351112, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A386591.P14499915022508730926

`A000005(n+1)-A351112(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A386591

/-- `A000005(n+1)-A351112(n+1)` -/
def P14499915022508730926.Spec : Prop :=
  ∀ n, P14499915022508730926.a n = A386591 (n + 1)

theorem P14499915022508730926.correct : P14499915022508730926.Spec := by
  intro n
  simp only [A386591, Nat.add_sub_cancel]

end A386591

/-! ## A386591.P2648624852604491139

`A386622(n+1)%(n+1)`
-/

namespace A386591.P2648624852604491139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A386622 (n + 1)) (n + 1 : ℤ)

end

end A386591.P2648624852604491139

namespace A386591

/-- `A386622(n+1)%(n+1)` -/
def P2648624852604491139.Spec : Prop :=
  ∀ n, P2648624852604491139.a n = A386591 (n + 1)

end A386591

/-! ## A386591.P1609545588272317374

`A386589(n+1)-A351113(n+1)`
-/

namespace A386591.P1609545588272317374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386589 (n + 1) - A351113 (n + 1)

end

end A386591.P1609545588272317374

namespace A386591

/-- `A386589(n+1)-A351113(n+1)` -/
def P1609545588272317374.Spec : Prop :=
  ∀ n, P1609545588272317374.a n = A386591 (n + 1)

theorem P1609545588272317374.correct : P1609545588272317374.Spec := by
  intro n
  simp only [A386591, Nat.add_sub_cancel, A386591.P1609545588272317374.a, A386591.P14499915022508730926.a, A000005, A000005.P16091521709108585461.a, A351112, A351112.P18121164159424966537.f1, A351112.P18121164159424966537.a, A351113, A351113.P14871538275720612314.f1, A351113.P14871538275720612314.a, A386589, A386589.P14364682863583384821.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A351114, A351114.P13024542866936842174.a, A063524, A063524.P5631347671191003537.a, A289412, A289412.P16736095440430260150.a, A000007, A000007.P6599383543502402472.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A009223, A009223.P16138447125390320102.a, A062354, A062354.P12090896162141185075.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A386591

/-! ## A386591.P13078798168991692728

`A057979(A191529(n))%A380340(n+1)`
-/

namespace A386591.P13078798168991692728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057979 (A191529 n).toNat) (A380340 (n + 1))

end

end A386591.P13078798168991692728

namespace A386591

/-- `A057979(A191529(n))%A380340(n+1)` -/
def P13078798168991692728.Spec : Prop :=
  ∀ n, P13078798168991692728.a n = A386591 (n + 1)

end A386591

/-! ## A386591.P18217584979553656287

`A206442(A000045(n+1)*A001055(n+1))`
-/

namespace A386591.P18217584979553656287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206442 (A000045 (n + 1) * A001055 (n + 1)).toNat

end

end A386591.P18217584979553656287

namespace A386591

/-- `A206442(A000045(n+1)*A001055(n+1))` -/
def P18217584979553656287.Spec : Prop :=
  ∀ n, P18217584979553656287.a n = A386591 (n + 1)

end A386591

/-!
# A386592: Sum of the divisors of n that are not balanced numbers.

The programs for A386592, the canonical program `A386592.P13459167421288589562` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386592 has offset 1).

The definition of A386592 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351113, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A386592.P13459167421288589562

`A000203(n+1)-A351113(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A386592

/-- `A000203(n+1)-A351113(n+1)` -/
def P13459167421288589562.Spec : Prop :=
  ∀ n, P13459167421288589562.a n = A386592 (n + 1)

theorem P13459167421288589562.correct : P13459167421288589562.Spec := by
  intro n
  simp only [A386592, Nat.add_sub_cancel]

end A386592

/-!
# A386593: Number of sub-relation-algebras of Re(n), the collection of all binary relations over {1,2,...,n}.

The programs for A386593, there is no canonical definition to state claims against.
-/

/-! ## A386593.P1137266229274556545

`or(lcm(2, n), (n+1)!)`
-/

namespace A386593.P1137266229274556545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.lcm 2 n) (Nat.factorial (n + 1))

end

end A386593.P1137266229274556545

/-!
# A386594: a(n) = Sum_{d|n} d * c(n/d), where c = A351114.

The programs for A386594, the canonical program `A386594.P15827319157028247676` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386594 has offset 1).

The definition of A386594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386594.P15827319157028247676

`∑{d}[n+1, #*A351114((n+1)/#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A386594

/-- `∑{d}[n+1, #*A351114((n+1)/#)]` -/
def P15827319157028247676.Spec : Prop :=
  ∀ n, P15827319157028247676.a n = A386594 (n + 1)

theorem P15827319157028247676.correct : P15827319157028247676.Spec := by
  intro n
  simp only [A386594, Nat.add_sub_cancel]

end A386594

/-! ## A386594.P6520221207702651080

`∑{d}[n+1, A000010(#)*A351112((n+1)/#)]`
-/

namespace A386594.P6520221207702651080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A351112 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A386594.P6520221207702651080

namespace A386594

/-- `∑{d}[n+1, A000010(#)*A351112((n+1)/#)]` -/
def P6520221207702651080.Spec : Prop :=
  ∀ n, P6520221207702651080.a n = A386594 (n + 1)

end A386594

/-!
# A386596: a(n) = Sum_{d|n} d * pi(n/d).

The programs for A386596, the canonical program `A386596.P8374123821581274991` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386596 has offset 1).

The definition of A386596 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, #*A000720((n+1)/#)]` (program `A386596.P8374123821581274991`, by `A386596.P8374123821581274991.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386596.P2721160456246764298

`∑{d}[n+1, A333699(#)]`
-/

namespace A386596.P2721160456246764298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A333699 d

end

end A386596.P2721160456246764298

namespace A386596

/-- `∑{d}[n+1, A333699(#)]` -/
def P2721160456246764298.Spec : Prop :=
  ∀ n, P2721160456246764298.a n = A386596 (n + 1)

end A386596

/-! ## A386596.P8374123821581274991

`∑{d}[n+1, #*A000720((n+1)/#)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A386596

/-- `∑{d}[n+1, #*A000720((n+1)/#)]` -/
def P8374123821581274991.Spec : Prop :=
  ∀ n, P8374123821581274991.a n = A386596 (n + 1)

theorem P8374123821581274991.correct : P8374123821581274991.Spec := by
  intro n
  simp only [A386596, Nat.add_sub_cancel]

end A386596

/-! ## A386596.P2682386049144168049

`∑{d}[n+1, A000010(#)*A062774((n+1)/#)]`
-/

namespace A386596.P2682386049144168049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A062774 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A386596.P2682386049144168049

namespace A386596

/-- `∑{d}[n+1, A000010(#)*A062774((n+1)/#)]` -/
def P2682386049144168049.Spec : Prop :=
  ∀ n, P2682386049144168049.a n = A386596 (n + 1)

end A386596

/-! ## A386596.P17616773352795547337

`∑{d}[n+1, A000203(#)*A062778((n+1)/#)]`
-/

namespace A386596.P17616773352795547337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A062778 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A386596.P17616773352795547337

namespace A386596

/-- `∑{d}[n+1, A000203(#)*A062778((n+1)/#)]` -/
def P17616773352795547337.Spec : Prop :=
  ∀ n, P17616773352795547337.a n = A386596 (n + 1)

end A386596

/-! ## A386596.P4845084311517054660

`∑{d}[n+1, #*A230980((n+1)/#)]`
-/

namespace A386596.P4845084311517054660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A230980 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A386596.P4845084311517054660

namespace A386596

/-- `∑{d}[n+1, #*A230980((n+1)/#)]` -/
def P4845084311517054660.Spec : Prop :=
  ∀ n, P4845084311517054660.a n = A386596 (n + 1)

end A386596

/-!
# A386599: Number of words covering the alphabet [n] that are irreducible with respect to C, where C is a subset of the alphabet such that all letters in C appear in weakly increasing order within the word.

The programs for A386599, there is no canonical definition to state claims against.
-/

/-! ## A386599.P4108629549627700767

`A375598(A148390(n))`
-/

namespace A386599.P4108629549627700767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375598 (A148390 n).toNat

end

end A386599.P4108629549627700767

/-! ## A386599.P13029949472648056954

`A080907(A093641(n!))`
-/

namespace A386599.P13029949472648056954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080907 (A093641 (Nat.factorial n)).toNat

end

end A386599.P13029949472648056954

