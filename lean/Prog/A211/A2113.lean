import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A211300: a(n) = number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 2, 1] as of [2, 3, 2].

The programs for A211300, there is no canonical definition to state claims against.
-/

/-! ## A211300.P9413431096531370408

`A014681(2*A355040(n+1))`
-/

namespace A211300.P9413431096531370408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A355040 (n + 1)).toNat

end

end A211300.P9413431096531370408

/-! ## A211300.P1570565826248938882

`A005843(A211291(n))-A211294(n)`
-/

namespace A211300.P1570565826248938882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A211291 n).toNat - A211294 n

end

end A211300.P1570565826248938882

/-! ## A211300.P11917302884584783276

`A005843(A211296(n))-A211288(n)`
-/

namespace A211300.P11917302884584783276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A211296 n).toNat - A211288 n

end

end A211300.P11917302884584783276

/-!
# A211301: a(n) = number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 2, 3] as of [2, 3, 1].

The programs for A211301, there is no canonical definition to state claims against.
-/

/-! ## A211301.P12961288195335675241

`or(1, A141207(a(n-1)))` with `a(0)=1`
-/

namespace A211301.P12961288195335675241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (A141207 (a (n - 1)).toNat)

end

end A211301.P12961288195335675241

/-! ## A211301.P3463094182640863680

`A008621(A151555(∑[4^n]))`
-/

namespace A211301.P3463094182640863680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A151555 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A211301.P3463094182640863680

/-! ## A211301.P6478217260386839312

`A109613(A141207(a(n-1)))` with `a(0)=1`
-/

namespace A211301.P6478217260386839312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109613 (A141207 (a (n - 1)).toNat).toNat

end

end A211301.P6478217260386839312

/-!
# A211302: Minimal number of smaller integer-sided squares that tile a p X p square, where p = n-th prime.

The programs for A211302, there is no canonical definition to state claims against.
-/

/-! ## A211302.P3870081374792389575

`A005670(p?[xor(1, n)+1])`
-/

namespace A211302.P3870081374792389575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005670 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A211302.P3870081374792389575

/-! ## A211302.P18268941548662504261

`A005670(A390240(n))`
-/

namespace A211302.P18268941548662504261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005670 (A390240 n).toNat

end

end A211302.P18268941548662504261

/-! ## A211302.P162952922203044258

`A005670(Δ[A007504(n)])`
-/

namespace A211302.P162952922203044258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005670 (f1 (n + 1) - f1 n).toNat

end

end A211302.P162952922203044258

/-! ## A211302.P15409938577290602673

`A018835(Δ[A007504(n)])`
-/

namespace A211302.P15409938577290602673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018835 (f1 (n + 1) - f1 n).toNat

end

end A211302.P15409938577290602673

/-! ## A211302.P478378632339843985

`A005670(record[A162753(n)])`
-/

namespace A211302.P478378632339843985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005670 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A211302.P478378632339843985

/-!
# A211303: a(n) = number of n-lettered words in the alphabet {1, 2, 3, 4} with as many occurrences of the substring (consecutive subword) [1, 1] as of [1, 2].

The programs for A211303, there is no canonical definition to state claims against.
-/

/-! ## A211303.P12781959987498162945

`∑[A156253(Δ[A116772(n+1)])]`
-/

namespace A211303.P12781959987498162945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116772 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211303.P12781959987498162945

/-! ## A211303.P16131924771106811195

`A063272(A054108(n+1))`
-/

namespace A211303.P16131924771106811195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063272 (A054108 (n + 1)).toNat

end

end A211303.P16131924771106811195

/-!
# A211304: a(n) = number of n-lettered words in the alphabet {1, 2, 3, 4} with as many occurrences of the substring (consecutive subword) [1, 1] as of [2, 2].

The programs for A211304, there is no canonical definition to state claims against.
-/

/-! ## A211304.P8801242742522897429

`A161576(A052936(n))`
-/

namespace A211304.P8801242742522897429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161576 (A052936 n).toNat

end

end A211304.P8801242742522897429

/-! ## A211304.P43430280778879115

`Δ[A154453(A147748(n))]`
-/

namespace A211304.P43430280778879115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154453 (A147748 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211304.P43430280778879115

/-!
# A211305: a(n) = number of n-lettered words in the alphabet {1, 2, 3, 4} with as many occurrences of the substring (consecutive subword) [1, 1] as of [2, 3].

The programs for A211305, there is no canonical definition to state claims against.
-/

/-! ## A211305.P2679089811499335760

`A126696(A326245(n)+3)+A071741(n)`
-/

namespace A211305.P2679089811499335760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126696 (A326245 n + 3).toNat + A071741 n

end

end A211305.P2679089811499335760

/-! ## A211305.P16557381451279247778

`or(A071741(n), A235051(A163210(n+1)))`
-/

namespace A211305.P16557381451279247778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A071741 n) (A235051 (A163210 (n + 1)).toNat)

end

end A211305.P16557381451279247778

/-!
# A211307: a(n) = number of n-lettered words in the alphabet {1, 2, 3, 4} with as many occurrences of the substring (consecutive subword) [1, 2] as of [2, 1].

The programs for A211307, there is no canonical definition to state claims against.
-/

/-! ## A211307.P3736609266947794912

`A194451(A253101(n))+comp[2*n+3]`
-/

namespace A211307.P3736609266947794912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194451 (A253101 n).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A211307.P3736609266947794912

/-! ## A211307.P7176236442110351645

`A171896(A273385(n))+A007814(n+1)`
-/

namespace A211307.P7176236442110351645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171896 (A273385 n).toNat + A007814 (n + 1)

end

end A211307.P7176236442110351645

/-!
# A211308: a(n) = number of n-lettered words in the alphabet {1, 2, 3, 4} with as many occurrences of the substring (consecutive subword) [1, 2] as of [2, 3].

The programs for A211308, there is no canonical definition to state claims against.
-/

/-! ## A211308.P12268869115977081540

`A217665(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A211308.P12268869115977081540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A217665 n + 3 * a (n - 1)

end

end A211308.P12268869115977081540

/-! ## A211308.P10061730819902593072

`∑[A194640(A217779(n))]`
-/

namespace A211308.P10061730819902593072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A217779 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211308.P10061730819902593072

/-!
# A211309: a(n) = number |fdw(P,(n))| of entangled P-words with s=2.

The programs for A211309, there is no canonical definition to state claims against.
-/

/-! ## A211309.P11832360776736564374

`(n+1)!*A000698(n+1)`
-/

namespace A211309.P11832360776736564374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A000698 (n + 1)

end

end A211309.P11832360776736564374

/-! ## A211309.P4747168261419649384

`record[A328923(comp[∑[n]])]`
-/

namespace A211309.P4747168261419649384
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328923 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211309.P4747168261419649384

/-! ## A211309.P15664957586610580819

`A328923(∑[n+1]+1)`
-/

namespace A211309.P15664957586610580819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328923 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A211309.P15664957586610580819

/-! ## A211309.P13469777834570667227

`(n+1)!*A127058(∑[n])`
-/

namespace A211309.P13469777834570667227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A127058 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211309.P13469777834570667227

/-!
# A211312: Square array of Delannoy numbers D(i,j) mod 3 (i >= 0, j >= 0) read by antidiagonals.

The programs for A211312, the canonical program `A211312.P9657970476724073157` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211312 has offset 0).

The definition of A211312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211312.P9657970476724073157

`A008288(n)%3`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A211312

/-- `A008288(n)%3` -/
def P9657970476724073157.Spec : Prop :=
  ∀ n, P9657970476724073157.a n = A211312 n

theorem P9657970476724073157.correct : P9657970476724073157.Spec := by
  intro n
  simp only [A211312]

end A211312

/-! ## A211312.P9094929007740665417

`A081579(n)%3`
-/

namespace A211312.P9094929007740665417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081579 n) 3

end

end A211312.P9094929007740665417

namespace A211312

/-- `A081579(n)%3` -/
def P9094929007740665417.Spec : Prop :=
  ∀ n, P9094929007740665417.a n = A211312 n

end A211312

/-! ## A211312.P6227725061309888232

`A081582(n)%3`
-/

namespace A211312.P6227725061309888232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081582 n) 3

end

end A211312.P6227725061309888232

namespace A211312

/-- `A081582(n)%3` -/
def P6227725061309888232.Spec : Prop :=
  ∀ n, P6227725061309888232.a n = A211312 n

end A211312

/-! ## A211312.P11014943879521316182

`2-A108350(n)%3`
-/

namespace A211312.P11014943879521316182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A108350 n) 3

end

end A211312.P11014943879521316182

namespace A211312

/-- `2-A108350(n)%3` -/
def P11014943879521316182.Spec : Prop :=
  ∀ n, P11014943879521316182.a n = A211312 n

end A211312

/-! ## A211312.P17998242933428913864

`A010872(∑{digits}[A081579(n), #])`
-/

namespace A211312.P17998242933428913864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A211312.P17998242933428913864

namespace A211312

/-- `A010872(∑{digits}[A081579(n), #])` -/
def P17998242933428913864.Spec : Prop :=
  ∀ n, P17998242933428913864.a n = A211312 n

end A211312

/-! ## A211312.P14416865888176485539

`A112475(comp[∑[n]])%3`
-/

namespace A211312.P14416865888176485539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112475 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 3

end

end A211312.P14416865888176485539

namespace A211312

/-- `A112475(comp[∑[n]])%3` -/
def P14416865888176485539.Spec : Prop :=
  ∀ n, P14416865888176485539.a n = A211312 n

end A211312

/-! ## A211312.P2085897278722325312

`(A101164(n)+A007318(n))%3`
-/

namespace A211312.P2085897278722325312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101164 n + A007318 n) 3

end

end A211312.P2085897278722325312

namespace A211312

/-- `(A101164(n)+A007318(n))%3` -/
def P2085897278722325312.Spec : Prop :=
  ∀ n, P2085897278722325312.a n = A211312 n

theorem P2085897278722325312.correct : P2085897278722325312.Spec := by
  intro n
  simp only [A211312, Nat.add_sub_cancel, A211312.P2085897278722325312.a, A211312.P9657970476724073157.a, A007318, A007318.P11755526479805562006.a, A008288, A008288.P3441482626856859975.a, A101164, A101164.P12326998442168415454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A211312

/-! ## A211312.P754735796046057754

`A140750(A001614(n+1))%3`
-/

namespace A211312.P754735796046057754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140750 (A001614 (n + 1)).toNat) 3

end

end A211312.P754735796046057754

namespace A211312

/-- `A140750(A001614(n+1))%3` -/
def P754735796046057754.Spec : Prop :=
  ∀ n, P754735796046057754.a n = A211312 n

end A211312

/-! ## A211312.P16470206075474294664

`A010872(A008288(n))`
-/

namespace A211312.P16470206075474294664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A008288 n).toNat

end

end A211312.P16470206075474294664

namespace A211312

/-- `A010872(A008288(n))` -/
def P16470206075474294664.Spec : Prop :=
  ∀ n, P16470206075474294664.a n = A211312 n

end A211312

/-! ## A211312.P13310608269370528645

`A270740(A047671(n+1))`
-/

namespace A211312.P13310608269370528645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270740 (A047671 (n + 1)).toNat

end

end A211312.P13310608269370528645

namespace A211312

/-- `A270740(A047671(n+1))` -/
def P13310608269370528645.Spec : Prop :=
  ∀ n, P13310608269370528645.a n = A211312 n

end A211312

/-!
# A211313: Square array of Delannoy numbers D(i,j) mod 5 (i >= 0, j >= 0) read by antidiagonals.

The programs for A211313, the canonical program `A211313.P9651674375888621207` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211313 has offset 0).

The definition of A211313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211313.P9651674375888621207

`A008288(n)%5`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A211313

/-- `A008288(n)%5` -/
def P9651674375888621207.Spec : Prop :=
  ∀ n, P9651674375888621207.a n = A211313 n

theorem P9651674375888621207.correct : P9651674375888621207.Spec := by
  intro n
  simp only [A211313]

end A211313

/-! ## A211313.P4351255323682107355

`A081581(n)%5`
-/

namespace A211313.P4351255323682107355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081581 n) 5

end

end A211313.P4351255323682107355

namespace A211313

/-- `A081581(n)%5` -/
def P4351255323682107355.Spec : Prop :=
  ∀ n, P4351255323682107355.a n = A211313 n

end A211313

/-! ## A211313.P13513576419829741541

`(2*A108350(n)-1)%5`
-/

namespace A211313.P13513576419829741541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A108350 n - 1) 5

end

end A211313.P13513576419829741541

namespace A211313

/-- `(2*A108350(n)-1)%5` -/
def P13513576419829741541.Spec : Prop :=
  ∀ n, P13513576419829741541.a n = A211313 n

end A211313

/-! ## A211313.P7597757853144908676

`A112475(comp[∑[n]])%5`
-/

namespace A211313.P7597757853144908676
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112475 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 5

end

end A211313.P7597757853144908676

namespace A211313

/-- `A112475(comp[∑[n]])%5` -/
def P7597757853144908676.Spec : Prop :=
  ∀ n, P7597757853144908676.a n = A211313 n

end A211313

/-! ## A211313.P14767578859547942074

`(A101164(n)+A007318(n))%5`
-/

namespace A211313.P14767578859547942074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101164 n + A007318 n) 5

end

end A211313.P14767578859547942074

namespace A211313

/-- `(A101164(n)+A007318(n))%5` -/
def P14767578859547942074.Spec : Prop :=
  ∀ n, P14767578859547942074.a n = A211313 n

theorem P14767578859547942074.correct : P14767578859547942074.Spec := by
  intro n
  simp only [A211313, Nat.add_sub_cancel, A211313.P14767578859547942074.a, A211313.P9651674375888621207.a, A007318, A007318.P11755526479805562006.a, A008288, A008288.P3441482626856859975.a, A101164, A101164.P12326998442168415454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A211313

/-! ## A211313.P14123889327897147697

`(A101164(n)+A013613(n))%5`
-/

namespace A211313.P14123889327897147697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101164 n + A013613 n) 5

end

end A211313.P14123889327897147697

namespace A211313

/-- `(A101164(n)+A013613(n))%5` -/
def P14123889327897147697.Spec : Prop :=
  ∀ n, P14123889327897147697.a n = A211313 n

end A211313

/-! ## A211313.P13529219904716837796

`(A131065(n)+A101164(n))%5`
-/

namespace A211313.P13529219904716837796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131065 n + A101164 n) 5

end

end A211313.P13529219904716837796

namespace A211313

/-- `(A131065(n)+A101164(n))%5` -/
def P13529219904716837796.Spec : Prop :=
  ∀ n, P13529219904716837796.a n = A211313 n

end A211313

/-! ## A211313.P7454438788043826658

`A140750(∑[2-char[∑[n]]])%5`
-/

namespace A211313.P7454438788043826658
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140750 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 5

end

end A211313.P7454438788043826658

namespace A211313

/-- `A140750(∑[2-char[∑[n]]])%5` -/
def P7454438788043826658.Spec : Prop :=
  ∀ n, P7454438788043826658.a n = A211313 n

end A211313

/-! ## A211313.P7978633892972552687

`gcd(Δ[A103415(n)], A103452(n))%5`
-/

namespace A211313.P7978633892972552687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A103452 n) % 5

end

end A211313.P7978633892972552687

namespace A211313

/-- `gcd(Δ[A103415(n)], A103452(n))%5` -/
def P7978633892972552687.Spec : Prop :=
  ∀ n, (P7978633892972552687.a n : ℤ) = A211313 n

end A211313

/-! ## A211313.P8624424703525847375

`A010874(A008288(n))`
-/

namespace A211313.P8624424703525847375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A008288 n).toNat

end

end A211313.P8624424703525847375

namespace A211313

/-- `A010874(A008288(n))` -/
def P8624424703525847375.Spec : Prop :=
  ∀ n, P8624424703525847375.a n = A211313 n

end A211313

/-!
# A211314: Square array of Delannoy numbers D(i,j) mod 7 (i >= 0, j >= 0) read by antidiagonals.

The programs for A211314, the canonical program `A211314.P18159246006145578344` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211314 has offset 0).

The definition of A211314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211314.P18159246006145578344

`A008288(n)%7`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A211314

/-- `A008288(n)%7` -/
def P18159246006145578344.Spec : Prop :=
  ∀ n, P18159246006145578344.a n = A211314 n

theorem P18159246006145578344.correct : P18159246006145578344.Spec := by
  intro n
  simp only [A211314]

end A211314

/-! ## A211314.P1336994372901705015

`A143683(n)%7`
-/

namespace A211314.P1336994372901705015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143683 n) 7

end

end A211314.P1336994372901705015

namespace A211314

/-- `A143683(n)%7` -/
def P1336994372901705015.Spec : Prop :=
  ∀ n, P1336994372901705015.a n = A211314 n

end A211314

/-! ## A211314.P1970955012160349145

`A112475(comp[∑[n]])%7`
-/

namespace A211314.P1970955012160349145
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112475 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 7

end

end A211314.P1970955012160349145

namespace A211314

/-- `A112475(comp[∑[n]])%7` -/
def P1970955012160349145.Spec : Prop :=
  ∀ n, P1970955012160349145.a n = A211314 n

end A211314

/-! ## A211314.P11126671308483801897

`(A101164(n)+A007318(n))%7`
-/

namespace A211314.P11126671308483801897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101164 n + A007318 n) 7

end

end A211314.P11126671308483801897

namespace A211314

/-- `(A101164(n)+A007318(n))%7` -/
def P11126671308483801897.Spec : Prop :=
  ∀ n, P11126671308483801897.a n = A211314 n

theorem P11126671308483801897.correct : P11126671308483801897.Spec := by
  intro n
  simp only [A211314, Nat.add_sub_cancel, A211314.P11126671308483801897.a, A211314.P18159246006145578344.a, A007318, A007318.P11755526479805562006.a, A008288, A008288.P3441482626856859975.a, A101164, A101164.P12326998442168415454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A211314

/-! ## A211314.P13324853341549774718

`(A101164(n)+A081582(n))%7`
-/

namespace A211314.P13324853341549774718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101164 n + A081582 n) 7

end

end A211314.P13324853341549774718

namespace A211314

/-- `(A101164(n)+A081582(n))%7` -/
def P13324853341549774718.Spec : Prop :=
  ∀ n, P13324853341549774718.a n = A211314 n

end A211314

/-! ## A211314.P9981808755002564056

`(A168625(n)+A101164(n))%7`
-/

namespace A211314.P9981808755002564056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168625 n + A101164 n) 7

end

end A211314.P9981808755002564056

namespace A211314

/-- `(A168625(n)+A101164(n))%7` -/
def P9981808755002564056.Spec : Prop :=
  ∀ n, P9981808755002564056.a n = A211314 n

end A211314

/-! ## A211314.P4153510378452736229

`(2*(A225413(n)+A007318(n))-1)%7`
-/

namespace A211314.P4153510378452736229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (A225413 n + A007318 n) - 1) 7

end

end A211314.P4153510378452736229

namespace A211314

/-- `(2*(A225413(n)+A007318(n))-1)%7` -/
def P4153510378452736229.Spec : Prop :=
  ∀ n, P4153510378452736229.a n = A211314 n

end A211314

/-! ## A211314.P15224304645487648733

`A140750(∑[2-char[∑[n]]])%7`
-/

namespace A211314.P15224304645487648733
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140750 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 7

end

end A211314.P15224304645487648733

namespace A211314

/-- `A140750(∑[2-char[∑[n]]])%7` -/
def P15224304645487648733.Spec : Prop :=
  ∀ n, P15224304645487648733.a n = A211314 n

end A211314

/-! ## A211314.P10583982697142003451

`gcd(Δ[A103415(n)], A103452(n))%7`
-/

namespace A211314.P10583982697142003451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A103452 n) % 7

end

end A211314.P10583982697142003451

namespace A211314

/-- `gcd(Δ[A103415(n)], A103452(n))%7` -/
def P10583982697142003451.Spec : Prop :=
  ∀ n, (P10583982697142003451.a n : ℤ) = A211314 n

end A211314

/-! ## A211314.P8481946092890330964

`A010876(A008288(n))`
-/

namespace A211314.P8481946092890330964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A008288 n).toNat

end

end A211314.P8481946092890330964

namespace A211314

/-- `A010876(A008288(n))` -/
def P8481946092890330964.Spec : Prop :=
  ∀ n, P8481946092890330964.a n = A211314 n

end A211314

/-!
# A211315: Square array of Delannoy numbers D(i,j) mod 11 (i >= 0, j >= 0) read by antidiagonals.

The programs for A211315, the canonical program `A211315.P16970742125138602551` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211315 has offset 0).

The definition of A211315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211315.P16970742125138602551

`A008288(n)%11`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A211315

/-- `A008288(n)%11` -/
def P16970742125138602551.Spec : Prop :=
  ∀ n, P16970742125138602551.a n = A211315 n

theorem P16970742125138602551.correct : P16970742125138602551.Spec := by
  intro n
  simp only [A211315]

end A211315

/-! ## A211315.P9883320248320158728

`A112475(comp[∑[n]])%11`
-/

namespace A211315.P9883320248320158728
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112475 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 11

end

end A211315.P9883320248320158728

namespace A211315

/-- `A112475(comp[∑[n]])%11` -/
def P9883320248320158728.Spec : Prop :=
  ∀ n, P9883320248320158728.a n = A211315 n

end A211315

/-! ## A211315.P4080938815168589480

`(A101164(n)+A007318(n))%11`
-/

namespace A211315.P4080938815168589480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101164 n + A007318 n) 11

end

end A211315.P4080938815168589480

namespace A211315

/-- `(A101164(n)+A007318(n))%11` -/
def P4080938815168589480.Spec : Prop :=
  ∀ n, P4080938815168589480.a n = A211315 n

theorem P4080938815168589480.correct : P4080938815168589480.Spec := by
  intro n
  simp only [A211315, Nat.add_sub_cancel, A211315.P4080938815168589480.a, A211315.P16970742125138602551.a, A007318, A007318.P11755526479805562006.a, A008288, A008288.P3441482626856859975.a, A101164, A101164.P12326998442168415454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A211315

/-! ## A211315.P9508209550376049602

`(2*(A225413(n)+A007318(n))-1)%11`
-/

namespace A211315.P9508209550376049602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (A225413 n + A007318 n) - 1) 11

end

end A211315.P9508209550376049602

namespace A211315

/-- `(2*(A225413(n)+A007318(n))-1)%11` -/
def P9508209550376049602.Spec : Prop :=
  ∀ n, P9508209550376049602.a n = A211315 n

end A211315

/-! ## A211315.P1820160893000395975

`A140750(∑[2-char[∑[n]]])%11`
-/

namespace A211315.P1820160893000395975
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140750 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 11

end

end A211315.P1820160893000395975

namespace A211315

/-- `A140750(∑[2-char[∑[n]]])%11` -/
def P1820160893000395975.Spec : Prop :=
  ∀ n, P1820160893000395975.a n = A211315 n

end A211315

/-! ## A211315.P9681055436424200777

`A004273(A108350(n))%11`
-/

namespace A211315.P9681055436424200777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004273 (A108350 n).toNat) 11

end

end A211315.P9681055436424200777

namespace A211315

/-- `A004273(A108350(n))%11` -/
def P9681055436424200777.Spec : Prop :=
  ∀ n, P9681055436424200777.a n = A211315 n

end A211315

/-! ## A211315.P17671280363496134332

`A010880(A008288(n))`
-/

namespace A211315.P17671280363496134332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010880 (A008288 n).toNat

end

end A211315.P17671280363496134332

namespace A211315

/-- `A010880(A008288(n))` -/
def P17671280363496134332.Spec : Prop :=
  ∀ n, P17671280363496134332.a n = A211315 n

end A211315

/-! ## A211315.P14222735650287481971

`A010880(A112475(comp[∑[n]]))`
-/

namespace A211315.P14222735650287481971
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010880 (A112475 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A211315.P14222735650287481971

namespace A211315

/-- `A010880(A112475(comp[∑[n]]))` -/
def P14222735650287481971.Spec : Prop :=
  ∀ n, P14222735650287481971.a n = A211315 n

end A211315

/-! ## A211315.P8424472885604384682

`A004396(A047671(n+1))%11`
-/

namespace A211315.P8424472885604384682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004396 (A047671 (n + 1)).toNat) 11

end

end A211315.P8424472885604384682

namespace A211315

/-- `A004396(A047671(n+1))%11` -/
def P8424472885604384682.Spec : Prop :=
  ∀ n, P8424472885604384682.a n = A211315 n

end A211315

/-!
# A211316: Maximal size of sum-free set in additive group of integers mod n.

The programs for A211316, there is no canonical definition to state claims against.
-/

/-! ## A211316.P12604207861521867561

`A289435(n+2)+A000035(A291270(n+2))`
-/

namespace A211316.P12604207861521867561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (n + 2) + A000035 (A291270 (n + 2)).toNat

end

end A211316.P12604207861521867561

/-! ## A211316.P7243286018983777973

`A027656(n)+A000035(n)*A291270(n+2)`
-/

namespace A211316.P7243286018983777973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + A000035 n * A291270 (n + 2)

end

end A211316.P7243286018983777973

/-! ## A211316.P8750396709518098374

`A289435(n+2)+A291270(n+2)%A000034(n)`
-/

namespace A211316.P8750396709518098374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (n + 2) + Int.tmod (A291270 (n + 2)) (A000034 n)

end

end A211316.P8750396709518098374

/-! ## A211316.P12429153480518558164

`ceil(A289435(3*(n+2))/3)`
-/

namespace A211316.P12429153480518558164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A289435 (3 * (n + 2)) : ℚ) / 3⌉

end

end A211316.P12429153480518558164

/-! ## A211316.P4520982647194506041

`A289435(A289435(3*(n+2))-A289435(n+2))`
-/

namespace A211316.P4520982647194506041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (A289435 (3 * (n + 2)) - A289435 (n + 2)).toNat

end

end A211316.P4520982647194506041

/-! ## A211316.P9586147270185915678

`A027656(n)+and(A094024(n), A291270(n+2))`
-/

namespace A211316.P9586147270185915678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + Int.land (A094024 n) (A291270 (n + 2))

end

end A211316.P9586147270185915678

/-!
# A211317: a(n) = A211316(2n+1).

The programs for A211317, there is no canonical definition to state claims against.
-/

/-! ## A211317.P14092997231502641129

`A291267(A004280(n+2))`
-/

namespace A211317.P14092997231502641129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291267 (A004280 (n + 2)).toNat

end

end A211317.P14092997231502641129

/-!
# A211318: Triangle read by rows: number of permutations of 1..n by length l of longest run (n >= 1, 1 <= l <= n).

The programs for A211318, there is no canonical definition to state claims against.
-/

/-! ## A211318.P12638791208997877750

`A130685(A339941(n+1))`
-/

namespace A211318.P12638791208997877750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130685 (A339941 (n + 1)).toNat

end

end A211318.P12638791208997877750

/-! ## A211318.P9481844841503527946

`A055570(A130191(n))*A238303(n)`
-/

namespace A211318.P9481844841503527946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A130191 n).toNat * A238303 n

end

end A211318.P9481844841503527946

/-! ## A211318.P2694917532550730853

`A117333(A220688(n+1))+A008482(n)`
-/

namespace A211318.P2694917532550730853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117333 (A220688 (n + 1)).toNat + A008482 n

end

end A211318.P2694917532550730853

/-! ## A211318.P13262042276946925980

`A055570(A130191(n))*A325273(3*n+2)`
-/

namespace A211318.P13262042276946925980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A130191 n).toNat * A325273 (3 * n + 2)

end

end A211318.P13262042276946925980

/-!
# A211319: Second diagonal of triangle in A182544.

The programs for A211319, there is no canonical definition to state claims against.
-/

/-! ## A211319.P8765603297280228576

`A182544(∑[n+1]+4)`
-/

namespace A211319.P8765603297280228576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182544 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A211319.P8765603297280228576

/-!
# A211320: Penultimate diagonal of triangle in A182544.

The programs for A211320, there is no canonical definition to state claims against.
-/

/-! ## A211320.P4566200836496535936

`A182544(∑[n+2]+2)`
-/

namespace A211320.P4566200836496535936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182544 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A211320.P4566200836496535936

/-!
# A211322: Number of (n+1) X (n+1) -3..3 symmetric matrices with every 2 X 2 subblock having sum zero and one or two distinct values.

The programs for A211322, the canonical program `A211322.P17030240498738334825` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211322 has offset 1).

The definition of A211322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211322.P3935738307778382460

`∑[round(ϕ*a(n-1))]+8` with `a(0)=3, a(1)=4`
-/

namespace A211322.P3935738307778382460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8

end

end A211322.P3935738307778382460

namespace A211322

/-- `∑[round(ϕ*a(n-1))]+8` -/
def P3935738307778382460.Spec : Prop :=
  ∀ n, P3935738307778382460.a n = A211322 (n + 1)

end A211322

/-! ## A211322.P17030240498738334825

`a(n-1)+a(n-2)-5` with `a(0)=11, a(1)=15`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A211322

/-- `a(n-1)+a(n-2)-5` -/
def P17030240498738334825.Spec : Prop :=
  ∀ n, P17030240498738334825.a n = A211322 (n + 1)

theorem P17030240498738334825.correct : P17030240498738334825.Spec := by
  intro n
  simp only [A211322, Nat.add_sub_cancel]

end A211322

/-! ## A211322.P12305657282712870374

`a(n-1)-(5-a(n-2))` with `a(0)=11, a(1)=15`
-/

namespace A211322.P12305657282712870374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11, 15] fun n a =>
  a (n - 1) - (5 - a (n - 2))

end

end A211322.P12305657282712870374

namespace A211322

/-- `a(n-1)-(5-a(n-2))` -/
def P12305657282712870374.Spec : Prop :=
  ∀ n, P12305657282712870374.a n = A211322 (n + 1)

theorem P12305657282712870374.correct : P12305657282712870374.Spec := by
  intro n
  simp only [A211322, Nat.add_sub_cancel, A211322.P12305657282712870374.a, A211322.P17030240498738334825.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A211322

/-! ## A211322.P13394088397447427552

`A097280(n+2)+2`
-/

namespace A211322.P13394088397447427552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097280 (n + 2) + 2

end

end A211322.P13394088397447427552

namespace A211322

/-- `A097280(n+2)+2` -/
def P13394088397447427552.Spec : Prop :=
  ∀ n, P13394088397447427552.a n = A211322 (n + 1)

end A211322

/-! ## A211322.P8983137627094820468

`A211490(n+1)-2`
-/

namespace A211322.P8983137627094820468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211490 (n + 1) - 2

end

end A211322.P8983137627094820468

namespace A211322

/-- `A211490(n+1)-2` -/
def P8983137627094820468.Spec : Prop :=
  ∀ n, P8983137627094820468.a n = A211322 (n + 1)

end A211322

/-! ## A211322.P733912850883786707

`2*A048584(n)+1`
-/

namespace A211322.P733912850883786707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048584 n + 1

end

end A211322.P733912850883786707

namespace A211322

/-- `2*A048584(n)+1` -/
def P733912850883786707.Spec : Prop :=
  ∀ n, P733912850883786707.a n = A211322 (n + 1)

end A211322

/-! ## A211322.P16453768934877331465

`A090991(n+1)+5`
-/

namespace A211322.P16453768934877331465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090991 (n + 1) + 5

end

end A211322.P16453768934877331465

namespace A211322

/-- `A090991(n+1)+5` -/
def P16453768934877331465.Spec : Prop :=
  ∀ n, P16453768934877331465.a n = A211322 (n + 1)

end A211322

/-! ## A211322.P1963668769885906440

`A211329(n+1)-4`
-/

namespace A211322.P1963668769885906440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211329 (n + 1) - 4

end

end A211322.P1963668769885906440

namespace A211322

/-- `A211329(n+1)-4` -/
def P1963668769885906440.Spec : Prop :=
  ∀ n, P1963668769885906440.a n = A211322 (n + 1)

end A211322

/-! ## A211322.P11307449814601696437

`A288603(n+3)+3`
-/

namespace A211322.P11307449814601696437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288603 (n + 3) + 3

end

end A211322.P11307449814601696437

namespace A211322

/-- `A288603(n+3)+3` -/
def P11307449814601696437.Spec : Prop :=
  ∀ n, P11307449814601696437.a n = A211322 (n + 1)

end A211322

/-! ## A211322.P1527282490533882083

`2*A020706(n)+3`
-/

namespace A211322.P1527282490533882083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020706 n + 3

end

end A211322.P1527282490533882083

namespace A211322

/-- `2*A020706(n)+3` -/
def P1527282490533882083.Spec : Prop :=
  ∀ n, P1527282490533882083.a n = A211322 (n + 1)

end A211322

/-! ## A211322.P18444442863552828945

`A054886(n+2)+5`
-/

namespace A211322.P18444442863552828945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054886 (n + 2) + 5

end

end A211322.P18444442863552828945

namespace A211322

/-- `A054886(n+2)+5` -/
def P18444442863552828945.Spec : Prop :=
  ∀ n, P18444442863552828945.a n = A211322 (n + 1)

end A211322

/-! ## A211322.P17679995615778738374

`A078642(n+2)+5`
-/

namespace A211322.P17679995615778738374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078642 (n + 2) + 5

end

end A211322.P17679995615778738374

namespace A211322

/-- `A078642(n+2)+5` -/
def P17679995615778738374.Spec : Prop :=
  ∀ n, P17679995615778738374.a n = A211322 (n + 1)

end A211322

/-! ## A211322.P2890095378025615091

`A068922(n+3)+5`
-/

namespace A211322.P2890095378025615091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068922 (n + 3) + 5

end

end A211322.P2890095378025615091

namespace A211322

/-- `A068922(n+3)+5` -/
def P2890095378025615091.Spec : Prop :=
  ∀ n, P2890095378025615091.a n = A211322 (n + 1)

end A211322

/-! ## A211322.P14714335873880598991

`A001595(n+3)+6`
-/

namespace A211322.P14714335873880598991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (n + 3) + 6

end

end A211322.P14714335873880598991

namespace A211322

/-- `A001595(n+3)+6` -/
def P14714335873880598991.Spec : Prop :=
  ∀ n, P14714335873880598991.a n = A211322 (n + 1)

end A211322

/-! ## A211322.P4649655730863825006

`2*A020701(n)+5`
-/

namespace A211322.P4649655730863825006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020701 n + 5

end

end A211322.P4649655730863825006

namespace A211322

/-- `2*A020701(n)+5` -/
def P4649655730863825006.Spec : Prop :=
  ∀ n, P4649655730863825006.a n = A211322 (n + 1)

end A211322

/-! ## A211322.P1466936199610801257

`A154691(n+1)+8`
-/

namespace A211322.P1466936199610801257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154691 (n + 1) + 8

end

end A211322.P1466936199610801257

namespace A211322

/-- `A154691(n+1)+8` -/
def P1466936199610801257.Spec : Prop :=
  ∀ n, P1466936199610801257.a n = A211322 (n + 1)

end A211322

/-! ## A211322.P6873008011587082615

`A006355(n+5)+5`
-/

namespace A211322.P6873008011587082615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 5) + 5

end

end A211322.P6873008011587082615

namespace A211322

/-- `A006355(n+5)+5` -/
def P6873008011587082615.Spec : Prop :=
  ∀ n, P6873008011587082615.a n = A211322 (n + 1)

end A211322

/-! ## A211322.P2696992903373913909

`A168193(n+1)+9`
-/

namespace A211322.P2696992903373913909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168193 (n + 1) + 9

end

end A211322.P2696992903373913909

namespace A211322

/-- `A168193(n+1)+9` -/
def P2696992903373913909.Spec : Prop :=
  ∀ n, P2696992903373913909.a n = A211322 (n + 1)

end A211322

/-! ## A211322.P2474364707658828354

`2*A018910(n+1)+1`
-/

namespace A211322.P2474364707658828354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018910 (n + 1) + 1

end

end A211322.P2474364707658828354

namespace A211322

/-- `2*A018910(n+1)+1` -/
def P2474364707658828354.Spec : Prop :=
  ∀ n, P2474364707658828354.a n = A211322 (n + 1)

end A211322

/-! ## A211322.P12698367957823754913

`2*A048577(n+1)+3`
-/

namespace A211322.P12698367957823754913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048577 (n + 1) + 3

end

end A211322.P12698367957823754913

namespace A211322

/-- `2*A048577(n+1)+3` -/
def P12698367957823754913.Spec : Prop :=
  ∀ n, P12698367957823754913.a n = A211322 (n + 1)

end A211322

/-!
# A211323: Number of (n+1) X (n+1) -3..3 symmetric matrices with every 2 X 2 subblock having sum zero and three distinct values.

The programs for A211323, the canonical program `A211323.P2379812421555598708` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211323 has offset 1).

The definition of A211323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211323.P2379812421555598708

`A211322(n+1)+∑[a(n-1)+a(n-1)]` with `a(0)=3`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A211323

/-- `A211322(n+1)+∑[a(n-1)+a(n-1)]` -/
def P2379812421555598708.Spec : Prop :=
  ∀ n, P2379812421555598708.a n = A211323 (n + 1)

theorem P2379812421555598708.correct : P2379812421555598708.Spec := by
  intro n
  simp only [A211323, Nat.add_sub_cancel]

end A211323

/-! ## A211323.P4416219488357011362

`A211490(n+1)+A048488(n)`
-/

namespace A211323.P4416219488357011362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211490 (n + 1) + A048488 n

end

end A211323.P4416219488357011362

namespace A211323

/-- `A211490(n+1)+A048488(n)` -/
def P4416219488357011362.Spec : Prop :=
  ∀ n, P4416219488357011362.a n = A211323 (n + 1)

end A211323

/-! ## A211323.P7563215425922017963

`2*(A020706(n)+A007283(n))`
-/

namespace A211323.P7563215425922017963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A020706 n + A007283 n)

end

end A211323.P7563215425922017963

namespace A211323

/-- `2*(A020706(n)+A007283(n))` -/
def P7563215425922017963.Spec : Prop :=
  ∀ n, P7563215425922017963.a n = A211323 (n + 1)

end A211323

/-! ## A211323.P6298191483909631386

`2*(A181565(n)+A020701(n))`
-/

namespace A211323.P6298191483909631386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A181565 n + A020701 n)

end

end A211323.P6298191483909631386

namespace A211323

/-- `2*(A181565(n)+A020701(n))` -/
def P6298191483909631386.Spec : Prop :=
  ∀ n, P6298191483909631386.a n = A211323 (n + 1)

end A211323

/-! ## A211323.P431814981594850163

`2*(A020706(n)+A003945(n+1))`
-/

namespace A211323.P431814981594850163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A020706 n + A003945 (n + 1))

end

end A211323.P431814981594850163

namespace A211323

/-- `2*(A020706(n)+A003945(n+1))` -/
def P431814981594850163.Spec : Prop :=
  ∀ n, P431814981594850163.a n = A211323 (n + 1)

end A211323

/-! ## A211323.P7014508567809137525

`2*(A259215(n+1)-A000225(n))`
-/

namespace A211323.P7014508567809137525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A259215 (n + 1) - A000225 n)

end

end A211323.P7014508567809137525

namespace A211323

/-- `2*(A259215(n+1)-A000225(n))` -/
def P7014508567809137525.Spec : Prop :=
  ∀ n, P7014508567809137525.a n = A211323 (n + 1)

end A211323

/-! ## A211323.P6391758695669767522

`2*(A048577(n+1)+A003945(n+1))`
-/

namespace A211323.P6391758695669767522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A048577 (n + 1) + A003945 (n + 1))

end

end A211323.P6391758695669767522

namespace A211323

/-- `2*(A048577(n+1)+A003945(n+1))` -/
def P6391758695669767522.Spec : Prop :=
  ∀ n, P6391758695669767522.a n = A211323 (n + 1)

end A211323

/-! ## A211323.P2775447980912536856

`A007283(n+1)+2*A048577(n+1)`
-/

namespace A211323.P2775447980912536856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (n + 1) + 2 * A048577 (n + 1)

end

end A211323.P2775447980912536856

namespace A211323

/-- `A007283(n+1)+2*A048577(n+1)` -/
def P2775447980912536856.Spec : Prop :=
  ∀ n, P2775447980912536856.a n = A211323 (n + 1)

end A211323

/-! ## A211323.P3043743058196417154

`A074878(n+2)+2*A020706(n+1)`
-/

namespace A211323.P3043743058196417154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074878 (n + 2) + 2 * A020706 (n + 1)

end

end A211323.P3043743058196417154

namespace A211323

/-- `A074878(n+2)+2*A020706(n+1)` -/
def P3043743058196417154.Spec : Prop :=
  ∀ n, P3043743058196417154.a n = A211323 (n + 1)

end A211323

/-! ## A211323.P1235703891689411882

`A000045(n+1)+A259216(n+1)+A234933(n+1)`
-/

namespace A211323.P1235703891689411882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A259216 (n + 1) + A234933 (n + 1))

end

end A211323.P1235703891689411882

namespace A211323

/-- `A000045(n+1)+A259216(n+1)+A234933(n+1)` -/
def P1235703891689411882.Spec : Prop :=
  ∀ n, P1235703891689411882.a n = A211323 (n + 1)

end A211323

/-! ## A211323.P1216420053524552413

`4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` with `a(0)=14, a(1)=24, a(2)=42, a(3)=76`
-/

namespace A211323.P1216420053524552413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14, 24, 42, 76] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2) - a (n - 3) + 2 * a (n - 4)

end

end A211323.P1216420053524552413

namespace A211323

/-- `4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` -/
def P1216420053524552413.Spec : Prop :=
  ∀ n, P1216420053524552413.a n = A211323 (n + 1)

end A211323

/-!
# A211324: Number of (n+1) X (n+1) -3..3 symmetric matrices with every 2 X 2 subblock having sum zero and one or three distinct values.

The programs for A211324, the canonical program `A211324.P4978454997270415450` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211324 has offset 1).

The definition of A211324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211324.P4978454997270415450

`A211114(n+1)+A090991(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A211324

/-- `A211114(n+1)+A090991(n+1)` -/
def P4978454997270415450.Spec : Prop :=
  ∀ n, P4978454997270415450.a n = A211324 (n + 1)

theorem P4978454997270415450.correct : P4978454997270415450.Spec := by
  intro n
  simp only [A211324, Nat.add_sub_cancel]

end A211324

/-! ## A211324.P2250059550331004821

`A090991(n+1)+A211476(n+1)+2`
-/

namespace A211324.P2250059550331004821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090991 (n + 1) + (A211476 (n + 1) + 2)

end

end A211324.P2250059550331004821

namespace A211324

/-- `A090991(n+1)+A211476(n+1)+2` -/
def P2250059550331004821.Spec : Prop :=
  ∀ n, P2250059550331004821.a n = A211324 (n + 1)

theorem P2250059550331004821.correct : P2250059550331004821.Spec := by
  intro n
  simp only [A211324, Nat.add_sub_cancel, A211324.P2250059550331004821.a, A211324.P4978454997270415450.a, A090991, A090991.P7596988342963813071.a, A211114, A211114.P4923214750086786376.a, A211476, A211476.P824139048349514318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211324

/-! ## A211324.P14098975650857137044

`A211476(n+1)+A211490(n+1)-5`
-/

namespace A211324.P14098975650857137044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211476 (n + 1) + (A211490 (n + 1) - 5)

end

end A211324.P14098975650857137044

namespace A211324

/-- `A211476(n+1)+A211490(n+1)-5` -/
def P14098975650857137044.Spec : Prop :=
  ∀ n, P14098975650857137044.a n = A211324 (n + 1)

end A211324

/-! ## A211324.P14532863823776145643

`A211476(n+1)+A211491(n+1)-A211459(n+1)`
-/

namespace A211324.P14532863823776145643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211476 (n + 1) + (A211491 (n + 1) - A211459 (n + 1))

end

end A211324.P14532863823776145643

namespace A211324

/-- `A211476(n+1)+A211491(n+1)-A211459(n+1)` -/
def P14532863823776145643.Spec : Prop :=
  ∀ n, P14532863823776145643.a n = A211324 (n + 1)

end A211324

/-! ## A211324.P12014394736700633072

`A211476(n+1)+A211492(n+1)-A211460(n+1)`
-/

namespace A211324.P12014394736700633072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211476 (n + 1) + (A211492 (n + 1) - A211460 (n + 1))

end

end A211324.P12014394736700633072

namespace A211324

/-- `A211476(n+1)+A211492(n+1)-A211460(n+1)` -/
def P12014394736700633072.Spec : Prop :=
  ∀ n, P12014394736700633072.a n = A211324 (n + 1)

end A211324

/-! ## A211324.P1937994499715326081

`A211114(n+1)+A035513(A167614(n+1))`
-/

namespace A211324.P1937994499715326081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211114 (n + 1) + A035513 (A167614 (n + 1)).toNat

end

end A211324.P1937994499715326081

namespace A211324

/-- `A211114(n+1)+A035513(A167614(n+1))` -/
def P1937994499715326081.Spec : Prop :=
  ∀ n, P1937994499715326081.a n = A211324 (n + 1)

end A211324

/-!
# A211325: Number of (n+1) X (n+1) -3..3 symmetric matrices with every 2 X 2 subblock having sum zero and two or three distinct values.

The programs for A211325, there is no canonical definition to state claims against.
-/

/-! ## A211325.P1079920416889923298

`A211477(n+1)+A211493(n+1)-A211461(n+1)`
-/

namespace A211325.P1079920416889923298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211477 (n + 1) + (A211493 (n + 1) - A211461 (n + 1))

end

end A211325.P1079920416889923298

/-!
# A211326: Number of (n+1) X (n+1) -3..3 symmetric matrices with every 2 X 2 subblock having sum zero and one, two or three distinct values.

The programs for A211326, there is no canonical definition to state claims against.
-/

/-! ## A211326.P17228262525496588360

`A211478(n+1)+A211494(n+1)-A211462(n+1)`
-/

namespace A211326.P17228262525496588360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211478 (n + 1) + (A211494 (n + 1) - A211462 (n + 1))

end

end A211326.P17228262525496588360

/-!
# A211327: Number of (n+1) X (n+1) -3..3 symmetric matrices with every 2 X 2 subblock having sum zero and one, three or four distinct values.

The programs for A211327, the canonical program `A211327.P8838324333516125472` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211327 has offset 1).

The definition of A211327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211327.P8057918722717059015

`2*a(n-1)+2^(floor(n/2)+1)-(-1)^n` with `a(0)=15`
-/

namespace A211327.P8057918722717059015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [15] fun n a =>
  2 * a (n - 1) + ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ + 1 : ℤ) - ((-1) ^ n : ℚ))

end

end A211327.P8057918722717059015

namespace A211327

/-- `2*a(n-1)+2^(floor(n/2)+1)-(-1)^n` -/
def P8057918722717059015.Spec : Prop :=
  ∀ n, P8057918722717059015.a n = (A211327 (n + 1) : ℚ)

end A211327

/-! ## A211327.P8838324333516125472

`a(n-1)+4*a(n-2)-2*a(n-3)-4*a(n-4)` with `a(0)=15, a(1)=33, a(2)=69, a(3)=143`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A211327

/-- `a(n-1)+4*a(n-2)-2*a(n-3)-4*a(n-4)` -/
def P8838324333516125472.Spec : Prop :=
  ∀ n, P8838324333516125472.a n = A211327 (n + 1)

theorem P8838324333516125472.correct : P8838324333516125472.Spec := by
  intro n
  simp only [A211327, Nat.add_sub_cancel]

end A211327

/-! ## A211327.P7244916959734404687

`A211476(n+1)+2^(n+3)`
-/

namespace A211327.P7244916959734404687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211476 (n + 1) + (2 ^ (n + 3) : ℤ)

end

end A211327.P7244916959734404687

namespace A211327

/-- `A211476(n+1)+2^(n+3)` -/
def P7244916959734404687.Spec : Prop :=
  ∀ n, P7244916959734404687.a n = A211327 (n + 1)

end A211327

/-! ## A211327.P17392991118725518989

`A211495(n+1)+A211476(n+1)-A211463(n+1)`
-/

namespace A211327.P17392991118725518989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211495 (n + 1) + (A211476 (n + 1) - A211463 (n + 1))

end

end A211327.P17392991118725518989

namespace A211327

/-- `A211495(n+1)+A211476(n+1)-A211463(n+1)` -/
def P17392991118725518989.Spec : Prop :=
  ∀ n, P17392991118725518989.a n = A211327 (n + 1)

end A211327

/-! ## A211327.P2879053060163715317

`A211496(n+1)+A211476(n+1)-A211464(n+1)`
-/

namespace A211327.P2879053060163715317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211496 (n + 1) + (A211476 (n + 1) - A211464 (n + 1))

end

end A211327.P2879053060163715317

namespace A211327

/-- `A211496(n+1)+A211476(n+1)-A211464(n+1)` -/
def P2879053060163715317.Spec : Prop :=
  ∀ n, P2879053060163715317.a n = A211327 (n + 1)

end A211327

/-!
# A211328: Number of (n+1) X (n+1) -3..3 symmetric matrices with every 2 X 2 subblock having sum zero and two, three or four distinct values.

The programs for A211328, there is no canonical definition to state claims against.
-/

/-! ## A211328.P15138814345330327605

`A023443(or(A071716(n), A251195(n+1)))`
-/

namespace A211328.P15138814345330327605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (Int.lor (A071716 n) (A251195 (n + 1))).toNat

end

end A211328.P15138814345330327605

/-!
# A211329: Number of (n+1) X (n+1) -5..5 symmetric matrices with every 2 X 2 subblock having sum zero and one or two distinct values.

The programs for A211329, the canonical program `A211329.P1204286871191755768` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211329 has offset 1).

The definition of A211329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211329.P12153210215089658047

`ceil(ϕ*a(n-1))-6` with `a(0)=15`
-/

namespace A211329.P12153210215089658047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) : ℝ)⌉ - 6

end

end A211329.P12153210215089658047

namespace A211329

/-- `ceil(ϕ*a(n-1))-6` -/
def P12153210215089658047.Spec : Prop :=
  ∀ n, P12153210215089658047.a n = A211329 (n + 1)

end A211329

/-! ## A211329.P10666081344899680878

`∑[round(ϕ*a(n-1))]` with `a(0)=15, a(1)=4`
-/

namespace A211329.P10666081344899680878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [15, 4] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211329.P10666081344899680878

namespace A211329

/-- `∑[round(ϕ*a(n-1))]` -/
def P10666081344899680878.Spec : Prop :=
  ∀ n, P10666081344899680878.a n = A211329 (n + 1)

end A211329

/-! ## A211329.P1204286871191755768

`a(n-1)+a(n-2)-9` with `a(0)=15, a(1)=19`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A211329

/-- `a(n-1)+a(n-2)-9` -/
def P1204286871191755768.Spec : Prop :=
  ∀ n, P1204286871191755768.a n = A211329 (n + 1)

theorem P1204286871191755768.correct : P1204286871191755768.Spec := by
  intro n
  simp only [A211329, Nat.add_sub_cancel]

end A211329

/-! ## A211329.P12071590444772469399

`a(n-1)-(9-a(n-2))` with `a(0)=15, a(1)=19`
-/

namespace A211329.P12071590444772469399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15, 19] fun n a =>
  a (n - 1) - (9 - a (n - 2))

end

end A211329.P12071590444772469399

namespace A211329

/-- `a(n-1)-(9-a(n-2))` -/
def P12071590444772469399.Spec : Prop :=
  ∀ n, P12071590444772469399.a n = A211329 (n + 1)

theorem P12071590444772469399.correct : P12071590444772469399.Spec := by
  intro n
  simp only [A211329, Nat.add_sub_cancel, A211329.P12071590444772469399.a, A211329.P1204286871191755768.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A211329

/-! ## A211329.P4354932028613939100

`A211490(n+1)+2`
-/

namespace A211329.P4354932028613939100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211490 (n + 1) + 2

end

end A211329.P4354932028613939100

namespace A211329

/-- `A211490(n+1)+2` -/
def P4354932028613939100.Spec : Prop :=
  ∀ n, P4354932028613939100.a n = A211329 (n + 1)

end A211329

/-! ## A211329.P7001887896524931415

`A211322(n+1)+4`
-/

namespace A211329.P7001887896524931415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211322 (n + 1) + 4

end

end A211329.P7001887896524931415

namespace A211329

/-- `A211322(n+1)+4` -/
def P7001887896524931415.Spec : Prop :=
  ∀ n, P7001887896524931415.a n = A211329 (n + 1)

end A211329

/-! ## A211329.P7516373111274584714

`A097280(n+2)+6`
-/

namespace A211329.P7516373111274584714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097280 (n + 2) + 6

end

end A211329.P7516373111274584714

namespace A211329

/-- `A097280(n+2)+6` -/
def P7516373111274584714.Spec : Prop :=
  ∀ n, P7516373111274584714.a n = A211329 (n + 1)

end A211329

/-! ## A211329.P14359017921020963718

`2*A048584(n)+5`
-/

namespace A211329.P14359017921020963718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048584 n + 5

end

end A211329.P14359017921020963718

namespace A211329

/-- `2*A048584(n)+5` -/
def P14359017921020963718.Spec : Prop :=
  ∀ n, P14359017921020963718.a n = A211329 (n + 1)

end A211329

/-! ## A211329.P3570315039146392010

`A090991(n+1)+9`
-/

namespace A211329.P3570315039146392010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090991 (n + 1) + 9

end

end A211329.P3570315039146392010

namespace A211329

/-- `A090991(n+1)+9` -/
def P3570315039146392010.Spec : Prop :=
  ∀ n, P3570315039146392010.a n = A211329 (n + 1)

end A211329

/-! ## A211329.P4635762535244571010

`A288603(n+3)+7`
-/

namespace A211329.P4635762535244571010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288603 (n + 3) + 7

end

end A211329.P4635762535244571010

namespace A211329

/-- `A288603(n+3)+7` -/
def P4635762535244571010.Spec : Prop :=
  ∀ n, P4635762535244571010.a n = A211329 (n + 1)

end A211329

/-! ## A211329.P7691256227414122628

`2*A020706(n)+7`
-/

namespace A211329.P7691256227414122628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020706 n + 7

end

end A211329.P7691256227414122628

namespace A211329

/-- `2*A020706(n)+7` -/
def P7691256227414122628.Spec : Prop :=
  ∀ n, P7691256227414122628.a n = A211329 (n + 1)

end A211329

/-! ## A211329.P13384995808148490567

`A054886(n+2)+9`
-/

namespace A211329.P13384995808148490567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054886 (n + 2) + 9

end

end A211329.P13384995808148490567

namespace A211329

/-- `A054886(n+2)+9` -/
def P13384995808148490567.Spec : Prop :=
  ∀ n, P13384995808148490567.a n = A211329 (n + 1)

end A211329

/-! ## A211329.P843045124082248927

`A078642(n+2)+9`
-/

namespace A211329.P843045124082248927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078642 (n + 2) + 9

end

end A211329.P843045124082248927

namespace A211329

/-- `A078642(n+2)+9` -/
def P843045124082248927.Spec : Prop :=
  ∀ n, P843045124082248927.a n = A211329 (n + 1)

end A211329

/-! ## A211329.P12066478581768439083

`A068922(n+3)+9`
-/

namespace A211329.P12066478581768439083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068922 (n + 3) + 9

end

end A211329.P12066478581768439083

namespace A211329

/-- `A068922(n+3)+9` -/
def P12066478581768439083.Spec : Prop :=
  ∀ n, P12066478581768439083.a n = A211329 (n + 1)

end A211329

/-! ## A211329.P14456783819175839315

`A001595(n+3)+10`
-/

namespace A211329.P14456783819175839315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (n + 3) + 10

end

end A211329.P14456783819175839315

namespace A211329

/-- `A001595(n+3)+10` -/
def P14456783819175839315.Spec : Prop :=
  ∀ n, P14456783819175839315.a n = A211329 (n + 1)

end A211329

/-! ## A211329.P4205028028349205380

`A006355(n+5)+9`
-/

namespace A211329.P4205028028349205380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 5) + 9

end

end A211329.P4205028028349205380

namespace A211329

/-- `A006355(n+5)+9` -/
def P4205028028349205380.Spec : Prop :=
  ∀ n, P4205028028349205380.a n = A211329 (n + 1)

end A211329

/-! ## A211329.P6837769530865640035

`2*A000045(n+4)+9`
-/

namespace A211329.P6837769530865640035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 4) + 9

end

end A211329.P6837769530865640035

namespace A211329

/-- `2*A000045(n+4)+9` -/
def P6837769530865640035.Spec : Prop :=
  ∀ n, P6837769530865640035.a n = A211329 (n + 1)

end A211329

/-! ## A211329.P16450215018853382517

`A187107(n+2)+A018910(n+2)`
-/

namespace A211329.P16450215018853382517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187107 (n + 2) + A018910 (n + 2)

end

end A211329.P16450215018853382517

namespace A211329

/-- `A187107(n+2)+A018910(n+2)` -/
def P16450215018853382517.Spec : Prop :=
  ∀ n, P16450215018853382517.a n = A211329 (n + 1)

end A211329

/-! ## A211329.P17606736629389876779

`(A211466(n+1)+5)/2`
-/

namespace A211329.P17606736629389876779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211466 (n + 1) + 5 : ℚ) / 2

end

end A211329.P17606736629389876779

namespace A211329

/-- `(A211466(n+1)+5)/2` -/
def P17606736629389876779.Spec : Prop :=
  ∀ n, P17606736629389876779.a n = (A211329 (n + 1) : ℚ)

end A211329

/-! ## A211329.P11749582146329330867

`Δ[round(ϕ*a(n-1))]+9` with `a(0)=10`
-/

namespace A211329.P11749582146329330867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 9

end

end A211329.P11749582146329330867

namespace A211329

/-- `Δ[round(ϕ*a(n-1))]+9` -/
def P11749582146329330867.Spec : Prop :=
  ∀ n, P11749582146329330867.a n = A211329 (n + 1)

end A211329

/-!
# A211337: Numbers k for which the number of divisors, tau(k), is congruent to 1 modulo 3.

The programs for A211337, the canonical program `A211337.P18010796566095735436` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211337 has offset 1).

The definition of A211337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211337.P18010796566095735436

`eq[1, A000005(n+1)%3]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A211337

/-- `eq[1, A000005(n+1)%3]+1` -/
def P18010796566095735436.Spec : Prop :=
  ∀ n, (P18010796566095735436.a n : ℤ) = A211337 (n + 1)

theorem P18010796566095735436.correct : P18010796566095735436.Spec := by
  intro n
  simp only [A211337, Nat.add_sub_cancel]

end A211337

/-! ## A211337.P9118979713206627920

`lt[A214062(A000005(n+1)), 2]+1`
-/

namespace A211337.P9118979713206627920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214062 (A000005 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A211337.P9118979713206627920

namespace A211337

/-- `lt[A214062(A000005(n+1)), 2]+1` -/
def P9118979713206627920.Spec : Prop :=
  ∀ n, (P9118979713206627920.a n : ℤ) = A211337 (n + 1)

end A211337

/-! ## A211337.P3465736769017963547

`lt[A077959(2*A000005(n+1)+1), 0]+1`
-/

namespace A211337.P3465736769017963547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077959 (2 * A000005 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A211337.P3465736769017963547

namespace A211337

/-- `lt[A077959(2*A000005(n+1)+1), 0]+1` -/
def P3465736769017963547.Spec : Prop :=
  ∀ n, (P3465736769017963547.a n : ℤ) = A211337 (n + 1)

end A211337

/-! ## A211337.P10751544272007567250

`eq[1, ∏{e}[n+1, #+1]%3]+1`
-/

namespace A211337.P10751544272007567250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A211337.P10751544272007567250

namespace A211337

/-- `eq[1, ∏{e}[n+1, #+1]%3]+1` -/
def P10751544272007567250.Spec : Prop :=
  ∀ n, (P10751544272007567250.a n : ℤ) = A211337 (n + 1)

end A211337

/-! ## A211337.P11604229998814233250

`eq[1, A074943(n+1)]+1`
-/

namespace A211337.P11604229998814233250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074943 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A211337.P11604229998814233250

namespace A211337

/-- `eq[1, A074943(n+1)]+1` -/
def P11604229998814233250.Spec : Prop :=
  ∀ n, (P11604229998814233250.a n : ℤ) = A211337 (n + 1)

end A211337

/-! ## A211337.P2296714076755869722

`eq[1, A210826(n+1)]+1`
-/

namespace A211337.P2296714076755869722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210826 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A211337.P2296714076755869722

namespace A211337

/-- `eq[1, A210826(n+1)]+1` -/
def P2296714076755869722.Spec : Prop :=
  ∀ n, (P2296714076755869722.a n : ℤ) = A211337 (n + 1)

end A211337

/-! ## A211337.P10103689981408153744

`eq[1, A114003(n+1)%6]+1`
-/

namespace A211337.P10103689981408153744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114003 (n + 1)) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A211337.P10103689981408153744

namespace A211337

/-- `eq[1, A114003(n+1)%6]+1` -/
def P10103689981408153744.Spec : Prop :=
  ∀ n, (P10103689981408153744.a n : ℤ) = A211337 (n + 1)

end A211337

/-! ## A211337.P13572725859485451809

`eq[4, A010875(A145154(n))]`
-/

namespace A211337.P13572725859485451809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A211337.P13572725859485451809

namespace A211337

/-- `eq[4, A010875(A145154(n))]` -/
def P13572725859485451809.Spec : Prop :=
  ∀ n, (P13572725859485451809.a n : ℤ) = A211337 (n + 1)

end A211337

/-! ## A211337.P13819545572360117246

`eq[2, A040258(A145154(n)-1)]`
-/

namespace A211337.P13819545572360117246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040258 (A145154 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A211337.P13819545572360117246

namespace A211337

/-- `eq[2, A040258(A145154(n)-1)]` -/
def P13819545572360117246.Spec : Prop :=
  ∀ n, (P13819545572360117246.a n : ℤ) = A211337 (n + 1)

end A211337

/-! ## A211337.P14689803870508907084

`eq[2, A040268(A145154(n)-1)]`
-/

namespace A211337.P14689803870508907084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040268 (A145154 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A211337.P14689803870508907084

namespace A211337

/-- `eq[2, A040268(A145154(n)-1)]` -/
def P14689803870508907084.Spec : Prop :=
  ∀ n, (P14689803870508907084.a n : ℤ) = A211337 (n + 1)

end A211337

/-! ## A211337.P6368356820778435493

`eq[3, A020639(Δ[2*A006218(n)]+1)]+1`
-/

namespace A211337.P6368356820778435493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f3 (n + 1) - f3 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A211337.P6368356820778435493

namespace A211337

/-- `eq[3, A020639(Δ[2*A006218(n)]+1)]+1` -/
def P6368356820778435493.Spec : Prop :=
  ∀ n, (P6368356820778435493.a n : ℤ) = A211337 (n + 1)

end A211337

/-! ## A211337.P15635984707537190933

`eq[A050985(n+1), A062953(A050985(n+1))]+1`
-/

namespace A211337.P15635984707537190933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (A050985 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A211337.P15635984707537190933

namespace A211337

/-- `eq[A050985(n+1), A062953(A050985(n+1))]+1` -/
def P15635984707537190933.Spec : Prop :=
  ∀ n, (P15635984707537190933.a n : ℤ) = A211337 (n + 1)

end A211337

/-! ## A211337.P318431870194823532

`eq[A000007(n), A011655(A032741(n))]`
-/

namespace A211337.P318431870194823532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211337.P318431870194823532

namespace A211337

/-- `eq[A000007(n), A011655(A032741(n))]` -/
def P318431870194823532.Spec : Prop :=
  ∀ n, (P318431870194823532.a n : ℤ) = A211337 (n + 1)

end A211337

/-! ## A211337.P10525795340684248659

`eq[3, dr(A264686(n))]`
-/

namespace A211337.P10525795340684248659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A264686 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211337.P10525795340684248659

namespace A211337

/-- `eq[3, dr(A264686(n))]` -/
def P10525795340684248659.Spec : Prop :=
  ∀ n, (P10525795340684248659.a n : ℤ) = A211337 (n + 1)

end A211337

/-!
# A211338: Numbers k for which the number of divisors, tau(k), is congruent to 2 modulo 3.

The programs for A211338, the canonical program `A211338.P17217578141647606892` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211338 has offset 1).

The definition of A211338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211338.P17217578141647606892

`lt[(A000005(n+1)+1)%3, 1]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A211338

/-- `lt[(A000005(n+1)+1)%3, 1]+1` -/
def P17217578141647606892.Spec : Prop :=
  ∀ n, (P17217578141647606892.a n : ℤ) = A211338 (n + 1)

theorem P17217578141647606892.correct : P17217578141647606892.Spec := by
  intro n
  simp only [A211338, Nat.add_sub_cancel]

end A211338

/-! ## A211338.P7624578473813639622

`lt[A015443(A000005(n+1))%3, 1]+1`
-/

namespace A211338.P7624578473813639622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015443 (A000005 (n + 1)).toNat) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A211338.P7624578473813639622

namespace A211338

/-- `lt[A015443(A000005(n+1))%3, 1]+1` -/
def P7624578473813639622.Spec : Prop :=
  ∀ n, (P7624578473813639622.a n : ℤ) = A211338 (n + 1)

end A211338

/-! ## A211338.P1889523920665310477

`∩[A007412(n+1), A375960(n+1)]`
-/

namespace A211338.P1889523920665310477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211338.P1889523920665310477

namespace A211338

/-- `∩[A007412(n+1), A375960(n+1)]` -/
def P1889523920665310477.Spec : Prop :=
  ∀ n, (P1889523920665310477.a n : ℤ) = A211338 (n + 1)

end A211338

/-! ## A211338.P17648905764701361292

`lt[A210826(n+1), 0]+1`
-/

namespace A211338.P17648905764701361292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210826 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A211338.P17648905764701361292

namespace A211338

/-- `lt[A210826(n+1), 0]+1` -/
def P17648905764701361292.Spec : Prop :=
  ∀ n, (P17648905764701361292.a n : ℤ) = A211338 (n + 1)

end A211338

/-! ## A211338.P9565041517677498869

`eq[2, A074943(n+1)]+1`
-/

namespace A211338.P9565041517677498869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074943 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A211338.P9565041517677498869

namespace A211338

/-- `eq[2, A074943(n+1)]+1` -/
def P9565041517677498869.Spec : Prop :=
  ∀ n, (P9565041517677498869.a n : ℤ) = A211338 (n + 1)

end A211338

/-! ## A211338.P5975031865781561314

`eq[2, A010875(A145154(n))]`
-/

namespace A211338.P5975031865781561314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A211338.P5975031865781561314

namespace A211338

/-- `eq[2, A010875(A145154(n))]` -/
def P5975031865781561314.Spec : Prop :=
  ∀ n, (P5975031865781561314.a n : ℤ) = A211338 (n + 1)

end A211338

/-!
# A211339: Number of integer pairs (x,y) such that 1 < x <= y <= n and x^2 + y^2 <= n.

The programs for A211339, the canonical program `A211339.P2984226944041453084` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211339 has offset 1).

The definition of A211339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211339.P981516825735197104

`∑[A025426(n+1)]`
-/

namespace A211339.P981516825735197104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211339.P981516825735197104

namespace A211339

/-- `∑[A025426(n+1)]` -/
def P981516825735197104.Spec : Prop :=
  ∀ n, P981516825735197104.a n = A211339 (n + 1)

end A211339

/-! ## A211339.P2984226944041453084

`∑[A110654(A063725(n+1))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A211339

/-- `∑[A110654(A063725(n+1))]` -/
def P2984226944041453084.Spec : Prop :=
  ∀ n, P2984226944041453084.a n = A211339 (n + 1)

theorem P2984226944041453084.correct : P2984226944041453084.Spec := by
  intro n
  simp only [A211339, Nat.add_sub_cancel]

end A211339

/-! ## A211339.P3435160510098950679

`∑[A000161(n+1)]-A000196(n+1)`
-/

namespace A211339.P3435160510098950679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000196 (n + 1)

end

end A211339.P3435160510098950679

namespace A211339

/-- `∑[A000161(n+1)]-A000196(n+1)` -/
def P3435160510098950679.Spec : Prop :=
  ∀ n, P3435160510098950679.a n = A211339 (n + 1)

end A211339

/-! ## A211339.P7702142528953406900

`∑[A025435(2*(n+1))]`
-/

namespace A211339.P7702142528953406900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211339.P7702142528953406900

namespace A211339

/-- `∑[A025435(2*(n+1))]` -/
def P7702142528953406900.Spec : Prop :=
  ∀ n, P7702142528953406900.a n = A211339 (n + 1)

end A211339

/-! ## A211339.P16858687465670304538

`∑[A004526(A000925(2*(n+1)))]`
-/

namespace A211339.P16858687465670304538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000925 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211339.P16858687465670304538

namespace A211339

/-- `∑[A004526(A000925(2*(n+1)))]` -/
def P16858687465670304538.Spec : Prop :=
  ∀ n, P16858687465670304538.a n = A211339 (n + 1)

end A211339

/-! ## A211339.P8838265704247867220

`∑[A000196(A084888(n+1))]`
-/

namespace A211339.P8838265704247867220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A084888 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211339.P8838265704247867220

namespace A211339

/-- `∑[A000196(A084888(n+1))]` -/
def P8838265704247867220.Spec : Prop :=
  ∀ n, P8838265704247867220.a n = A211339 (n + 1)

end A211339

/-! ## A211339.P170576535554640673

`∑[A243148(∑[n+1]+2)]`
-/

namespace A211339.P170576535554640673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211339.P170576535554640673

namespace A211339

/-- `∑[A243148(∑[n+1]+2)]` -/
def P170576535554640673.Spec : Prop :=
  ∀ n, P170576535554640673.a n = A211339 (n + 1)

end A211339

/-!
# A211340: Number of integer pairs (x,y) such that 1<x<=y<=n and x^2+y^2<=n^2.

The programs for A211340, the canonical program `A211340.P16114889334648700281` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211340 has offset 1).

The definition of A211340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211340.P7995462623927895700

`∑[Δ[A036702(n)]-1]`
-/

namespace A211340.P7995462623927895700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036702 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211340.P7995462623927895700

namespace A211340

/-- `∑[Δ[A036702(n)]-1]` -/
def P7995462623927895700.Spec : Prop :=
  ∀ n, P7995462623927895700.a n = A211340 (n + 1)

end A211340

/-! ## A211340.P1740228648582757852

`∑[A036703(n+1)-1]`
-/

namespace A211340.P1740228648582757852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036703 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211340.P1740228648582757852

namespace A211340

/-- `∑[A036703(n+1)-1]` -/
def P1740228648582757852.Spec : Prop :=
  ∀ n, P1740228648582757852.a n = A211340 (n + 1)

end A211340

/-! ## A211340.P16651738055394118733

`A228172(n+1)-(n+1)`
-/

namespace A211340.P16651738055394118733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228172 (n + 1) - (n + 1 : ℤ)

end

end A211340.P16651738055394118733

namespace A211340

/-- `A228172(n+1)-(n+1)` -/
def P16651738055394118733.Spec : Prop :=
  ∀ n, P16651738055394118733.a n = A211340 (n + 1)

theorem P16651738055394118733.correct : P16651738055394118733.Spec := by
  intro n
  simp only [A211340, Nat.add_sub_cancel, A211340.P16651738055394118733.a, A211340.P16114889334648700281.f2, A211340.P16114889334648700281.f1, A211340.P16114889334648700281.a, A000603, A000603.P17854986445594045637.a, A065033, A065033.P13150710762287634520.a, A228172, A228172.P14776185888272787991.a, A036698, A036698.P3152835247264100802.a, A014200, A014200.P16970295702573526038.a, A014198, A014198.P2354480518814049901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211340

/-! ## A211340.P13162496212126517803

`A036702(n+1)-(n+2)`
-/

namespace A211340.P13162496212126517803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036702 (n + 1) - (n + 2 : ℤ)

end

end A211340.P13162496212126517803

namespace A211340

/-- `A036702(n+1)-(n+2)` -/
def P13162496212126517803.Spec : Prop :=
  ∀ n, P13162496212126517803.a n = A211340 (n + 1)

end A211340

/-! ## A211340.P13112396916375001831

`∑[floor(A036694(n+1)/2)]`
-/

namespace A211340.P13112396916375001831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036694 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211340.P13112396916375001831

namespace A211340

/-- `∑[floor(A036694(n+1)/2)]` -/
def P13112396916375001831.Spec : Prop :=
  ∀ n, P13112396916375001831.a n = A211340 (n + 1)

end A211340

/-! ## A211340.P6086779181264694478

`∑[n+1]-A247588(n+1)`
-/

namespace A211340.P6086779181264694478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A247588 (n + 1)

end

end A211340.P6086779181264694478

namespace A211340

/-- `∑[n+1]-A247588(n+1)` -/
def P6086779181264694478.Spec : Prop :=
  ∀ n, P6086779181264694478.a n = A211340 (n + 1)

end A211340

/-! ## A211340.P13710544136187410417

`∑[ceil(A036696(n+1)/4)-1]`
-/

namespace A211340.P13710544136187410417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036696 (n + 1) : ℚ) / 4⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211340.P13710544136187410417

namespace A211340

/-- `∑[ceil(A036696(n+1)/4)-1]` -/
def P13710544136187410417.Spec : Prop :=
  ∀ n, P13710544136187410417.a n = A211340 (n + 1)

end A211340

/-! ## A211340.P15158741397079785010

`A036698(n+1)-A036700(n+1)`
-/

namespace A211340.P15158741397079785010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036698 (n + 1) - A036700 (n + 1)

end

end A211340.P15158741397079785010

namespace A211340

/-- `A036698(n+1)-A036700(n+1)` -/
def P15158741397079785010.Spec : Prop :=
  ∀ n, P15158741397079785010.a n = A211340 (n + 1)

end A211340

/-! ## A211340.P11086008392490672519

`A049472(n+1)+∑[A036701(n+1)-1]`
-/

namespace A211340.P11086008392490672519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036701 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211340.P11086008392490672519

namespace A211340

/-- `A049472(n+1)+∑[A036701(n+1)-1]` -/
def P11086008392490672519.Spec : Prop :=
  ∀ n, P11086008392490672519.a n = A211340 (n + 1)

end A211340

/-! ## A211340.P8743995056225202289

`A036695(n+1)-(A036700(n+1)+A000603(n+1))`
-/

namespace A211340.P8743995056225202289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036695 (n + 1) - (A036700 (n + 1) + A000603 (n + 1))

end

end A211340.P8743995056225202289

namespace A211340

/-- `A036695(n+1)-(A036700(n+1)+A000603(n+1))` -/
def P8743995056225202289.Spec : Prop :=
  ∀ n, P8743995056225202289.a n = A211340 (n + 1)

end A211340

/-! ## A211340.P1871076027796849950

`∑[A004526(A036694(n+1))]`
-/

namespace A211340.P1871076027796849950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A036694 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211340.P1871076027796849950

namespace A211340

/-- `∑[A004526(A036694(n+1))]` -/
def P1871076027796849950.Spec : Prop :=
  ∀ n, P1871076027796849950.a n = A211340 (n + 1)

end A211340

/-! ## A211340.P16114889334648700281

`∑[A065033(Δ[A000603(n)])-1]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A211340

/-- `∑[A065033(Δ[A000603(n)])-1]` -/
def P16114889334648700281.Spec : Prop :=
  ∀ n, P16114889334648700281.a n = A211340 (n + 1)

theorem P16114889334648700281.correct : P16114889334648700281.Spec := by
  intro n
  simp only [A211340, Nat.add_sub_cancel]

end A211340

/-! ## A211340.P2736502801688883875

`∑[A110654(Δ[A000603(n)])-1]`
-/

namespace A211340.P2736502801688883875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000603 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f2 (n + 1) - f2 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211340.P2736502801688883875

namespace A211340

/-- `∑[A110654(Δ[A000603(n)])-1]` -/
def P2736502801688883875.Spec : Prop :=
  ∀ n, P2736502801688883875.a n = A211340 (n + 1)

end A211340

/-! ## A211340.P10012870629974680346

`∑[A004526(A036697(n+1)-1)]`
-/

namespace A211340.P10012870629974680346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A036697 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211340.P10012870629974680346

namespace A211340

/-- `∑[A004526(A036697(n+1)-1)]` -/
def P10012870629974680346.Spec : Prop :=
  ∀ n, P10012870629974680346.a n = A211340 (n + 1)

end A211340

/-! ## A211340.P9988451955265310546

`∑[A110654(A036694(n+1)-1)]`
-/

namespace A211340.P9988451955265310546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A036694 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211340.P9988451955265310546

namespace A211340

/-- `∑[A110654(A036694(n+1)-1)]` -/
def P9988451955265310546.Spec : Prop :=
  ∀ n, P9988451955265310546.a n = A211340 (n + 1)

end A211340

/-! ## A211340.P16368196897872826206

`∑[A110654(A036697(n+1)-2)]`
-/

namespace A211340.P16368196897872826206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A036697 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211340.P16368196897872826206

namespace A211340

/-- `∑[A110654(A036697(n+1)-2)]` -/
def P16368196897872826206.Spec : Prop :=
  ∀ n, P16368196897872826206.a n = A211340 (n + 1)

end A211340

/-! ## A211340.P7251165181830499512

`∑[A002265(A036696(n+1))]`
-/

namespace A211340.P7251165181830499512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A036696 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211340.P7251165181830499512

namespace A211340

/-- `∑[A002265(A036696(n+1))]` -/
def P7251165181830499512.Spec : Prop :=
  ∀ n, P7251165181830499512.a n = A211340 (n + 1)

end A211340

/-! ## A211340.P9236548004245340654

`∑[A008621(Δ[A036695(n)])-1]`
-/

namespace A211340.P9236548004245340654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036695 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (f2 (n + 1) - f2 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211340.P9236548004245340654

namespace A211340

/-- `∑[A008621(Δ[A036695(n)])-1]` -/
def P9236548004245340654.Spec : Prop :=
  ∀ n, P9236548004245340654.a n = A211340 (n + 1)

end A211340

/-! ## A211340.P1620155090062934413

`∑[A131508(A036696(n+1)-1)]`
-/

namespace A211340.P1620155090062934413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (A036696 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211340.P1620155090062934413

namespace A211340

/-- `∑[A131508(A036696(n+1)-1)]` -/
def P1620155090062934413.Spec : Prop :=
  ∀ n, P1620155090062934413.a n = A211340 (n + 1)

end A211340

/-! ## A211340.P9290984250931276148

`∑[A008624(A036696(n+1)-2)]`
-/

namespace A211340.P9290984250931276148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A036696 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211340.P9290984250931276148

namespace A211340

/-- `∑[A008624(A036696(n+1)-2)]` -/
def P9290984250931276148.Spec : Prop :=
  ∀ n, P9290984250931276148.a n = A211340 (n + 1)

end A211340

/-!
# A211341: a(n) = (n^n mod n!)/n.

The programs for A211341, the canonical program `A211341.P8983606769634324950` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211341 has offset 1).

The definition of A211341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211341.P8983606769634324950

`A063709(n+1)/(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A211341

/-- `A063709(n+1)/(n+1)` -/
def P8983606769634324950.Spec : Prop :=
  ∀ n, P8983606769634324950.a n = (A211341 (n + 1) : ℚ)

end A211341

/-! ## A211341.P9141388704224156983

`((n+1)^(n+1))%(n+1)!/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A211341.P9141388704224156983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ (n + 1) % Nat.factorial (n + 1) : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A211341.P9141388704224156983

namespace A211341

/-- `((n+1)^(n+1))%(n+1)!/(n+1)` -/
def P9141388704224156983.Spec : Prop :=
  ∀ n, P9141388704224156983.a n = (A211341 (n + 1) : ℚ)

end A211341

/-! ## A211341.P15918424345225084757

`((n+1)^n)%n!`
-/

namespace A211341.P15918424345225084757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ n % Nat.factorial n

end

end A211341.P15918424345225084757

namespace A211341

/-- `((n+1)^n)%n!` -/
def P15918424345225084757.Spec : Prop :=
  ∀ n, (P15918424345225084757.a n : ℤ) = A211341 (n + 1)

end A211341

/-! ## A211341.P5905626624709303840

`(sqrt(n+1)^(2*n))%A000142(n)`
-/

namespace A211341.P5905626624709303840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ) ^ (2 * n))) (A000142 n)

end

end A211341.P5905626624709303840

namespace A211341

/-- `(sqrt(n+1)^(2*n))%A000142(n)` -/
def P5905626624709303840.Spec : Prop :=
  ∀ n, P5905626624709303840.a n = A211341 (n + 1)

end A211341

/-! ## A211341.P6556572217712845565

`A000169(n+1)%∏[round(1/acot(n))]`
-/

namespace A211341.P6556572217712845565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000169 (n + 1)) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A211341.P6556572217712845565

namespace A211341

/-- `A000169(n+1)%∏[round(1/acot(n))]` -/
def P6556572217712845565.Spec : Prop :=
  ∀ n, P6556572217712845565.a n = A211341 (n + 1)

end A211341

/-!
# A211343: Triangle read by rows: T(n,k), n >= 1, k >= 1, in which column k lists the positive integers interleaved with k-1 zeros, and the first element of column k is in row k(k+1)/2.

The programs for A211343, there is no canonical definition to state claims against.
-/

/-! ## A211343.P4668521827643597963

`A004526(A237048(n+1)*A338721(n+1)+1)`
-/

namespace A211343.P4668521827643597963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A237048 (n + 1) * A338721 (n + 1) + 1).toNat

end

end A211343.P4668521827643597963

/-! ## A211343.P1906448315753220424

`A004524(A237048(n+1)*A338721(n+1)+2)`
-/

namespace A211343.P1906448315753220424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A237048 (n + 1) * A338721 (n + 1) + 2).toNat

end

end A211343.P1906448315753220424

/-! ## A211343.P6586530737113417639

`ceil(A196020(n+1)/2)`
-/

namespace A211343.P6586530737113417639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A196020 (n + 1) : ℚ) / 2⌉

end

end A211343.P6586530737113417639

/-! ## A211343.P14205094000181134152

`A001057(A196020(n+1))`
-/

namespace A211343.P14205094000181134152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A196020 (n + 1)).toNat

end

end A211343.P14205094000181134152

/-! ## A211343.P11558987496238951660

`A004526(A196020(n+1)+1)`
-/

namespace A211343.P11558987496238951660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A196020 (n + 1) + 1).toNat

end

end A211343.P11558987496238951660

/-! ## A211343.P15951104079276317423

`A025480(A196020(n+1)+1)`
-/

namespace A211343.P15951104079276317423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A196020 (n + 1) + 1).toNat

end

end A211343.P15951104079276317423

/-! ## A211343.P4430898994151585793

`A029578(A196020(n+1)+1)`
-/

namespace A211343.P4430898994151585793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A196020 (n + 1) + 1).toNat

end

end A211343.P4430898994151585793

/-! ## A211343.P10743357247548035870

`A142150(A196020(n+1)+1)`
-/

namespace A211343.P10743357247548035870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A196020 (n + 1) + 1).toNat

end

end A211343.P10743357247548035870

/-! ## A211343.P5166342519448538901

`A004524(A196020(n+1)+2)`
-/

namespace A211343.P5166342519448538901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A196020 (n + 1) + 2).toNat

end

end A211343.P5166342519448538901

/-! ## A211343.P3860597849056751795

`A008619(A196020(n+1)+1)-1`
-/

namespace A211343.P3860597849056751795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A196020 (n + 1) + 1).toNat - 1

end

end A211343.P3860597849056751795

/-! ## A211343.P320519333106553469

`A002265(2*(A196020(n+1)+1))`
-/

namespace A211343.P320519333106553469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A196020 (n + 1) + 1)).toNat

end

end A211343.P320519333106553469

/-! ## A211343.P11337451820806814661

`A052928(A196020(n+1)+1)/2`
-/

namespace A211343.P11337451820806814661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052928 (A196020 (n + 1) + 1).toNat : ℚ) / 2

end

end A211343.P11337451820806814661

/-! ## A211343.P15436801770018759307

`(A237048(n+1)+A196020(n+1))/2`
-/

namespace A211343.P15436801770018759307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237048 (n + 1) + A196020 (n + 1) : ℚ) / 2

end

end A211343.P15436801770018759307

/-! ## A211343.P16633923320019014452

`A002265(A196020(n+1)+A196020(n+1)+2)`
-/

namespace A211343.P16633923320019014452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A196020 (n + 1) + (A196020 (n + 1) + 2)).toNat

end

end A211343.P16633923320019014452

/-! ## A211343.P13683388212742549912

`A235791(n+1)*A237048(n+1)`
-/

namespace A211343.P13683388212742549912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235791 (n + 1) * A237048 (n + 1)

end

end A211343.P13683388212742549912

/-! ## A211343.P7115944058196018530

`A057427(A196020(n+1))*A235791(n+1)`
-/

namespace A211343.P7115944058196018530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A196020 (n + 1)).toNat * A235791 (n + 1)

end

end A211343.P7115944058196018530

/-! ## A211343.P10933937839784023335

`A196020(n+1)*A235791(n+1)/A338721(n+1)`
-/

namespace A211343.P10933937839784023335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196020 (n + 1) * A235791 (n + 1) : ℚ) / (A338721 (n + 1) : ℚ)

end

end A211343.P10933937839784023335

/-! ## A211343.P14601106799458565183

`A057554((A196020(n+1)+1)²)`
-/

namespace A211343.P14601106799458565183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 ((A196020 (n + 1) + 1) ^ 2).toNat

end

end A211343.P14601106799458565183

/-! ## A211343.P16420668685114104432

`A057427(A261699(n+1))*A235791(n+1)`
-/

namespace A211343.P16420668685114104432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A261699 (n + 1)).toNat * A235791 (n + 1)

end

end A211343.P16420668685114104432

/-! ## A211343.P13855230151950910233

`A237048(n+1)*A286001(n+1)`
-/

namespace A211343.P13855230151950910233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237048 (n + 1) * A286001 (n + 1)

end

end A211343.P13855230151950910233

/-!
# A211344: Atomic Boolean functions interpreted as binary numbers.

The programs for A211344, there is no canonical definition to state claims against.
-/

/-! ## A211344.P7474328640718847786

`A001317(A089633(n))`
-/

namespace A211344.P7474328640718847786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (A089633 n).toNat

end

end A211344.P7474328640718847786

/-! ## A211344.P16545827403781785262

`A087745(A087136(n))`
-/

namespace A211344.P16545827403781785262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087745 (A087136 n).toNat

end

end A211344.P16545827403781785262

/-! ## A211344.P6405496349668949866

`A087745(A030130(n+1))`
-/

namespace A211344.P6405496349668949866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087745 (A030130 (n + 1)).toNat

end

end A211344.P6405496349668949866

/-! ## A211344.P6276512322691310891

`A087745(A081118(n+1))`
-/

namespace A211344.P6276512322691310891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087745 (A081118 (n + 1)).toNat

end

end A211344.P6276512322691310891

/-! ## A211344.P187004869823310546

`A087745(A206853(n+1))`
-/

namespace A211344.P187004869823310546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087745 (A206853 (n + 1)).toNat

end

end A211344.P187004869823310546

/-!
# A211345: a(n) is the largest n-digit number whose last k digits are divisible by the k-th prime for k = 1..n.

The programs for A211345, there is no canonical definition to state claims against.
-/

/-! ## A211345.P2020088825648124548

`A079212(∑[A220480(n+1)])`
-/

namespace A211345.P2020088825648124548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079212 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211345.P2020088825648124548

/-!
# A211347: Numbers n such that n = sigma_k(m) for some k >= 1.

The programs for A211347, there is no canonical definition to state claims against.
-/

/-! ## A211347.P13909727146995697731

`record[(n+1)*A057427(A271606(n+1))]`
-/

namespace A211347.P13909727146995697731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A057427 (A271606 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211347.P13909727146995697731

/-! ## A211347.P15819022709580817147

`eq[char[A272883(n+1)], A000007(n)]`
-/

namespace A211347.P15819022709580817147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272883 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A211347.P15819022709580817147

/-! ## A211347.P854930846539418692

`eq[char[A272883(n+1)], A130706(n+1)]`
-/

namespace A211347.P854930846539418692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272883 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A211347.P854930846539418692

/-! ## A211347.P8432867489795688962

`eq[char[A272883(n+1)], A039982(4*n)]`
-/

namespace A211347.P8432867489795688962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272883 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A211347.P8432867489795688962

/-! ## A211347.P17667657743131459197

`eq[char[A272883(n+1)], A010051(2*(n+1))]`
-/

namespace A211347.P17667657743131459197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272883 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A211347.P17667657743131459197

/-!
# A211348: Number of ways to tile an n X n square with 1 X 1, 2 X 2 and 3 X 3 tiles.

The programs for A211348, there is no canonical definition to state claims against.
-/

/-! ## A211348.P3016214371989841993

`A039729(∏[A342528(n)])`
-/

namespace A211348.P3016214371989841993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039729 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211348.P3016214371989841993

/-! ## A211348.P15785558976070485396

`A186998(n)+A057354(A354328(n))`
-/

namespace A211348.P15785558976070485396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186998 n + A057354 (A354328 n).toNat

end

end A211348.P15785558976070485396

/-!
# A211350: Refined triangle A124323: T(n,k) is the number of partitions of an n-set that are of type k (k-th integer partition, defined by A194602).

The programs for A211350, there is no canonical definition to state claims against.
-/

/-! ## A211350.P9763321610926378927

`A124794(A334437(n+1))`
-/

namespace A211350.P9763321610926378927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A334437 (n + 1)).toNat

end

end A211350.P9763321610926378927

/-! ## A211350.P6514778270242725944

`A124794(ratio[A334437(n)]*A334437(n))`
-/

namespace A211350.P6514778270242725944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A334437 n : ℚ))).toNat

end

end A211350.P6514778270242725944

/-!
# A211351: Refined triangle A091867: T(n,k) is the number of noncrossing partitions of an n-set that are of type k (k-th integer partition, defined by A194602).

The programs for A211351, there is no canonical definition to state claims against.
-/

/-! ## A211351.P14516865993019874876

`A306438(A334437(n+1))`
-/

namespace A211351.P14516865993019874876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306438 (A334437 (n + 1)).toNat

end

end A211351.P14516865993019874876

/-! ## A211351.P2975283908109101956

`A306438(ratio[A334437(n)]*A334437(n))`
-/

namespace A211351.P2975283908109101956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306438 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A334437 n : ℚ))).toNat

end

end A211351.P2975283908109101956

/-!
# A211352: Refined triangle A211356: T(n,k) is the number of partitions up to rotation of an n-set that are of type k (k-th integer partition, defined by A194602).

The programs for A211352, there is no canonical definition to state claims against.
-/

/-! ## A211352.P17229386521951161156

`A359538(A327028(n))`
-/

namespace A211352.P17229386521951161156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359538 (A327028 n).toNat

end

end A211352.P17229386521951161156

/-! ## A211352.P5108205553029276413

`A211354(n+1)%A050953(n+1)`
-/

namespace A211352.P5108205553029276413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211354 (n + 1)) (A050953 (n + 1))

end

end A211352.P5108205553029276413

/-! ## A211352.P11809713504326546768

`A211354(n+1)+A025469(A141002(n))`
-/

namespace A211352.P11809713504326546768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211354 (n + 1) + A025469 (A141002 n).toNat

end

end A211352.P11809713504326546768

/-! ## A211352.P5731303281579055049

`A211354(n+1)^A000034(A085157(n))`
-/

namespace A211352.P5731303281579055049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211354 (n + 1) : ℚ) ^ (A000034 (A085157 n).toNat : ℤ)

end

end A211352.P5731303281579055049

/-! ## A211352.P7949505087003746632

`A211354(n+1)^A362172(A058343(n))`
-/

namespace A211352.P7949505087003746632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211354 (n + 1) : ℚ) ^ (A362172 (A058343 n).toNat : ℤ)

end

end A211352.P7949505087003746632

/-!
# A211354: Refined triangle A211358: T(n,k) is the number of partitions up to rotation and reflection of an n-set that are of type k (k-th integer partition, defined by A194602).

The programs for A211354, there is no canonical definition to state claims against.
-/

/-! ## A211354.P6112888037270703836

`A006530(A211352(n+1)!)`
-/

namespace A211354.P6112888037270703836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (A211352 (n + 1)).toNat)

end

end A211354.P6112888037270703836

/-! ## A211354.P17909513655625521532

`A257993(A211352(n+1)!)`
-/

namespace A211354.P17909513655625521532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (Nat.factorial (A211352 (n + 1)).toNat)

end

end A211354.P17909513655625521532

/-! ## A211354.P5143166848744908058

`A341674(13*A211352(n+1))`
-/

namespace A211354.P5143166848744908058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341674 (13 * A211352 (n + 1)).toNat

end

end A211354.P5143166848744908058

/-! ## A211354.P5053669726827299917

`A069010(A007088(A211352(n+1)²))`
-/

namespace A211354.P5053669726827299917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A007088 (A211352 (n + 1) ^ 2).toNat).toNat

end

end A211354.P5053669726827299917

/-! ## A211354.P11382313295365951548

`A067513(A228482(A211352(n+1)²))`
-/

namespace A211354.P11382313295365951548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A228482 (A211352 (n + 1) ^ 2).toNat).toNat

end

end A211354.P11382313295365951548

/-!
# A211356: Triangle read by rows: T(n,k) is the number of partitions up to rotation of an n-set that contain k singleton blocks.

The programs for A211356, there is no canonical definition to state claims against.
-/

/-! ## A211356.P3861057969827966451

`A211358(n)%A326389(comp[n²])`
-/

namespace A211356.P3861057969827966451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211358 n) (A326389 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A211356.P3861057969827966451

/-! ## A211356.P12095735598541197428

`A211358(n)/A188645(2*n+1)%2`
-/

namespace A211356.P12095735598541197428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211358 n : ℚ) / (Int.tmod (A188645 (2 * n + 1)) 2 : ℚ)

end

end A211356.P12095735598541197428

/-! ## A211356.P2574851152570709287

`A211358(n)+A025469(A089408(n))`
-/

namespace A211356.P2574851152570709287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211358 n + A025469 (A089408 n).toNat

end

end A211356.P2574851152570709287

/-! ## A211356.P1547373474169193926

`A211358(n)+A000007(A204631(n))`
-/

namespace A211356.P1547373474169193926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211358 n + A000007 (A204631 n).toNat

end

end A211356.P1547373474169193926

/-! ## A211356.P10351518522175633183

`A211358(n)+A000038(A270109(n))`
-/

namespace A211356.P10351518522175633183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211358 n + A000038 (A270109 n).toNat

end

end A211356.P10351518522175633183

/-!
# A211357: Triangle read by rows: T(n,k) is the number of noncrossing partitions up to rotation of an n-set that contain k singleton blocks.

The programs for A211357, there is no canonical definition to state claims against.
-/

/-! ## A211357.P4345789729437257456

`A256505(A022167(n))+A211359(n)`
-/

namespace A211357.P4345789729437257456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256505 (A022167 n).toNat + A211359 n

end

end A211357.P4345789729437257456

/-! ## A211357.P18274791900219646306

`∑{d}[A211359(n), A226273(A085421(#))]`
-/

namespace A211357.P18274791900219646306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A226273 (A085421 d).toNat

end

end A211357.P18274791900219646306

/-!
# A211359: Triangle read by rows: T(n,k) is the number of noncrossing partitions up to rotation and reflection of an n-set that contain k singleton blocks.

The programs for A211359, there is no canonical definition to state claims against.
-/

/-! ## A211359.P5492321410740465890

`A255337(A211357(n)^5)`
-/

namespace A211359.P5492321410740465890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255337 (A211357 n ^ 5).toNat

end

end A211359.P5492321410740465890

/-! ## A211359.P2758378286547550513

`and(A052087(A022167(n)), A211357(n))`
-/

namespace A211359.P2758378286547550513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052087 (A022167 n).toNat) (A211357 n)

end

end A211359.P2758378286547550513

/-! ## A211359.P13964373485446817163

`and(A006530(A211357(n)!), A211357(n))`
-/

namespace A211359.P13964373485446817163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (Nat.factorial (A211357 n).toNat)) (A211357 n)

end

end A211359.P13964373485446817163

/-! ## A211359.P15690458966474536882

`and(A080670(A211357(n)!), A211357(n))`
-/

namespace A211359.P15690458966474536882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080670 (Nat.factorial (A211357 n).toNat)) (A211357 n)

end

end A211359.P15690458966474536882

/-! ## A211359.P7025982039047907106

`A005811(A211357(n)^A080256(n+1))`
-/

namespace A211359.P7025982039047907106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.roundAway ((A211357 n : ℚ) ^ (A080256 (n + 1) : ℤ))).toNat

end

end A211359.P7025982039047907106

/-!
# A211360: Top elements of triangle A211350.

The programs for A211360, there is no canonical definition to state claims against.
-/

/-! ## A211360.P13064655107309842253

`A211352(eq[2, A336811(n+1)])`
-/

namespace A211360.P13064655107309842253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211360.P13064655107309842253

/-! ## A211360.P1751739660774443988

`A211352(eq[3, A339278(n+1)])`
-/

namespace A211360.P1751739660774443988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211360.P1751739660774443988

/-! ## A211360.P11451390713270731065

`A178866(n+1)-A185284(3*n)`
-/

namespace A211360.P11451390713270731065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178866 (n + 1) - A185284 (3 * n)

end

end A211360.P11451390713270731065

/-! ## A211360.P5647038878235178578

`A178866(A178864(n+1)^A303929(n))`
-/

namespace A211360.P5647038878235178578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178866 (SequenceMachineLib.roundAway ((A178864 (n + 1) : ℚ) ^ (A303929 n : ℤ))).toNat

end

end A211360.P5647038878235178578

/-! ## A211360.P2244880709448513311

`A178866(A178864(n+1)%A097486(n))`
-/

namespace A211360.P2244880709448513311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178866 (Int.tmod (A178864 (n + 1)) (A097486 n)).toNat

end

end A211360.P2244880709448513311

/-!
# A211361: Top elements of triangle A211351.

The programs for A211361, there is no canonical definition to state claims against.
-/

/-! ## A211361.P3982554392497003472

`A211353(eq[2, A336811(n+1)])`
-/

namespace A211361.P3982554392497003472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211361.P3982554392497003472

/-!
# A211364: Inversion sets of finite permutations that have only 0's and 1's in their inversion vectors.

The programs for A211364, there is no canonical definition to state claims against.
-/

/-! ## A211364.P7869887677505115310

`A211362(A059590(n))`
-/

namespace A211364.P7869887677505115310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211362 (A059590 n).toNat

end

end A211364.P7869887677505115310

/-! ## A211364.P10122704926273451096

`A211362(eq[0, A257684(n)])`
-/

namespace A211364.P10122704926273451096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211364.P10122704926273451096

/-! ## A211364.P5695568711049967284

`A211362(eq[0, A276009(n)])`
-/

namespace A211364.P5695568711049967284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211364.P5695568711049967284

/-! ## A211364.P5084071907539766400

`A211362(record[n-A276009(n)])`
-/

namespace A211364.P5084071907539766400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211362 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A211364.P5084071907539766400

/-! ## A211364.P9870839759480817956

`A211362(eq[A034968(n), A060130(n)])`
-/

namespace A211364.P9870839759480817956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211362 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A211364.P9870839759480817956

/-!
# A211365: Array read by antidiagonals: T(m,n) = Sum(1<=i<=m) i * (2m+n-1-i)!

The programs for A211365, there is no canonical definition to state claims against.
-/

/-! ## A211365.P14655630575268493319

`A056019(A211366(n+1))`
-/

namespace A211365.P14655630575268493319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056019 (A211366 (n + 1)).toNat

end

end A211365.P14655630575268493319

/-! ## A211365.P17922572749754033776

`A350845(a(n-1)+1)` with `a(0)=1, a(1)=2, a(2)=10, a(3)=6`
-/

namespace A211365.P17922572749754033776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 10, 6] fun n a =>
  A350845 (a (n - 1) + 1).toNat

end

end A211365.P17922572749754033776

/-!
# A211366: Array read by antidiagonals: T(m,n) = Sum(1<=i<=m) i * ( n + 2(i-1) )!

The programs for A211366, there is no canonical definition to state claims against.
-/

/-! ## A211366.P1676806769262734418

`A056019(A211365(n+1))`
-/

namespace A211366.P1676806769262734418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056019 (A211365 (n + 1)).toNat

end

end A211366.P1676806769262734418

/-! ## A211366.P4011686256404268936

`A065181(A211367(n+1))`
-/

namespace A211366.P4011686256404268936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065181 (A211367 (n + 1)).toNat

end

end A211366.P4011686256404268936

/-!
# A211367: Array read by antidiagonals: T(m,n) = m * Sum(1<=i<=m) (m+n-2+i)!

The programs for A211367, there is no canonical definition to state claims against.
-/

/-! ## A211367.P2587750054844523059

`A065182(A211366(n+1))`
-/

namespace A211367.P2587750054844523059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065182 (A211366 (n + 1)).toNat

end

end A211367.P2587750054844523059

/-! ## A211367.P9744147491178603817

`A002322(A261984(2*(n+2))+A116508(n+1))`
-/

namespace A211367.P9744147491178603817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A261984 (2 * (n + 2)) + A116508 (n + 1)).toNat

end

end A211367.P9744147491178603817

/-!
# A211368: Array read by antidiagonals: T(m,n) = Sum(1<=i<=m) ( n + 2(i-1) )!

The programs for A211368, there is no canonical definition to state claims against.
-/

/-! ## A211368.P13922719188883311931

`A059590(A048678(∑[A057728(n+1)]))`
-/

namespace A211368.P13922719188883311931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (A048678 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A211368.P13922719188883311931

/-! ## A211368.P4804168409592870429

`A276008(A211366(n+1))`
-/

namespace A211368.P4804168409592870429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276008 (A211366 (n + 1)).toNat

end

end A211368.P4804168409592870429

/-!
# A211369: Array read by antidiagonals: T(m,n) = m*(m+n-1)! + Sum( n <= i <= m+n-2 ) i!

The programs for A211369, there is no canonical definition to state claims against.
-/

/-! ## A211369.P14926976511126246732

`eq[1, A055091(n)]`
-/

namespace A211369.P14926976511126246732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A211369.P14926976511126246732

/-! ## A211369.P2039530867969695391

`eq[2, A055093(n)]`
-/

namespace A211369.P2039530867969695391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A211369.P2039530867969695391

/-! ## A211369.P18184819186585580210

`A060120(∑[round(sqrt(2*n))!])`
-/

namespace A211369.P18184819186585580210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060120 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211369.P18184819186585580210

/-! ## A211369.P4071941005522560337

`A060119(A051683(n+1))`
-/

namespace A211369.P4071941005522560337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (A051683 (n + 1)).toNat

end

end A211369.P4071941005522560337

/-! ## A211369.P17106377961689245241

`A060119(A200748(n)+1)`
-/

namespace A211369.P17106377961689245241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (A200748 n + 1).toNat

end

end A211369.P17106377961689245241

/-!
# A211370: Array read by antidiagonals: T(m,n) = Sum( n <= i <= m+n-1 ) i!.

The programs for A211370, the canonical program `A211370.P13812400085331057885` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211370 has offset 1).

The definition of A211370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211370.P16944311446621329832

`record[A054115(n)]`
-/

namespace A211370.P16944311446621329832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211370.P16944311446621329832

namespace A211370

/-- `record[A054115(n)]` -/
def P16944311446621329832.Spec : Prop :=
  ∀ n, P16944311446621329832.a n = A211370 (n + 1)

end A211370

/-! ## A211370.P4597677354399387303

`A054115(comp[∑[n]])`
-/

namespace A211370.P4597677354399387303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054115 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A211370.P4597677354399387303

namespace A211370

/-- `A054115(comp[∑[n]])` -/
def P4597677354399387303.Spec : Prop :=
  ∀ n, P4597677354399387303.a n = A211370 (n + 1)

end A211370

/-! ## A211370.P13812400085331057885

`A143122(A099375(n)+1+n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A211370

/-- `A143122(A099375(n)+1+n)` -/
def P13812400085331057885.Spec : Prop :=
  ∀ n, P13812400085331057885.a n = A211370 (n + 1)

theorem P13812400085331057885.correct : P13812400085331057885.Spec := by
  intro n
  simp only [A211370, Nat.add_sub_cancel]

end A211370

/-! ## A211370.P7955177081275477464

`A143122(2*A004736(n+1)+n)`
-/

namespace A211370.P7955177081275477464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143122 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A211370.P7955177081275477464

namespace A211370

/-- `A143122(2*A004736(n+1)+n)` -/
def P7955177081275477464.Spec : Prop :=
  ∀ n, P7955177081275477464.a n = A211370 (n + 1)

theorem P7955177081275477464.correct : P7955177081275477464.Spec := by
  intro n
  simp only [A211370, Nat.add_sub_cancel, A211370.P7955177081275477464.a, A211370.P13812400085331057885.a, A004736, A004736.P10337537277358081527.a, A099375, A099375.P13700148065993022910.a, A143122, A143122.P9967688263514722923.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A003422, A003422.P8611016400917924119.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A211370

/-! ## A211370.P13885467898375978306

`A143122(2*A127739(n+1)-n)`
-/

namespace A211370.P13885467898375978306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143122 (2 * A127739 (n + 1) - (n : ℤ)).toNat

end

end A211370.P13885467898375978306

namespace A211370

/-- `A143122(2*A127739(n+1)-n)` -/
def P13885467898375978306.Spec : Prop :=
  ∀ n, P13885467898375978306.a n = A211370 (n + 1)

end A211370

/-! ## A211370.P9203855315510419024

`A143122(A061579(n)+A003057(n+2))`
-/

namespace A211370.P9203855315510419024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143122 (A061579 n + A003057 (n + 2)).toNat

end

end A211370.P9203855315510419024

namespace A211370

/-- `A143122(A061579(n)+A003057(n+2))` -/
def P9203855315510419024.Spec : Prop :=
  ∀ n, P9203855315510419024.a n = A211370 (n + 1)

end A211370

/-! ## A211370.P3914298504080829266

`A143122(A038722(n+1)+A002024(n+1))`
-/

namespace A211370.P3914298504080829266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143122 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A211370.P3914298504080829266

namespace A211370

/-- `A143122(A038722(n+1)+A002024(n+1))` -/
def P3914298504080829266.Spec : Prop :=
  ∀ n, P3914298504080829266.a n = A211370 (n + 1)

end A211370

/-! ## A211370.P423067776775607081

`A143122(A127739(n+1)+A004736(n+1))`
-/

namespace A211370.P423067776775607081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143122 (A127739 (n + 1) + A004736 (n + 1)).toNat

end

end A211370.P423067776775607081

namespace A211370

/-- `A143122(A127739(n+1)+A004736(n+1))` -/
def P423067776775607081.Spec : Prop :=
  ∀ n, P423067776775607081.a n = A211370 (n + 1)

end A211370

/-! ## A211370.P1553843732629609558

`A143122(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A211370.P1553843732629609558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143122 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A211370.P1553843732629609558

namespace A211370

/-- `A143122(A004736(n+1)+A004736(n+1)+n)` -/
def P1553843732629609558.Spec : Prop :=
  ∀ n, P1553843732629609558.a n = A211370 (n + 1)

theorem P1553843732629609558.correct : P1553843732629609558.Spec := by
  intro n
  simp only [A211370, Nat.add_sub_cancel, A211370.P1553843732629609558.a, A211370.P13812400085331057885.a, A004736, A004736.P10337537277358081527.a, A099375, A099375.P13700148065993022910.a, A143122, A143122.P9967688263514722923.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A003422, A003422.P8611016400917924119.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A211370

/-! ## A211370.P14437781962705994242

`A143122(A127739(n+1)+A127739(n+1)-n)`
-/

namespace A211370.P14437781962705994242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143122 (A127739 (n + 1) + (A127739 (n + 1) - (n : ℤ))).toNat

end

end A211370.P14437781962705994242

namespace A211370

/-- `A143122(A127739(n+1)+A127739(n+1)-n)` -/
def P14437781962705994242.Spec : Prop :=
  ∀ n, P14437781962705994242.a n = A211370 (n + 1)

end A211370

/-! ## A211370.P16204843159632985258

`A003422(A003057(n+2))-A003422(A004736(n+1))`
-/

namespace A211370.P16204843159632985258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (A003057 (n + 2)).toNat - A003422 (A004736 (n + 1)).toNat

end

end A211370.P16204843159632985258

namespace A211370

/-- `A003422(A003057(n+2))-A003422(A004736(n+1))` -/
def P16204843159632985258.Spec : Prop :=
  ∀ n, P16204843159632985258.a n = A211370 (n + 1)

end A211370

/-!
# A211371: The number of indecomposable n-permutations that have only cycles of length 3 or less.

The programs for A211371, there is no canonical definition to state claims against.
-/

/-! ## A211371.P13388902541657371193

`A239499(A106984(n+1))`
-/

namespace A211371.P13388902541657371193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239499 (A106984 (n + 1)).toNat

end

end A211371.P13388902541657371193

/-! ## A211371.P17261658591864072095

`A239499(A069351(n+2))`
-/

namespace A211371.P17261658591864072095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239499 (A069351 (n + 2)).toNat

end

end A211371.P17261658591864072095

/-! ## A211371.P6096122858600121857

`A239499(A210393(n+2))`
-/

namespace A211371.P6096122858600121857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239499 (A210393 (n + 2)).toNat

end

end A211371.P6096122858600121857

/-!
# A211372: Side length of smallest square containing n L's with short sides 1, 2, ..., n.

The programs for A211372, there is no canonical definition to state claims against.
-/

/-! ## A211372.P8071064167366598710

`floor(sqrt((n+2)^3-3))`
-/

namespace A211372.P8071064167366598710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (((n + 2) ^ 3 : ℤ) - 3)

end

end A211372.P8071064167366598710

/-! ## A211372.P8983123321027604558

`eq[1, Δ[floor((n²+2)^(1/3))]]`
-/

namespace A211372.P8983123321027604558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 + 2 : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A211372.P8983123321027604558

/-! ## A211372.P3858445947059695540

`floor(log2(or(1, (n+6)^n+7^n)))+1`
-/

namespace A211372.P3858445947059695540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.lor 1 ((n + 6) ^ n + 7 ^ n)) + 1

end

end A211372.P3858445947059695540

/-! ## A211372.P13719148006542771390

`record[ceil(∑[(n+4)/5]/3)+lcm(4, n+1)/4]`
-/

namespace A211372.P13719148006542771390
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℚ) / 5

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(∑ j ∈ Finset.range (n + 1), f2 j) / 3⌉ : ℚ) + (Nat.lcm 4 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211372.P13719148006542771390

/-! ## A211372.P7648658665367435730

`record[ceil(∑[(n+4)/5]/3)+(n+1)/2^val(n+1, 2)]`
-/

namespace A211372.P7648658665367435730
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℚ) / 5

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(∑ j ∈ Finset.range (n + 1), f2 j) / 3⌉ : ℚ) + (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211372.P7648658665367435730

/-!
# A211373: Sum of median parts of all partitions of n into an odd number of parts.

The programs for A211373, there is no canonical definition to state claims against.
-/

/-! ## A211373.P2623933573528621121

`A175427(A035959(n+1))`
-/

namespace A211373.P2623933573528621121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A035959 (n + 1)).toNat

end

end A211373.P2623933573528621121

/-! ## A211373.P6719700451171836930

`A175427(A036801(n+1))`
-/

namespace A211373.P6719700451171836930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A036801 (n + 1)).toNat

end

end A211373.P6719700451171836930

/-! ## A211373.P13943854274932005423

`A057810(Δ[A183980(n+1)])-A092510(n+1)`
-/

namespace A211373.P13943854274932005423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057810 (f1 (n + 1) - f1 n).toNat - A092510 (n + 1)

end

end A211373.P13943854274932005423

/-! ## A211373.P14834066112437695545

`A055571(A304405(n+1))`
-/

namespace A211373.P14834066112437695545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055571 (A304405 (n + 1)).toNat

end

end A211373.P14834066112437695545

/-! ## A211373.P12353015398890208118

`A055571(A347446(n+1))`
-/

namespace A211373.P12353015398890208118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055571 (A347446 (n + 1)).toNat

end

end A211373.P12353015398890208118

/-!
# A211374: Product of all the parts in the partitions of n into exactly 2 parts.

The programs for A211374, the canonical program `A211374.P13078927608878888630` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211374 has offset 1).

The definition of A211374 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211374.P13078927608878888630

`n!*floor((n+1)/2)!/(n-floor((n+1)/2))!`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A211374

/-- `n!*floor((n+1)/2)!/(n-floor((n+1)/2))!` -/
def P13078927608878888630.Spec : Prop :=
  ∀ n, P13078927608878888630.a n = (A211374 (n + 1) : ℚ)

end A211374

/-! ## A211374.P14571094452666685217

`gcd(xor(1, n²), ∑[n])*n!`
-/

namespace A211374.P14571094452666685217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j) * Nat.factorial n

end

end A211374.P14571094452666685217

namespace A211374

/-- `gcd(xor(1, n²), ∑[n])*n!` -/
def P14571094452666685217.Spec : Prop :=
  ∀ n, (P14571094452666685217.a n : ℤ) = A211374 (n + 1)

end A211374

/-! ## A211374.P5106908222200970119

`gcd(n+1, ∑[char[2*n]])*n!`
-/

namespace A211374.P5106908222200970119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) * Nat.factorial n

end

end A211374.P5106908222200970119

namespace A211374

/-- `gcd(n+1, ∑[char[2*n]])*n!` -/
def P5106908222200970119.Spec : Prop :=
  ∀ n, (P5106908222200970119.a n : ℤ) = A211374 (n + 1)

end A211374

/-! ## A211374.P2562214158109855235

`(ceil((lcm(2, n)+1+n)/2)-n)*n!`
-/

namespace A211374.P2562214158109855235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(Nat.lcm 2 n + 1 + n : ℚ) / 2⌉ - (n : ℤ)) * (Nat.factorial n : ℤ)

end

end A211374.P2562214158109855235

namespace A211374

/-- `(ceil((lcm(2, n)+1+n)/2)-n)*n!` -/
def P2562214158109855235.Spec : Prop :=
  ∀ n, P2562214158109855235.a n = A211374 (n + 1)

end A211374

/-! ## A211374.P196207002182799087

`n!*A152271(n)`
-/

namespace A211374.P196207002182799087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A152271 n

end

end A211374.P196207002182799087

namespace A211374

/-- `n!*A152271(n)` -/
def P196207002182799087.Spec : Prop :=
  ∀ n, P196207002182799087.a n = A211374 (n + 1)

end A211374

/-! ## A211374.P4880540535500349325

`n!*A057979(n+2)`
-/

namespace A211374.P4880540535500349325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A057979 (n + 2)

end

end A211374.P4880540535500349325

namespace A211374

/-- `n!*A057979(n+2)` -/
def P4880540535500349325.Spec : Prop :=
  ∀ n, P4880540535500349325.a n = A211374 (n + 1)

end A211374

/-! ## A211374.P11802364783506345239

`n!/2*A133265(n)`
-/

namespace A211374.P11802364783506345239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / 2 * (A133265 n : ℚ)

end

end A211374.P11802364783506345239

namespace A211374

/-- `n!/2*A133265(n)` -/
def P11802364783506345239.Spec : Prop :=
  ∀ n, P11802364783506345239.a n = (A211374 (n + 1) : ℚ)

end A211374

/-! ## A211374.P18200364426875440856

`A052689(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A211374.P18200364426875440856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052689 n - (n : ℤ) * a (n - 1)

end

end A211374.P18200364426875440856

namespace A211374

/-- `A052689(n)-n*a(n-1)` -/
def P18200364426875440856.Spec : Prop :=
  ∀ n, P18200364426875440856.a n = A211374 (n + 1)

end A211374

/-! ## A211374.P801147704754640130

`gcd(n!*ceil(n/2), A005359(n))`
-/

namespace A211374.P801147704754640130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((Nat.factorial n : ℤ) * ⌈(n : ℚ) / 2⌉) (A005359 n)

end

end A211374.P801147704754640130

namespace A211374

/-- `gcd(n!*ceil(n/2), A005359(n))` -/
def P801147704754640130.Spec : Prop :=
  ∀ n, (P801147704754640130.a n : ℤ) = A211374 (n + 1)

end A211374

/-! ## A211374.P13160185099510351782

`A318518(n+1)^val(n²+1, 2)*n!`
-/

namespace A211374.P13160185099510351782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (n + 1) ^ SequenceMachineLib.valuation (n ^ 2 + 1) 2 * (Nat.factorial n : ℤ)

end

end A211374.P13160185099510351782

namespace A211374

/-- `A318518(n+1)^val(n²+1, 2)*n!` -/
def P13160185099510351782.Spec : Prop :=
  ∀ n, P13160185099510351782.a n = A211374 (n + 1)

end A211374

/-!
# A211375: Semiprimes that have both prime digits (2,3,5,7) and nonprime digits (1,4,6,8,9), without digits "0".

The programs for A211375, there is no canonical definition to state claims against.
-/

/-! ## A211375.P12365905525580789821

`filter[A365589(n+1), A064911(#)]`
-/

namespace A211375.P12365905525580789821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A211375.P12365905525580789821

/-! ## A211375.P14568021763639903682

`∩[A001358(n+1), A365589(n+1)]`
-/

namespace A211375.P14568021763639903682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211375.P14568021763639903682

/-! ## A211375.P15676009896206944380

`∩[A103607(n+1), A365589(n+1)]`
-/

namespace A211375.P15676009896206944380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211375.P15676009896206944380

/-! ## A211375.P1405716012723814204

`∩[A108793(n+1), A365589(n+1)]`
-/

namespace A211375.P1405716012723814204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211375.P1405716012723814204

/-! ## A211375.P5460232979616267255

`∩[A112381(n+1), A365589(n+1)]`
-/

namespace A211375.P5460232979616267255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211375.P5460232979616267255

/-!
# A211377: T(n,k) = ((k + n)^2 - 4*k + 3 + (-1)^k - (k + n - 2)*(-1)^(k + n))/2; n, k > 0, read by antidiagonals.

The programs for A211377, the canonical program `A211377.P5525099243678660786` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211377 has offset 1).

The definition of A211377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211377.P2503602826505749577

`A216248(n+1)+A216249(n+1)-A216250(n+1)`
-/

namespace A211377.P2503602826505749577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216248 (n + 1) + (A216249 (n + 1) - A216250 (n + 1))

end

end A211377.P2503602826505749577

namespace A211377

/-- `A216248(n+1)+A216249(n+1)-A216250(n+1)` -/
def P2503602826505749577.Spec : Prop :=
  ∀ n, P2503602826505749577.a n = A211377 (n + 1)

end A211377

/-! ## A211377.P11637193605994694371

`A213205(A213196(A213205(n+1)))`
-/

namespace A211377.P11637193605994694371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213205 (A213196 (A213205 (n + 1)).toNat).toNat

end

end A211377.P11637193605994694371

namespace A211377

/-- `A213205(A213196(A213205(n+1)))` -/
def P11637193605994694371.Spec : Prop :=
  ∀ n, P11637193605994694371.a n = A211377 (n + 1)

end A211377

/-! ## A211377.P1382338514780216974

`A213205(A199855(A213171(n+1)))`
-/

namespace A211377.P1382338514780216974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213205 (A199855 (A213171 (n + 1)).toNat).toNat

end

end A211377.P1382338514780216974

namespace A211377

/-- `A213205(A199855(A213171(n+1)))` -/
def P1382338514780216974.Spec : Prop :=
  ∀ n, P1382338514780216974.a n = A211377 (n + 1)

end A211377

/-! ## A211377.P10580011151254760889

`A216249(A213196(A216249(n+1)))`
-/

namespace A211377.P10580011151254760889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216249 (A213196 (A216249 (n + 1)).toNat).toNat

end

end A211377.P10580011151254760889

namespace A211377

/-- `A216249(A213196(A216249(n+1)))` -/
def P10580011151254760889.Spec : Prop :=
  ∀ n, P10580011151254760889.a n = A211377 (n + 1)

end A211377

/-! ## A211377.P5525099243678660786

`A213171(A380200(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A211377

/-- `A213171(A380200(n+1))` -/
def P5525099243678660786.Spec : Prop :=
  ∀ n, P5525099243678660786.a n = A211377 (n + 1)

theorem P5525099243678660786.correct : P5525099243678660786.Spec := by
  intro n
  simp only [A211377, Nat.add_sub_cancel]

end A211377

/-! ## A211377.P11892009074325038727

`A216248(A213196(A216248(n+1)))`
-/

namespace A211377.P11892009074325038727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216248 (A213196 (A216248 (n + 1)).toNat).toNat

end

end A211377.P11892009074325038727

namespace A211377

/-- `A216248(A213196(A216248(n+1)))` -/
def P11892009074325038727.Spec : Prop :=
  ∀ n, P11892009074325038727.a n = A211377 (n + 1)

end A211377

/-! ## A211377.P16320421900883089985

`A216249(A199855(A216248(A199855(A216250(n+1)))))`
-/

namespace A211377.P16320421900883089985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216249 (A199855 (A216248 (A199855 (A216250 (n + 1)).toNat).toNat).toNat).toNat

end

end A211377.P16320421900883089985

namespace A211377

/-- `A216249(A199855(A216248(A199855(A216250(n+1)))))` -/
def P16320421900883089985.Spec : Prop :=
  ∀ n, P16320421900883089985.a n = A211377 (n + 1)

end A211377

/-! ## A211377.P15391543141016929356

`A367269(A061579(n))`
-/

namespace A211377.P15391543141016929356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367269 (A061579 n).toNat

end

end A211377.P15391543141016929356

namespace A211377

/-- `A367269(A061579(n))` -/
def P15391543141016929356.Spec : Prop :=
  ∀ n, P15391543141016929356.a n = A211377 (n + 1)

end A211377

/-!
# A211379: Number of pairs of parallel diagonals in a regular n-gon.

The programs for A211379, the canonical program `A211379.P11587828366988851158` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211379 has offset 3).

The definition of A211379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211379.P8173603818593298190

`(n+3)*floor(((1-n)/2)²)/2`
-/

namespace A211379.P8173603818593298190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * ((⌊((1 - (n : ℤ) : ℚ) / 2) ^ 2⌋ : ℚ) / 2)

end

end A211379.P8173603818593298190

namespace A211379

/-- `(n+3)*floor(((1-n)/2)²)/2` -/
def P8173603818593298190.Spec : Prop :=
  ∀ n, P8173603818593298190.a n = (A211379 (n + 3) : ℚ)

end A211379

/-! ## A211379.P11587828366988851158

`∑[∑[n%(a(n-2)+3)]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A211379

/-- `∑[∑[n%(a(n-2)+3)]]` -/
def P11587828366988851158.Spec : Prop :=
  ∀ n, (P11587828366988851158.a n : ℤ) = A211379 (n + 3)

theorem P11587828366988851158.correct : P11587828366988851158.Spec := by
  intro n
  simp only [A211379, Nat.add_sub_cancel]

end A211379

/-! ## A211379.P15796900884118067763

`∑[∑[n]-A008805(n)]+1`
-/

namespace A211379.P15796900884118067763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A008805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A211379.P15796900884118067763

namespace A211379

/-- `∑[∑[n]-A008805(n)]+1` -/
def P15796900884118067763.Spec : Prop :=
  ∀ n, P15796900884118067763.a n = A211379 (n + 3)

end A211379

/-! ## A211379.P14468961048337073282

`∑[∑[n%A000463(n+1)]]`
-/

namespace A211379.P14468961048337073282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A000463 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211379.P14468961048337073282

namespace A211379

/-- `∑[∑[n%A000463(n+1)]]` -/
def P14468961048337073282.Spec : Prop :=
  ∀ n, P14468961048337073282.a n = A211379 (n + 3)

end A211379

/-! ## A211379.P18025100869655435067

`A111384(n+1)-floor(n/2)`
-/

namespace A211379.P18025100869655435067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111384 (n + 1) - ⌊(n : ℚ) / 2⌋

end

end A211379.P18025100869655435067

namespace A211379

/-- `A111384(n+1)-floor(n/2)` -/
def P18025100869655435067.Spec : Prop :=
  ∀ n, P18025100869655435067.a n = A211379 (n + 3)

end A211379

/-! ## A211379.P13333882931804667942

`∑[∑[A029578(n)]]-floor(n/2)`
-/

namespace A211379.P13333882931804667942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌊(n : ℚ) / 2⌋

end

end A211379.P13333882931804667942

namespace A211379

/-- `∑[∑[A029578(n)]]-floor(n/2)` -/
def P13333882931804667942.Spec : Prop :=
  ∀ n, P13333882931804667942.a n = A211379 (n + 3)

end A211379

/-! ## A211379.P10314752205513380856

`(n+3)*A080838(n+1)/(n+1)`
-/

namespace A211379.P10314752205513380856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) * A080838 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A211379.P10314752205513380856

namespace A211379

/-- `(n+3)*A080838(n+1)/(n+1)` -/
def P10314752205513380856.Spec : Prop :=
  ∀ n, P10314752205513380856.a n = (A211379 (n + 3) : ℚ)

end A211379

/-! ## A211379.P13679994935017649674

`A008778(n)-A213483(n)`
-/

namespace A211379.P13679994935017649674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n - A213483 n

end

end A211379.P13679994935017649674

namespace A211379

/-- `A008778(n)-A213483(n)` -/
def P13679994935017649674.Spec : Prop :=
  ∀ n, P13679994935017649674.a n = A211379 (n + 3)

end A211379

/-! ## A211379.P6164962290727767608

`A213482(n)-A162147(n)`
-/

namespace A211379.P6164962290727767608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213482 n - A162147 n

end

end A211379.P6164962290727767608

namespace A211379

/-- `A213482(n)-A162147(n)` -/
def P6164962290727767608.Spec : Prop :=
  ∀ n, P6164962290727767608.a n = A211379 (n + 3)

end A211379

/-! ## A211379.P1388746892105283285

`A109900(n)-A024206(n+1)`
-/

namespace A211379.P1388746892105283285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n - A024206 (n + 1)

end

end A211379.P1388746892105283285

namespace A211379

/-- `A109900(n)-A024206(n+1)` -/
def P1388746892105283285.Spec : Prop :=
  ∀ n, P1388746892105283285.a n = A211379 (n + 3)

end A211379

/-! ## A211379.P16206132233946051798

`A117662(n)-A211381(n+3)`
-/

namespace A211379.P16206132233946051798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117662 n - A211381 (n + 3)

end

end A211379.P16206132233946051798

namespace A211379

/-- `A117662(n)-A211381(n+3)` -/
def P16206132233946051798.Spec : Prop :=
  ∀ n, P16206132233946051798.a n = A211379 (n + 3)

end A211379

/-! ## A211379.P2221893413829261006

`∑[A001318(n)-A008619(n)]+1`
-/

namespace A211379.P2221893413829261006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n - A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A211379.P2221893413829261006

namespace A211379

/-- `∑[A001318(n)-A008619(n)]+1` -/
def P2221893413829261006.Spec : Prop :=
  ∀ n, P2221893413829261006.a n = A211379 (n + 3)

end A211379

/-! ## A211379.P2072971702209509739

`∑[A001318(n)]-(A002620(n)+n)`
-/

namespace A211379.P2072971702209509739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A002620 n + (n : ℤ))

end

end A211379.P2072971702209509739

namespace A211379

/-- `∑[A001318(n)]-(A002620(n)+n)` -/
def P2072971702209509739.Spec : Prop :=
  ∀ n, P2072971702209509739.a n = A211379 (n + 3)

end A211379

/-! ## A211379.P16613681396631754027

`A180861(n+1)-A034856(n+1)`
-/

namespace A211379.P16613681396631754027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180861 (n + 1) - A034856 (n + 1)

end

end A211379.P16613681396631754027

namespace A211379

/-- `A180861(n+1)-A034856(n+1)` -/
def P16613681396631754027.Spec : Prop :=
  ∀ n, P16613681396631754027.a n = A211379 (n + 3)

end A211379

/-! ## A211379.P14911610114033378965

`A176145(n+3)-A211380(n+3)`
-/

namespace A211379.P14911610114033378965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176145 (n + 3) - A211380 (n + 3)

end

end A211379.P14911610114033378965

namespace A211379

/-- `A176145(n+3)-A211380(n+3)` -/
def P14911610114033378965.Spec : Prop :=
  ∀ n, P14911610114033378965.a n = A211379 (n + 3)

theorem P14911610114033378965.correct : P14911610114033378965.Spec := by
  intro n
  simp only [A211379, Nat.add_sub_cancel, A211379.P14911610114033378965.a, A211379.P11587828366988851158.f2, A211379.P11587828366988851158.f1, A211379.P11587828366988851158.a, A176145, A176145.P8711913731725986993.a, A211380, A211380.P10347912893481084075.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211379

/-! ## A211379.P11510705428181955260

`A004526(n+1)+A111384(n+1)-n`
-/

namespace A211379.P11510705428181955260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + (A111384 (n + 1) - (n : ℤ))

end

end A211379.P11510705428181955260

namespace A211379

/-- `A004526(n+1)+A111384(n+1)-n` -/
def P11510705428181955260.Spec : Prop :=
  ∀ n, P11510705428181955260.a n = A211379 (n + 3)

end A211379

/-! ## A211379.P359489783050994175

`A361276(n+1)+A006918(n)-A006918(n+1)`
-/

namespace A211379.P359489783050994175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361276 (n + 1) + (A006918 n - A006918 (n + 1))

end

end A211379.P359489783050994175

namespace A211379

/-- `A361276(n+1)+A006918(n)-A006918(n+1)` -/
def P359489783050994175.Spec : Prop :=
  ∀ n, P359489783050994175.a n = A211379 (n + 3)

end A211379

/-! ## A211379.P14910408291933618425

`A109900(n+2)-(n+1)*(n+3)`
-/

namespace A211379.P14910408291933618425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 (n + 2) - ((n + 1) * (n + 3) : ℤ)

end

end A211379.P14910408291933618425

namespace A211379

/-- `A109900(n+2)-(n+1)*(n+3)` -/
def P14910408291933618425.Spec : Prop :=
  ∀ n, P14910408291933618425.a n = A211379 (n + 3)

end A211379

/-! ## A211379.P5126822979716494450

`A026037(n+3)-A088003(n+3)`
-/

namespace A211379.P5126822979716494450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026037 (n + 3) - A088003 (n + 3)

end

end A211379.P5126822979716494450

namespace A211379

/-- `A026037(n+3)-A088003(n+3)` -/
def P5126822979716494450.Spec : Prop :=
  ∀ n, P5126822979716494450.a n = A211379 (n + 3)

end A211379

/-! ## A211379.P6273040442010878520

`A034828(n+3)-(n+1)*(n+3)`
-/

namespace A211379.P6273040442010878520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (n + 3) - ((n + 1) * (n + 3) : ℤ)

end

end A211379.P6273040442010878520

namespace A211379

/-- `A034828(n+3)-(n+1)*(n+3)` -/
def P6273040442010878520.Spec : Prop :=
  ∀ n, P6273040442010878520.a n = A211379 (n + 3)

end A211379

/-!
# A211380: Number of pairs of intersecting diagonals in the interior and exterior of a regular n-gon.

The programs for A211380, the canonical program `A211380.P10347912893481084075` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211380 has offset 3).

The definition of A211380 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211379, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A211380.P10347912893481084075

`A176145(n+3)-A211379(n+3)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A211380

/-- `A176145(n+3)-A211379(n+3)` -/
def P10347912893481084075.Spec : Prop :=
  ∀ n, P10347912893481084075.a n = A211380 (n + 3)

theorem P10347912893481084075.correct : P10347912893481084075.Spec := by
  intro n
  simp only [A211380, Nat.add_sub_cancel]

end A211380

/-! ## A211380.P14006467846729624487

`C(∑[n], 2)+n-(n+3)*floor(((1-n)/2)²)/2`
-/

namespace A211380.P14006467846729624487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + n : ℚ) - (n + 3 : ℚ) * ((⌊((1 - (n : ℤ) : ℚ) / 2) ^ 2⌋ : ℚ) / 2)

end

end A211380.P14006467846729624487

namespace A211380

/-- `C(∑[n], 2)+n-(n+3)*floor(((1-n)/2)²)/2` -/
def P14006467846729624487.Spec : Prop :=
  ∀ n, P14006467846729624487.a n = (A211380 (n + 3) : ℚ)

end A211380

/-! ## A211380.P7101678658444412193

`3*C(n+2, 4)+n-(n+3)*floor(((1-n)/2)²)/2`
-/

namespace A211380.P7101678658444412193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (n + 2) 4 + n : ℚ) - (n + 3 : ℚ) * ((⌊((1 - (n : ℤ) : ℚ) / 2) ^ 2⌋ : ℚ) / 2)

end

end A211380.P7101678658444412193

namespace A211380

/-- `3*C(n+2, 4)+n-(n+3)*floor(((1-n)/2)²)/2` -/
def P7101678658444412193.Spec : Prop :=
  ∀ n, P7101678658444412193.a n = (A211380 (n + 3) : ℚ)

end A211380

/-! ## A211380.P388162789903053315

`A211381(n+3)+∑[∑[∑[n]]]`
-/

namespace A211380.P388162789903053315
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211381 (n + 3) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A211380.P388162789903053315

namespace A211380

/-- `A211381(n+3)+∑[∑[∑[n]]]` -/
def P388162789903053315.Spec : Prop :=
  ∀ n, P388162789903053315.a n = A211380 (n + 3)

end A211380

/-! ## A211380.P12218232528552164711

`A176145(n+3)+A211381(n+3)-A117662(n)`
-/

namespace A211380.P12218232528552164711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176145 (n + 3) + (A211381 (n + 3) - A117662 n)

end

end A211380.P12218232528552164711

namespace A211380

/-- `A176145(n+3)+A211381(n+3)-A117662(n)` -/
def P12218232528552164711.Spec : Prop :=
  ∀ n, P12218232528552164711.a n = A211380 (n + 3)

end A211380

/-! ## A211380.P3704794971391395914

`A176145(n+3)-∑[A087401(A266074(n))]`
-/

namespace A211380.P3704794971391395914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087401 (A266074 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176145 (n + 3) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211380.P3704794971391395914

namespace A211380

/-- `A176145(n+3)-∑[A087401(A266074(n))]` -/
def P3704794971391395914.Spec : Prop :=
  ∀ n, P3704794971391395914.a n = A211380 (n + 3)

end A211380

/-!
# A211381: Number of pairs of intersecting diagonals in the exterior of a regular n-gon.

The programs for A211381, the canonical program `A211381.P2497063138568768857` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211381 has offset 3).

The definition of A211381 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211380, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A211381.P2497063138568768857

`A211380(n+3)-A000332(n+3)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A211381

/-- `A211380(n+3)-A000332(n+3)` -/
def P2497063138568768857.Spec : Prop :=
  ∀ n, P2497063138568768857.a n = A211381 (n + 3)

theorem P2497063138568768857.correct : P2497063138568768857.Spec := by
  intro n
  simp only [A211381, Nat.add_sub_cancel]

end A211381

/-! ## A211381.P9144941070515640994

`(n+3)*∑[a(n-2)+n-3]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A211381.P9144941070515640994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  f1 (n - 2) + ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211381.P9144941070515640994

namespace A211381

/-- `(n+3)*∑[a(n-2)+n-3]` -/
def P9144941070515640994.Spec : Prop :=
  ∀ n, P9144941070515640994.a n = A211381 (n + 3)

end A211381

/-! ## A211381.P14200843628855107998

`A117662(n)-A211379(n+3)`
-/

namespace A211381.P14200843628855107998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117662 n - A211379 (n + 3)

end

end A211381.P14200843628855107998

namespace A211381

/-- `A117662(n)-A211379(n+3)` -/
def P14200843628855107998.Spec : Prop :=
  ∀ n, P14200843628855107998.a n = A211381 (n + 3)

end A211381

/-! ## A211381.P12132098818769127479

`(n+3)*A173196(A289207(n))`
-/

namespace A211381.P12132098818769127479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A173196 (A289207 n).toNat

end

end A211381.P12132098818769127479

namespace A211381

/-- `(n+3)*A173196(A289207(n))` -/
def P12132098818769127479.Spec : Prop :=
  ∀ n, P12132098818769127479.a n = A211381 (n + 3)

end A211381

/-! ## A211381.P15216601549899861915

`A211380(n+3)-∑[A000292(n)]`
-/

namespace A211381.P15216601549899861915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211380 (n + 3) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211381.P15216601549899861915

namespace A211381

/-- `A211380(n+3)-∑[A000292(n)]` -/
def P15216601549899861915.Spec : Prop :=
  ∀ n, P15216601549899861915.a n = A211381 (n + 3)

end A211381

/-! ## A211381.P7066412544944330648

`A211380(n+3)+A117662(n)-A176145(n+3)`
-/

namespace A211381.P7066412544944330648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211380 (n + 3) + (A117662 n - A176145 (n + 3))

end

end A211381.P7066412544944330648

namespace A211381

/-- `A211380(n+3)+A117662(n)-A176145(n+3)` -/
def P7066412544944330648.Spec : Prop :=
  ∀ n, P7066412544944330648.a n = A211381 (n + 3)

end A211381

/-!
# A211382: Number of intersections of diagonals in the exterior of a regular n-gon.

The programs for A211382, there is no canonical definition to state claims against.
-/

/-! ## A211382.P6022568364707813597

`A211383(n+3)-A006561(n+3)`
-/

namespace A211382.P6022568364707813597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211383 (n + 3) - A006561 (n + 3)

end

end A211382.P6022568364707813597

/-! ## A211382.P9008605483075268704

`A003056(and(A340414(n), A350138(n)))`
-/

namespace A211382.P9008605483075268704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.land (A340414 n) (A350138 n)).toNat

end

end A211382.P9008605483075268704

/-! ## A211382.P7862430394977721368

`A225639(A011782(n))*A229785(n+1)`
-/

namespace A211382.P7862430394977721368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225639 (A011782 n).toNat * A229785 (n + 1)

end

end A211382.P7862430394977721368

/-! ## A211382.P17914619090984530885

`A225639(A131577(n))*A316413(n+1)`
-/

namespace A211382.P17914619090984530885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225639 (A131577 n).toNat * A316413 (n + 1)

end

end A211382.P17914619090984530885

/-!
# A211383: Number of intersections of diagonals in the interior and exterior of a regular n-gon.

The programs for A211383, there is no canonical definition to state claims against.
-/

/-! ## A211383.P1354886093852395028

`A006561(n+3)+A211382(n+3)`
-/

namespace A211383.P1354886093852395028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006561 (n + 3) + A211382 (n + 3)

end

end A211383.P1354886093852395028

/-!
# A211384: a(1) = 1, a(2) = 3; for n>2, a(n) = smallest number > a(n-1) such that a(n) is divisible by a(d) for all divisors d of n.

The programs for A211384, there is no canonical definition to state claims against.
-/

/-! ## A211384.P14751184744150685553

`∑[A325940(A086323(n+1))²%8]+n+1`
-/

namespace A211384.P14751184744150685553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325940 (A086323 (n + 1)).toNat ^ 2) 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1

end

end A211384.P14751184744150685553

/-! ## A211384.P5983158136457555448

`lt[A059888(A059888(n+1)), A134273(n+1)]`
-/

namespace A211384.P5983158136457555448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059888 (A059888 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134273 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A211384.P5983158136457555448

/-! ## A211384.P18424128460930885214

`lt[A094747(n+1), A302796(A095259(n+1))]`
-/

namespace A211384.P18424128460930885214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302796 (A095259 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A211384.P18424128460930885214

/-!
# A211386: Expansion of 1/((1-2*x)^5*(1-x)).

The programs for A211386, the canonical program `A211386.P11936111480970406551` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211386 has offset 0).

The definition of A211386 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211386.P11936111480970406551

`2^n*(24+18*n+23*n²+6*n^3+n^4)/12-1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A211386

/-- `2^n*(24+18*n+23*n²+6*n^3+n^4)/12-1` -/
def P11936111480970406551.Spec : Prop :=
  ∀ n, P11936111480970406551.a n = (A211386 n : ℚ)

end A211386

/-! ## A211386.P9952448485349433557

`∑[2^n*C(n+4, 4)]`
-/

namespace A211386.P9952448485349433557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.choose (n + 4) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211386.P9952448485349433557

namespace A211386

/-- `∑[2^n*C(n+4, 4)]` -/
def P9952448485349433557.Spec : Prop :=
  ∀ n, (P9952448485349433557.a n : ℤ) = A211386 n

end A211386

/-! ## A211386.P942407900229551444

`∑[C(n+4, 4)/2^-n]`
-/

namespace A211386.P942407900229551444
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211386.P942407900229551444

namespace A211386

/-- `∑[C(n+4, 4)/2^-n]` -/
def P942407900229551444.Spec : Prop :=
  ∀ n, P942407900229551444.a n = (A211386 n : ℚ)

end A211386

/-! ## A211386.P9756417028291102391

`∑[∑[A006974(n)]]`
-/

namespace A211386.P9756417028291102391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006974 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211386.P9756417028291102391

namespace A211386

/-- `∑[∑[A006974(n)]]` -/
def P9756417028291102391.Spec : Prop :=
  ∀ n, P9756417028291102391.a n = A211386 n

end A211386

/-! ## A211386.P16080962951838076468

`∑[A003472(n+4)]`
-/

namespace A211386.P16080962951838076468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003472 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211386.P16080962951838076468

namespace A211386

/-- `∑[A003472(n+4)]` -/
def P16080962951838076468.Spec : Prop :=
  ∀ n, P16080962951838076468.a n = A211386 n

end A211386

/-! ## A211386.P3510119327966905710

`∑[A344564(n)/3]`
-/

namespace A211386.P3510119327966905710
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344564 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211386.P3510119327966905710

namespace A211386

/-- `∑[A344564(n)/3]` -/
def P3510119327966905710.Spec : Prop :=
  ∀ n, P3510119327966905710.a n = (A211386 n : ℚ)

end A211386

/-! ## A211386.P5974548011306458243

`∑[(n+1)*A080930(n)]`
-/

namespace A211386.P5974548011306458243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A080930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211386.P5974548011306458243

namespace A211386

/-- `∑[(n+1)*A080930(n)]` -/
def P5974548011306458243.Spec : Prop :=
  ∀ n, P5974548011306458243.a n = A211386 n

end A211386

/-! ## A211386.P685651815658422386

`A193845(eq[4, A002262(n)])`
-/

namespace A211386.P685651815658422386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193845 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211386.P685651815658422386

namespace A211386

/-- `A193845(eq[4, A002262(n)])` -/
def P685651815658422386.Spec : Prop :=
  ∀ n, P685651815658422386.a n = A211386 n

end A211386

/-! ## A211386.P16288150631365224740

`A119258(eq[6, A004736(n+1)])`
-/

namespace A211386.P16288150631365224740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211386.P16288150631365224740

namespace A211386

/-- `A119258(eq[6, A004736(n+1)])` -/
def P16288150631365224740.Spec : Prop :=
  ∀ n, P16288150631365224740.a n = A211386 n

end A211386

/-!
# A211387: Expansion of x*(1 -15*x +99*x^2 -373*x^3 +879*x^4 -1338*x^5 +1311*x^6 -804*x^7 +289*x^8 -44*x^9) / [(1-3*x+x^2) *(1-2*x)^6 *(1-x)^2].

The programs for A211387, there is no canonical definition to state claims against.
-/

/-! ## A211387.P2750979457487955403

`A165526(n+1)-∑[A139756(n)]`
-/

namespace A211387.P2750979457487955403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165526 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211387.P2750979457487955403

/-! ## A211387.P10965405709590506998

`A165526(n+1)+A001478(∑[A139756(n)]+1)+1`
-/

namespace A211387.P10965405709590506998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165526 (n + 1) + A001478 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat + 1

end

end A211387.P10965405709590506998

/-!
# A211388: Expansion of 1/((1-2*x)^6*(1-x)).

The programs for A211388, the canonical program `A211388.P7796390405911479757` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211388 has offset 0).

The definition of A211388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211388.P7796390405911479757

`1+2^(n-2)*n*(n^4+10*n^3+55*n²+110*n+184)/15`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A211388

/-- `1+2^(n-2)*n*(n^4+10*n^3+55*n²+110*n+184)/15` -/
def P7796390405911479757.Spec : Prop :=
  ∀ n, P7796390405911479757.a n = (A211388 n : ℚ)

end A211388

/-! ## A211388.P11682482136395181825

`∑[(10/n+2)*a(n-1)]` with `a(0)=1`
-/

namespace A211388.P11682482136395181825
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (10 / (n : ℚ) + 2) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211388.P11682482136395181825

namespace A211388

/-- `∑[(10/n+2)*a(n-1)]` -/
def P11682482136395181825.Spec : Prop :=
  ∀ n, P11682482136395181825.a n = (A211388 n : ℚ)

end A211388

/-! ## A211388.P6460832894837802222

`∑[∑[A006975(n)]]`
-/

namespace A211388.P6460832894837802222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006975 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211388.P6460832894837802222

namespace A211388

/-- `∑[∑[A006975(n)]]` -/
def P6460832894837802222.Spec : Prop :=
  ∀ n, P6460832894837802222.a n = A211388 n

end A211388

/-! ## A211388.P9801791300837777406

`∑[A054849(n+5)]`
-/

namespace A211388.P9801791300837777406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054849 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211388.P9801791300837777406

namespace A211388

/-- `∑[A054849(n+5)]` -/
def P9801791300837777406.Spec : Prop :=
  ∀ n, P9801791300837777406.a n = A211388 n

end A211388

/-! ## A211388.P10938068755668246891

`A193845(eq[5, A002262(n)])`
-/

namespace A211388.P10938068755668246891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193845 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211388.P10938068755668246891

namespace A211388

/-- `A193845(eq[5, A002262(n)])` -/
def P10938068755668246891.Spec : Prop :=
  ∀ n, P10938068755668246891.a n = A211388 n

end A211388

/-! ## A211388.P4732458831401832216

`A119258(eq[7, A004736(n+1)])`
-/

namespace A211388.P4732458831401832216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211388.P4732458831401832216

namespace A211388

/-- `A119258(eq[7, A004736(n+1)])` -/
def P4732458831401832216.Spec : Prop :=
  ∀ n, P4732458831401832216.a n = A211388 n

end A211388

/-!
# A211390: The minimum cardinality of an n-qubit unextendible product basis.

The programs for A211390, there is no canonical definition to state claims against.
-/

/-! ## A211390.P15644661556211980645

`A303904(A356069(3*(n+1))+A003997(n+1))`
-/

namespace A211390.P15644661556211980645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303904 (A356069 (3 * (n + 1)) + A003997 (n + 1)).toNat

end

end A211390.P15644661556211980645

/-! ## A211390.P7893239062232633009

`or(n+1, ∑{e}[A329453(∏{e}[n+1, 3*2^#]), #])+1`
-/

namespace A211390.P7893239062232633009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329453 (∏ p ∈ Nat.primeFactors (f2 n), 3 * 2 ^ Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 1) (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) + 1

end

end A211390.P7893239062232633009

/-! ## A211390.P16100027589777882682

`xor(1, n+1)+A259896(A222955(n+1))+gcd(2, n)`
-/

namespace A211390.P16100027589777882682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (n + 1) : ℤ) + (A259896 (A222955 (n + 1)).toNat + (Nat.gcd 2 n : ℤ))

end

end A211390.P16100027589777882682

/-! ## A211390.P14199255374578336168

`A115728(A322584(n+1))+A001222(2^n)`
-/

namespace A211390.P14199255374578336168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115728 (A322584 (n + 1)).toNat + A001222 (2 ^ n)

end

end A211390.P14199255374578336168

/-! ## A211390.P10902357259356900746

`A000045(A033273(n+1))+A000005(A056450(n))`
-/

namespace A211390.P10902357259356900746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A033273 (n + 1)).toNat + A000005 (A056450 n).toNat

end

end A211390.P10902357259356900746

/-!
# A211392: The number of divisors d of n! such that the symmetric group on n letters contains no elements of order d.

The programs for A211392, there is no canonical definition to state claims against.
-/

/-! ## A211392.P4262356454341889838

`A027423(n+1)-A009490(n+1)`
-/

namespace A211392.P4262356454341889838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 (n + 1) - A009490 (n + 1)

end

end A211392.P4262356454341889838

/-! ## A211392.P3907295529747359026

`∑[A038024(n+1)]-A009490(n+1)`
-/

namespace A211392.P3907295529747359026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A009490 (n + 1)

end

end A211392.P3907295529747359026

/-!
# A211393: E.g.f.: exp( Sum_{n>=1} x^(2*n) / (2*n*(2*n-1)) ) = Sum_{n>=0} a(n)*x^(2*n)/(2*n)!.

The programs for A211393, there is no canonical definition to state claims against.
-/

/-! ## A211393.P7211037050337121732

`A102489(A322661(n))`
-/

namespace A211393.P7211037050337121732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (A322661 n).toNat

end

end A211393.P7211037050337121732

/-!
# A211394: T(n,k) = (k+n)*(k+n-1)/2-(k+n-1)*(-1)^(k+n)-k+2; n , k > 0, read by antidiagonals.

The programs for A211394, the canonical program `A211394.P13856090702538416621` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211394 has offset 1).

The definition of A211394 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211394.P13856090702538416621

`A003057(n+2)*A002024(n+1)/2-A002024(n+1)*(-1)^A003056(n)-A004736(n+1)+2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A211394

/-- `A003057(n+2)*A002024(n+1)/2-A002024(n+1)*(-1)^A003056(n)-A004736(n+1)+2` -/
def P13856090702538416621.Spec : Prop :=
  ∀ n, P13856090702538416621.a n = (A211394 (n + 1) : ℚ)

end A211394

/-! ## A211394.P13528720192958301099

`∑[1-A010816(n)]+1`
-/

namespace A211394.P13528720192958301099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A211394.P13528720192958301099

namespace A211394

/-- `∑[1-A010816(n)]+1` -/
def P13528720192958301099.Spec : Prop :=
  ∀ n, P13528720192958301099.a n = A211394 (n + 1)

end A211394

/-! ## A211394.P17109745626244300429

`A274093(n+1)+2+n`
-/

namespace A211394.P17109745626244300429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274093 (n + 1) + 2 + (n : ℤ)

end

end A211394.P17109745626244300429

namespace A211394

/-- `A274093(n+1)+2+n` -/
def P17109745626244300429.Spec : Prop :=
  ∀ n, P17109745626244300429.a n = A211394 (n + 1)

end A211394

/-! ## A211394.P10669312266010979811

`2-A274094(n+1)+n`
-/

namespace A211394.P10669312266010979811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A274094 (n + 1) + (n : ℤ)

end

end A211394.P10669312266010979811

namespace A211394

/-- `2-A274094(n+1)+n` -/
def P10669312266010979811.Spec : Prop :=
  ∀ n, P10669312266010979811.a n = A211394 (n + 1)

end A211394

/-! ## A211394.P12315292504794842349

`A221215(A056011(n+1))`
-/

namespace A211394.P12315292504794842349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221215 (A056011 (n + 1)).toNat

end

end A211394.P12315292504794842349

namespace A211394

/-- `A221215(A056011(n+1))` -/
def P12315292504794842349.Spec : Prop :=
  ∀ n, P12315292504794842349.a n = A211394 (n + 1)

end A211394

/-! ## A211394.P13827671779052970563

`A221217(n+1)-A114327(n)`
-/

namespace A211394.P13827671779052970563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221217 (n + 1) - A114327 n

end

end A211394.P13827671779052970563

namespace A211394

/-- `A221217(n+1)-A114327(n)` -/
def P13827671779052970563.Spec : Prop :=
  ∀ n, P13827671779052970563.a n = A211394 (n + 1)

end A211394

/-! ## A211394.P10269607485670095306

`2-A181983(A002024(n+1))+n`
-/

namespace A211394.P10269607485670095306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A181983 (A002024 (n + 1)).toNat + (n : ℤ)

end

end A211394.P10269607485670095306

namespace A211394

/-- `2-A181983(A002024(n+1))+n` -/
def P10269607485670095306.Spec : Prop :=
  ∀ n, P10269607485670095306.a n = A211394 (n + 1)

end A211394

/-! ## A211394.P13630716045262200154

`A221217(n+1)+n-A061579(n)`
-/

namespace A211394.P13630716045262200154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221217 (n + 1) + ((n : ℤ) - A061579 n)

end

end A211394.P13630716045262200154

namespace A211394

/-- `A221217(n+1)+n-A061579(n)` -/
def P13630716045262200154.Spec : Prop :=
  ∀ n, P13630716045262200154.a n = A211394 (n + 1)

end A211394

/-! ## A211394.P9482151269009555959

`n+1+A221217(n+1)-A038722(n+1)`
-/

namespace A211394.P9482151269009555959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A221217 (n + 1) - A038722 (n + 1))

end

end A211394.P9482151269009555959

namespace A211394

/-- `n+1+A221217(n+1)-A038722(n+1)` -/
def P9482151269009555959.Spec : Prop :=
  ∀ n, P9482151269009555959.a n = A211394 (n + 1)

end A211394

/-! ## A211394.P13834172259037217483

`A221215(n+1)+A221216(n+1)-A221217(n+1)`
-/

namespace A211394.P13834172259037217483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221215 (n + 1) + (A221216 (n + 1) - A221217 (n + 1))

end

end A211394.P13834172259037217483

namespace A211394

/-- `A221215(n+1)+A221216(n+1)-A221217(n+1)` -/
def P13834172259037217483.Spec : Prop :=
  ∀ n, P13834172259037217483.a n = A211394 (n + 1)

end A211394

/-! ## A211394.P14346812602953300640

`A221217(A038722(n+1))`
-/

namespace A211394.P14346812602953300640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221217 (A038722 (n + 1)).toNat

end

end A211394.P14346812602953300640

namespace A211394

/-- `A221217(A038722(n+1))` -/
def P14346812602953300640.Spec : Prop :=
  ∀ n, P14346812602953300640.a n = A211394 (n + 1)

end A211394

/-! ## A211394.P17225109739762791025

`A221216(A056023(n+1))`
-/

namespace A211394.P17225109739762791025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221216 (A056023 (n + 1)).toNat

end

end A211394.P17225109739762791025

namespace A211394

/-- `A221216(A056023(n+1))` -/
def P17225109739762791025.Spec : Prop :=
  ∀ n, P17225109739762791025.a n = A211394 (n + 1)

end A211394

/-! ## A211394.P6421778901787294805

`A221217(A061579(n)+1)`
-/

namespace A211394.P6421778901787294805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221217 (A061579 n + 1).toNat

end

end A211394.P6421778901787294805

namespace A211394

/-- `A221217(A061579(n)+1)` -/
def P6421778901787294805.Spec : Prop :=
  ∀ n, P6421778901787294805.a n = A211394 (n + 1)

end A211394

/-! ## A211394.P6364457666500811258

`A221217(A114327(n)+1+n)`
-/

namespace A211394.P6364457666500811258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221217 (A114327 n + 1 + (n : ℤ)).toNat

end

end A211394.P6364457666500811258

namespace A211394

/-- `A221217(A114327(n)+1+n)` -/
def P6364457666500811258.Spec : Prop :=
  ∀ n, P6364457666500811258.a n = A211394 (n + 1)

end A211394

/-! ## A211394.P9619183565026566274

`A221217(A002024(n+1)²-n)`
-/

namespace A211394.P9619183565026566274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221217 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A211394.P9619183565026566274

namespace A211394

/-- `A221217(A002024(n+1)²-n)` -/
def P9619183565026566274.Spec : Prop :=
  ∀ n, P9619183565026566274.a n = A211394 (n + 1)

end A211394

/-! ## A211394.P7567451251907254445

`A221216(A221217(A221215(n+1)))`
-/

namespace A211394.P7567451251907254445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221216 (A221217 (A221215 (n + 1)).toNat).toNat

end

end A211394.P7567451251907254445

namespace A211394

/-- `A221216(A221217(A221215(n+1)))` -/
def P7567451251907254445.Spec : Prop :=
  ∀ n, P7567451251907254445.a n = A211394 (n + 1)

end A211394

/-!
# A211395: Number of Sophie Germain primes between 2^n and 2^(n+1).

The programs for A211395, there is no canonical definition to state claims against.
-/

/-! ## A211395.P14903582495834490249

`Δ[A156874(2^n)]`
-/

namespace A211395.P14903582495834490249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156874 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211395.P14903582495834490249

/-! ## A211395.P10472458335151445675

`abs(Δ[A156874(A000079(n))])`
-/

namespace A211395.P10472458335151445675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156874 (A000079 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A211395.P10472458335151445675

/-! ## A211395.P12328189758242686863

`Δ[record[A156874(A029930(n))]]`
-/

namespace A211395.P12328189758242686863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156874 (A029930 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211395.P12328189758242686863

/-!
# A211396: Smallest prime substring of n, or 0 if no such substring exists.

The programs for A211396, there is no canonical definition to state claims against.
-/

/-! ## A211396.P15743802919292189082

`A047814(n)%A210174(A247451(n+1))`
-/

namespace A211396.P15743802919292189082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047814 n) (A210174 (A247451 (n + 1)).toNat)

end

end A211396.P15743802919292189082

/-! ## A211396.P3218635080300737257

`A047814(n)-A049502(A129953(A100092(n)))`
-/

namespace A211396.P3218635080300737257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n - A049502 (A129953 (A100092 n).toNat).toNat

end

end A211396.P3218635080300737257

/-! ## A211396.P14960868467675554436

`A375548(A008554(n+1))`
-/

namespace A211396.P14960868467675554436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375548 (A008554 (n + 1)).toNat

end

end A211396.P14960868467675554436

/-! ## A211396.P10287208213980550048

`A375548(A229621(n+1))`
-/

namespace A211396.P10287208213980550048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375548 (A229621 (n + 1)).toNat

end

end A211396.P10287208213980550048

/-!
# A211397: Number of Sophie Germain primes less than 2^n.

The programs for A211397, there is no canonical definition to state claims against.
-/

/-! ## A211397.P5144357240522480568

`∑[A211395(n)]-floor(acot(n))`
-/

namespace A211397.P5144357240522480568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A211397.P5144357240522480568

/-! ## A211397.P4065549973187013040

`∑[A211395(n)]-A000007(n)`
-/

namespace A211397.P4065549973187013040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000007 n

end

end A211397.P4065549973187013040

/-! ## A211397.P6869013175985442327

`∑[A211395(n)]%A160528(n)`
-/

namespace A211397.P6869013175985442327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A160528 n)

end

end A211397.P6869013175985442327

/-! ## A211397.P1736393589670403928

`∑[A211395(n)]-A000010(n+2)%2`
-/

namespace A211397.P1736393589670403928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.tmod (A000010 (n + 2)) 2

end

end A211397.P1736393589670403928

/-! ## A211397.P12671584860683811620

`A000040(n+1)%2*∑[A211395(n)]`
-/

namespace A211397.P12671584860683811620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211397.P12671584860683811620

/-!
# A211398: E.g.f.: Sum_{n>=0} log( Sum_{k>=0} (n+k)^k*x^k/k! )^n / n!.

The programs for A211398, there is no canonical definition to state claims against.
-/

/-! ## A211398.P2318955973720533534

`A004396(A082545(n))`
-/

namespace A211398.P2318955973720533534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A082545 n).toNat

end

end A211398.P2318955973720533534

/-!
# A211399: Triangle T(n,k), 0 <= k <= n, given by (0, 1, 0, 2, 0, 3, 0, 4, 0, 5, 0, ...) DELTA (1, 0, 3, 0, 5, 0, 7, 0, 9, 0, ...) where DELTA is the operator defined in A084938.

The programs for A211399, the canonical program `A211399.P9900320505604344895` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211399 has offset 0).

The definition of A211399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211399.P9900320505604344895

`col(n)*T(n-1,k)+(2*row(n)-2*col(n)+1)*T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A211399

/-- `col(n)*T(n-1,k)+(2*row(n)-2*col(n)+1)*T(n-1,k-1)` -/
def P9900320505604344895.Spec : Prop :=
  ∀ n, P9900320505604344895.a n = A211399 n

theorem P9900320505604344895.correct : P9900320505604344895.Spec := by
  intro n
  simp only [A211399]

end A211399

/-! ## A211399.P8513311943294231758

`A102365(∑[2*n]%comp[∑[n]])`
-/

namespace A211399.P8513311943294231758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A211399.P8513311943294231758

namespace A211399

/-- `A102365(∑[2*n]%comp[∑[n]])` -/
def P8513311943294231758.Spec : Prop :=
  ∀ n, P8513311943294231758.a n = A211399 n

end A211399

/-! ## A211399.P16348083864479960950

`A102365(∑[char[∑[n]]]²-n-1)`
-/

namespace A211399.P16348083864479960950
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A211399.P16348083864479960950

namespace A211399

/-- `A102365(∑[char[∑[n]]]²-n-1)` -/
def P16348083864479960950.Spec : Prop :=
  ∀ n, P16348083864479960950.a n = A211399 n

end A211399

/-! ## A211399.P88218965454709345

`A185411(n)/A130321(n)`
-/

namespace A211399.P88218965454709345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185411 n : ℚ) / (A130321 n : ℚ)

end

end A211399.P88218965454709345

namespace A211399

/-- `A185411(n)/A130321(n)` -/
def P88218965454709345.Spec : Prop :=
  ∀ n, P88218965454709345.a n = (A211399 n : ℚ)

end A211399

/-! ## A211399.P14198287457531804469

`A185411(n)/A057728(n+1)`
-/

namespace A211399.P14198287457531804469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185411 n : ℚ) / (A057728 (n + 1) : ℚ)

end

end A211399.P14198287457531804469

namespace A211399

/-- `A185411(n)/A057728(n+1)` -/
def P14198287457531804469.Spec : Prop :=
  ∀ n, P14198287457531804469.a n = (A211399 n : ℚ)

end A211399

/-! ## A211399.P14119770305582360057

`A185411(n)/A000079(A025581(n))`
-/

namespace A211399.P14119770305582360057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185411 n : ℚ) / (A000079 (A025581 n).toNat : ℚ)

end

end A211399.P14119770305582360057

namespace A211399

/-- `A185411(n)/A000079(A025581(n))` -/
def P14119770305582360057.Spec : Prop :=
  ∀ n, P14119770305582360057.a n = (A211399 n : ℚ)

end A211399

/-! ## A211399.P8212870906473069552

`A185411(n)/A059268(A061579(n))`
-/

namespace A211399.P8212870906473069552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185411 n : ℚ) / (A059268 (A061579 n).toNat : ℚ)

end

end A211399.P8212870906473069552

namespace A211399

/-- `A185411(n)/A059268(A061579(n))` -/
def P8212870906473069552.Spec : Prop :=
  ∀ n, P8212870906473069552.a n = (A211399 n : ℚ)

end A211399

