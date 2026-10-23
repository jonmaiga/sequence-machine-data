import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A251900: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum unequal to 4 or 5 and every diagonal and antidiagonal sum equal to 4 or 5.

The programs for A251900, there is no canonical definition to state claims against.
-/

/-! ## A251900.P13625446451941292852

`A251905(∑[n+2]+4)`
-/

namespace A251900.P13625446451941292852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251905 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251900.P13625446451941292852

/-! ## A251900.P9919787909376995865

`lcm(2, A251905(A167614(n+1)))`
-/

namespace A251900.P9919787909376995865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251905 (A167614 (n + 1)).toNat)

end

end A251900.P9919787909376995865

/-! ## A251900.P10892571004852744089

`A251905(A167614(n+1))+A025469(n)`
-/

namespace A251900.P10892571004852744089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251905 (A167614 (n + 1)).toNat + A025469 n

end

end A251900.P10892571004852744089

/-! ## A251900.P5280485594028882005

`A251905(A167614(n+1))%A251901(n+1)`
-/

namespace A251900.P5280485594028882005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251905 (A167614 (n + 1)).toNat) (A251901 (n + 1))

end

end A251900.P5280485594028882005

/-!
# A251901: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum unequal to 4 or 5 and every diagonal and antidiagonal sum equal to 4 or 5.

The programs for A251901, there is no canonical definition to state claims against.
-/

/-! ## A251901.P5562845700110168557

`A251905(A052905(n)+9)`
-/

namespace A251901.P5562845700110168557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251905 (A052905 n + 9).toNat

end

end A251901.P5562845700110168557

/-! ## A251901.P5088986482684036764

`A251905(A167614(n+2)+1)`
-/

namespace A251901.P5088986482684036764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251905 (A167614 (n + 2) + 1).toNat

end

end A251901.P5088986482684036764

/-! ## A251901.P12195264680991357650

`A251905(A167487(n+2)-3)`
-/

namespace A251901.P12195264680991357650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251905 (A167487 (n + 2) - 3).toNat

end

end A251901.P12195264680991357650

/-! ## A251901.P5261187820878323990

`A251905(A034856(n+2)+6)`
-/

namespace A251901.P5261187820878323990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251905 (A034856 (n + 2) + 6).toNat

end

end A251901.P5261187820878323990

/-! ## A251901.P18106130873470864078

`A251905(Δ[A023545(n+1)-n²])`
-/

namespace A251901.P18106130873470864078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251905 (f1 (n + 1) - f1 n).toNat

end

end A251901.P18106130873470864078

/-!
# A251902: Number of (n+2) X (5+2) 0..3 arrays with every 3 X 3 subblock row and column sum unequal to 4 or 5 and every diagonal and antidiagonal sum equal to 4 or 5.

The programs for A251902, there is no canonical definition to state claims against.
-/

/-! ## A251902.P14722094862534232073

`A251905(A167499(n+3))`
-/

namespace A251902.P14722094862534232073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251905 (A167499 (n + 3)).toNat

end

end A251902.P14722094862534232073

/-! ## A251902.P10535451058601463825

`A251905(A155212(n)+13)`
-/

namespace A251902.P10535451058601463825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251905 (A155212 n + 13).toNat

end

end A251902.P10535451058601463825

/-! ## A251902.P13458711451007095798

`A251905(A000096(n+3)+6)`
-/

namespace A251902.P13458711451007095798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251905 (A000096 (n + 3) + 6).toNat

end

end A251902.P13458711451007095798

/-! ## A251902.P7454930976359790425

`A251905(A038722(Δ[A023545(n+1)]))`
-/

namespace A251902.P7454930976359790425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251905 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A251902.P7454930976359790425

/-! ## A251902.P2767679726307060104

`A251905(A374005(n+1))`
-/

namespace A251902.P2767679726307060104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251905 (A374005 (n + 1)).toNat

end

end A251902.P2767679726307060104

/-!
# A251903: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum unequal to 4 or 5 and every diagonal and antidiagonal sum equal to 4 or 5.

The programs for A251903, there is no canonical definition to state claims against.
-/

/-! ## A251903.P6072938640069466924

`A251905(A000217(n+5)+6)`
-/

namespace A251903.P6072938640069466924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251905 (A000217 (n + 5) + 6).toNat

end

end A251903.P6072938640069466924

/-! ## A251903.P2248257620590028478

`A251905((n+5)²-A055999(n+1))`
-/

namespace A251903.P2248257620590028478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251905 (((n + 5) ^ 2 : ℤ) - A055999 (n + 1)).toNat

end

end A251903.P2248257620590028478

/-! ## A251903.P998695163729419188

`A251905(A167487(n+6)-A005843(n+7))`
-/

namespace A251903.P998695163729419188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251905 (A167487 (n + 6) - A005843 (n + 7)).toNat

end

end A251903.P998695163729419188

/-! ## A251903.P4253332631769282575

`A251905(A374007(n+1))`
-/

namespace A251903.P4253332631769282575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251905 (A374007 (n + 1)).toNat

end

end A251903.P4253332631769282575

/-! ## A251903.P18379198950726150092

`A251905(A052905(n+3))`
-/

namespace A251903.P18379198950726150092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251905 (A052905 (n + 3)).toNat

end

end A251903.P18379198950726150092

/-!
# A251904: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum unequal to 4 or 5 and every diagonal and antidiagonal sum equal to 4 or 5.

The programs for A251904, there is no canonical definition to state claims against.
-/

/-! ## A251904.P3757280486084022551

`A251905(A000217(n+6)+7)`
-/

namespace A251904.P3757280486084022551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251905 (A000217 (n + 6) + 7).toNat

end

end A251904.P3757280486084022551

/-! ## A251904.P8066042295022622784

`A251905(A167487(n+6)-(n+7))`
-/

namespace A251904.P8066042295022622784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251905 (A167487 (n + 6) - (n + 7 : ℤ)).toNat

end

end A251904.P8066042295022622784

/-! ## A251904.P17770121227969833867

`A251905(A046691(n)+A016813(n+7))`
-/

namespace A251904.P17770121227969833867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251905 (A046691 n + A016813 (n + 7)).toNat

end

end A251904.P17770121227969833867

/-! ## A251904.P16342495591543616834

`A251905(A167614(n+7)-A004273(n+6))`
-/

namespace A251904.P16342495591543616834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251905 (A167614 (n + 7) - A004273 (n + 6)).toNat

end

end A251904.P16342495591543616834

/-! ## A251904.P5914402742125533520

`A251905(A374008(n+1))`
-/

namespace A251904.P5914402742125533520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251905 (A374008 (n + 1)).toNat

end

end A251904.P5914402742125533520

/-!
# A251906: Number of (n+2)X(1+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 4 or 5.

The programs for A251906, there is no canonical definition to state claims against.
-/

/-! ## A251906.P16373606306092787578

`A251909(∑[n]+1)`
-/

namespace A251906.P16373606306092787578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251909 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251906.P16373606306092787578

/-! ## A251906.P7635063318342096768

`lcm(2, A251909(A000124(n)))`
-/

namespace A251906.P7635063318342096768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251909 (A000124 n).toNat)

end

end A251906.P7635063318342096768

/-! ## A251906.P4289567966028982845

`record[A010054(n)*A251909(n+1)]`
-/

namespace A251906.P4289567966028982845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251906.P4289567966028982845

/-! ## A251906.P361235240158432248

`record[A251909(n+1)/A015129(n)]`
-/

namespace A251906.P361235240158432248
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251909 (n + 1) : ℚ) / (A015129 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251906.P361235240158432248

/-! ## A251906.P6372206012363368301

`record[A251909(n+1)/A249677(n)]`
-/

namespace A251906.P6372206012363368301
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251909 (n + 1) : ℚ) / (A249677 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251906.P6372206012363368301

/-!
# A251907: Number of (n+2)X(2+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 4 or 5.

The programs for A251907, there is no canonical definition to state claims against.
-/

/-! ## A251907.P7099865977285257689

`A251909(∑[n+1]+2)`
-/

namespace A251907.P7099865977285257689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251909 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251907.P7099865977285257689

/-! ## A251907.P10848414743437171501

`lcm(2, A251909(A000096(n)+3))`
-/

namespace A251907.P10848414743437171501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251909 (A000096 n + 3).toNat)

end

end A251907.P10848414743437171501

/-! ## A251907.P12832936046196641060

`record[A010054(n)*A251909(n+2)]`
-/

namespace A251907.P12832936046196641060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251907.P12832936046196641060

/-! ## A251907.P17968085055907198087

`record[gcd(A002262(n), A251909(n+2))]`
-/

namespace A251907.P17968085055907198087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251909 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251907.P17968085055907198087

/-!
# A251908: Number of (n+2)X(3+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 4 or 5.

The programs for A251908, there is no canonical definition to state claims against.
-/

/-! ## A251908.P14635946854681483355

`A251909(∑[n+2]+4)`
-/

namespace A251908.P14635946854681483355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251909 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251908.P14635946854681483355

/-! ## A251908.P17146616078985748829

`lcm(2, A251909(A167614(n+1)))`
-/

namespace A251908.P17146616078985748829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251909 (A167614 (n + 1)).toNat)

end

end A251908.P17146616078985748829

/-! ## A251908.P4734922060011847828

`record[root(A251909(n+4), A181187(n+1))]`
-/

namespace A251908.P4734922060011847828
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251909 (n + 4) : ℝ) ^ (1 / (A181187 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251908.P4734922060011847828

/-!
# A251910: Number of (n+2)X(1+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 2 or 7.

The programs for A251910, there is no canonical definition to state claims against.
-/

/-! ## A251910.P10730541633546947590

`A251912(∑[n]+1)`
-/

namespace A251910.P10730541633546947590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251912 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251910.P10730541633546947590

/-! ## A251910.P8069147610210202598

`lcm(2, A251912(A000124(n)))`
-/

namespace A251910.P8069147610210202598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251912 (A000124 n).toNat)

end

end A251910.P8069147610210202598

/-! ## A251910.P11793021021962467556

`record[A010054(n)*A251912(n+1)]`
-/

namespace A251910.P11793021021962467556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251910.P11793021021962467556

/-!
# A251911: Number of (n+2) X (2+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3 X 3 subblock summing to 2 or 7.

The programs for A251911, there is no canonical definition to state claims against.
-/

/-! ## A251911.P13898471959283190330

`A251912(∑[n+1]+2)`
-/

namespace A251911.P13898471959283190330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251912 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251911.P13898471959283190330

/-! ## A251911.P12808698142078985239

`record[A251912(A251547(3*n+2))]`
-/

namespace A251911.P12808698142078985239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251912 (A251547 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251911.P12808698142078985239

/-!
# A251914: Numbers n such that the sum of the triangular numbers T(n) and T(n+1) is equal to the pentagonal number P(m) for some m.

The programs for A251914, the canonical program `A251914.P6618389004869711842` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251914 has offset 1).

The definition of A251914 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251914.P6618389004869711842

`A046173(n+1)-1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A251914

/-- `A046173(n+1)-1` -/
def P6618389004869711842.Spec : Prop :=
  ∀ n, P6618389004869711842.a n = A251914 (n + 1)

theorem P6618389004869711842.correct : P6618389004869711842.Spec := by
  intro n
  simp only [A251914, Nat.add_sub_cancel]

end A251914

/-! ## A251914.P10720514125737757623

`Δ[A108741(n)]-1`
-/

namespace A251914.P10720514125737757623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A251914.P10720514125737757623

namespace A251914

/-- `Δ[A108741(n)]-1` -/
def P10720514125737757623.Spec : Prop :=
  ∀ n, P10720514125737757623.a n = A251914 (n + 1)

end A251914

/-! ## A251914.P8993267887408695769

`A004189(Δ[n²])-1`
-/

namespace A251914.P8993267887408695769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A251914.P8993267887408695769

namespace A251914

/-- `A004189(Δ[n²])-1` -/
def P8993267887408695769.Spec : Prop :=
  ∀ n, P8993267887408695769.a n = A251914 (n + 1)

end A251914

/-! ## A251914.P11473589880704012012

`xor(1, Δ[A004189(n)²])`
-/

namespace A251914.P11473589880704012012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n)

end

end A251914.P11473589880704012012

namespace A251914

/-- `xor(1, Δ[A004189(n)²])` -/
def P11473589880704012012.Spec : Prop :=
  ∀ n, P11473589880704012012.a n = A251914 (n + 1)

end A251914

/-! ## A251914.P16905987626921951814

`∑[A087799(2*n)]-2`
-/

namespace A251914.P16905987626921951814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087799 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A251914.P16905987626921951814

namespace A251914

/-- `∑[A087799(2*n)]-2` -/
def P16905987626921951814.Spec : Prop :=
  ∀ n, P16905987626921951814.a n = A251914 (n + 1)

end A251914

/-! ## A251914.P5515238522071294252

`2*(A248205(n+1)-1)`
-/

namespace A251914.P5515238522071294252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A248205 (n + 1) - 1)

end

end A251914.P5515238522071294252

namespace A251914

/-- `2*(A248205(n+1)-1)` -/
def P5515238522071294252.Spec : Prop :=
  ∀ n, P5515238522071294252.a n = A251914 (n + 1)

end A251914

/-! ## A251914.P7224092837065775126

`A001078(comp[2*n])/2-1`
-/

namespace A251914.P7224092837065775126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001078 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2 - 1

end

end A251914.P7224092837065775126

namespace A251914

/-- `A001078(comp[2*n])/2-1` -/
def P7224092837065775126.Spec : Prop :=
  ∀ n, P7224092837065775126.a n = (A251914 (n + 1) : ℚ)

end A251914

/-! ## A251914.P8839561717690201264

`Δ[A054320(n)]*A004189(n)`
-/

namespace A251914.P8839561717690201264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A004189 n

end

end A251914.P8839561717690201264

namespace A251914

/-- `Δ[A054320(n)]*A004189(n)` -/
def P8839561717690201264.Spec : Prop :=
  ∀ n, P8839561717690201264.a n = A251914 (n + 1)

end A251914

/-! ## A251914.P12009821157672391350

`(A001078(A005408(n))-2)/2`
-/

namespace A251914.P12009821157672391350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001078 (A005408 n).toNat - 2 : ℚ) / 2

end

end A251914.P12009821157672391350

namespace A251914

/-- `(A001078(A005408(n))-2)/2` -/
def P12009821157672391350.Spec : Prop :=
  ∀ n, P12009821157672391350.a n = (A251914 (n + 1) : ℚ)

end A251914

/-! ## A251914.P10515263121337566934

`A001078(n)*A001079(n+1)`
-/

namespace A251914.P10515263121337566934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001078 n * A001079 (n + 1)

end

end A251914.P10515263121337566934

namespace A251914

/-- `A001078(n)*A001079(n+1)` -/
def P10515263121337566934.Spec : Prop :=
  ∀ n, P10515263121337566934.a n = A251914 (n + 1)

end A251914

/-!
# A251915: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum 2 4 5 or 7 and every diagonal and antidiagonal sum not 2 4 5 or 7.

The programs for A251915, there is no canonical definition to state claims against.
-/

/-! ## A251915.P9507939105373183890

`A251923(∑[4*n]+1)`
-/

namespace A251915.P9507939105373183890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251915.P9507939105373183890

/-! ## A251915.P6686838423033297713

`lcm(2, A251923(A001844(n)))`
-/

namespace A251915.P6686838423033297713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251923 (A001844 n).toNat)

end

end A251915.P6686838423033297713

/-! ## A251915.P15208475658726791425

`record[gcd(A114327(n), A251923(n+1))]`
-/

namespace A251915.P15208475658726791425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A251923 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251915.P15208475658726791425

/-! ## A251915.P1120183995762136614

`A251923(A001844(n))+A036860(n+1)`
-/

namespace A251915.P1120183995762136614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (A001844 n).toNat + A036860 (n + 1)

end

end A251915.P1120183995762136614

/-! ## A251915.P17181119091865539045

`A251923(A001844(n))+A036861(n+1)`
-/

namespace A251915.P17181119091865539045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (A001844 n).toNat + A036861 (n + 1)

end

end A251915.P17181119091865539045

/-!
# A251916: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum 2 4 5 or 7 and every diagonal and antidiagonal sum not 2 4 5 or 7.

The programs for A251916, there is no canonical definition to state claims against.
-/

/-! ## A251916.P8748304379506041733

`A251923(∑[n]+1)`
-/

namespace A251916.P8748304379506041733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251916.P8748304379506041733

/-! ## A251916.P291887307662905659

`lcm(2, A251923(A000124(n)))`
-/

namespace A251916.P291887307662905659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251923 (A000124 n).toNat)

end

end A251916.P291887307662905659

/-! ## A251916.P13951038135065588043

`record[A010054(n)*A251923(n+1)]`
-/

namespace A251916.P13951038135065588043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251916.P13951038135065588043

/-! ## A251916.P10384381849284981761

`record[A103451(n)*A251923(n+1)]`
-/

namespace A251916.P10384381849284981761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A251923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251916.P10384381849284981761

/-! ## A251916.P15160426679372744692

`record[A251923(n+1)/A328887(n)]`
-/

namespace A251916.P15160426679372744692
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251923 (n + 1) : ℚ) / (A328887 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251916.P15160426679372744692

/-!
# A251917: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum 2 4 5 or 7 and every diagonal and antidiagonal sum not 2 4 5 or 7.

The programs for A251917, there is no canonical definition to state claims against.
-/

/-! ## A251917.P16122770219793307818

`A251923(∑[n+1]+2)`
-/

namespace A251917.P16122770219793307818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251917.P16122770219793307818

/-! ## A251917.P18104263468607813882

`A251923(A133263(n+1))+char[37]`
-/

namespace A251917.P18104263468607813882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A251917.P18104263468607813882

/-! ## A251917.P17589570186679164553

`record[A010054(n)*A251923(n+2)]`
-/

namespace A251917.P17589570186679164553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251923 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251917.P17589570186679164553

/-! ## A251917.P9022857471751382165

`A251923(A133263(n+1))%A017622(n)`
-/

namespace A251917.P9022857471751382165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251923 (A133263 (n + 1)).toNat) (A017622 n)

end

end A251917.P9022857471751382165

/-! ## A251917.P9094056109527516461

`A001222(A002146(n))*A251923(A133263(n+1))`
-/

namespace A251917.P9094056109527516461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002146 n).toNat * A251923 (A133263 (n + 1)).toNat

end

end A251917.P9094056109527516461

/-!
# A251918: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum 2 4 5 or 7 and every diagonal and antidiagonal sum not 2 4 5 or 7.

The programs for A251918, there is no canonical definition to state claims against.
-/

/-! ## A251918.P5142973735887986521

`A251923(∑[n+2]+4)`
-/

namespace A251918.P5142973735887986521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251918.P5142973735887986521

/-! ## A251918.P1592341998827476049

`lcm(2, A251923(A167614(n+1)))`
-/

namespace A251918.P1592341998827476049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251923 (A167614 (n + 1)).toNat)

end

end A251918.P1592341998827476049

/-! ## A251918.P13735956567665264330

`A251923(A167614(n+1))+A025469(n)`
-/

namespace A251918.P13735956567665264330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (A167614 (n + 1)).toNat + A025469 n

end

end A251918.P13735956567665264330

/-! ## A251918.P17963790587981083403

`A251923(A167614(n+1))%A251919(n+1)`
-/

namespace A251918.P17963790587981083403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251923 (A167614 (n + 1)).toNat) (A251919 (n + 1))

end

end A251918.P17963790587981083403

/-! ## A251918.P12719491048909977950

`lcm((-1)^n, A251923(A034856(n+2)))`
-/

namespace A251918.P12719491048909977950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A251923 (A034856 (n + 2)).toNat)

end

end A251918.P12719491048909977950

/-!
# A251919: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum 2 4 5 or 7 and every diagonal and antidiagonal sum not 2 4 5 or 7.

The programs for A251919, there is no canonical definition to state claims against.
-/

/-! ## A251919.P18433047974315199389

`A251923(A141214(n)+7)`
-/

namespace A251919.P18433047974315199389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (A141214 n + 7).toNat

end

end A251919.P18433047974315199389

/-! ## A251919.P16733228419293447387

`A251923(A052905(n)+9)`
-/

namespace A251919.P16733228419293447387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (A052905 n + 9).toNat

end

end A251919.P16733228419293447387

/-! ## A251919.P17313334453293331327

`A251923(A167614(n+2)+1)`
-/

namespace A251919.P17313334453293331327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (A167614 (n + 2) + 1).toNat

end

end A251919.P17313334453293331327

/-! ## A251919.P4943644942337002822

`A251923(A167487(n+2)-3)`
-/

namespace A251919.P4943644942337002822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (A167487 (n + 2) - 3).toNat

end

end A251919.P4943644942337002822

/-! ## A251919.P13925123646696204492

`A251923(Δ[A023545(n+1)-n²])`
-/

namespace A251919.P13925123646696204492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (f1 (n + 1) - f1 n).toNat

end

end A251919.P13925123646696204492

/-!
# A251920: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum 2 4 5 or 7 and every diagonal and antidiagonal sum not 2 4 5 or 7.

The programs for A251920, there is no canonical definition to state claims against.
-/

/-! ## A251920.P2697173038100115178

`A251923(A167499(n+3))`
-/

namespace A251920.P2697173038100115178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (A167499 (n + 3)).toNat

end

end A251920.P2697173038100115178

/-! ## A251920.P11265443405937121747

`A251923(A155212(n)+13)`
-/

namespace A251920.P11265443405937121747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (A155212 n + 13).toNat

end

end A251920.P11265443405937121747

/-! ## A251920.P10846079750356794913

`A251923(A000217(n+4)+5)`
-/

namespace A251920.P10846079750356794913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (A000217 (n + 4) + 5).toNat

end

end A251920.P10846079750356794913

/-! ## A251920.P13840471323771220141

`A251923(A000124(n+5)-(n+1))`
-/

namespace A251920.P13840471323771220141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A251920.P13840471323771220141

/-! ## A251920.P10198371034235376423

`A251923(A374005(n+1))`
-/

namespace A251920.P10198371034235376423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (A374005 (n + 1)).toNat

end

end A251920.P10198371034235376423

/-!
# A251921: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum 2 4 5 or 7 and every diagonal and antidiagonal sum not 2 4 5 or 7.

The programs for A251921, there is no canonical definition to state claims against.
-/

/-! ## A251921.P738045363320206797

`A251923(A167614(n+4)+3)`
-/

namespace A251921.P738045363320206797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (A167614 (n + 4) + 3).toNat

end

end A251921.P738045363320206797

/-! ## A251921.P16616607155269620948

`A251923(A000124(n+5)+5)`
-/

namespace A251921.P16616607155269620948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (A000124 (n + 5) + 5).toNat

end

end A251921.P16616607155269620948

/-! ## A251921.P1115953854488575533

`A251923(A374007(n+1))`
-/

namespace A251921.P1115953854488575533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (A374007 (n + 1)).toNat

end

end A251921.P1115953854488575533

/-! ## A251921.P4606722293966776609

`A251923(A052905(n+3))`
-/

namespace A251921.P4606722293966776609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (A052905 (n + 3)).toNat

end

end A251921.P4606722293966776609

/-! ## A251921.P9534522281157732121

`A251923(A000096(n+5)-4)`
-/

namespace A251921.P9534522281157732121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (A000096 (n + 5) - 4).toNat

end

end A251921.P9534522281157732121

/-!
# A251922: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum 2 4 5 or 7 and every diagonal and antidiagonal sum not 2 4 5 or 7.

The programs for A251922, there is no canonical definition to state claims against.
-/

/-! ## A251922.P9460974939579278929

`A251923(A167487(n+5))`
-/

namespace A251922.P9460974939579278929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (A167487 (n + 5)).toNat

end

end A251922.P9460974939579278929

/-! ## A251922.P10172703488884340166

`A251923(A167614(n+5)+4)`
-/

namespace A251922.P10172703488884340166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (A167614 (n + 5) + 4).toNat

end

end A251922.P10172703488884340166

/-! ## A251922.P8080994476556567388

`A251923(A000124(n+6)+6)`
-/

namespace A251922.P8080994476556567388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (A000124 (n + 6) + 6).toNat

end

end A251922.P8080994476556567388

/-! ## A251922.P5908367131371820801

`A251923(A055999(n+3)+13)`
-/

namespace A251922.P5908367131371820801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (A055999 (n + 3) + 13).toNat

end

end A251922.P5908367131371820801

/-! ## A251922.P18295825344660449328

`A251923(eq[6, A002262(n)]+1)`
-/

namespace A251922.P18295825344660449328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251923 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A251922.P18295825344660449328

/-!
# A251924: Numbers n such that the sum of the triangular numbers T(n) and T(n+1) is equal to a hexagonal number H(m) for some m.

The programs for A251924, there is no canonical definition to state claims against.
-/

/-! ## A251924.P11112781358315535652

`A076708(Δ[n²])`
-/

namespace A251924.P11112781358315535652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076708 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A251924.P11112781358315535652

/-! ## A251924.P16137458635973817106

`Δ[A001110(n)]-1`
-/

namespace A251924.P16137458635973817106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A251924.P16137458635973817106

/-! ## A251924.P5500239569304915068

`A046176(n+1)-1`
-/

namespace A251924.P5500239569304915068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046176 (n + 1) - 1

end

end A251924.P5500239569304915068

/-! ## A251924.P17383553358421107755

`(A111649(n)-3)/2`
-/

namespace A251924.P17383553358421107755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111649 n - 3 : ℚ) / 2

end

end A251924.P17383553358421107755

/-! ## A251924.P5780327915428425338

`A001109(Δ[n²])-1`
-/

namespace A251924.P5780327915428425338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A251924.P5780327915428425338

/-! ## A251924.P2141428973140964180

`A144534(Δ[n²])-1`
-/

namespace A251924.P2141428973140964180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144534 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A251924.P2141428973140964180

/-! ## A251924.P7364511435574726580

`xor(1, Δ[A001109(n)²])`
-/

namespace A251924.P7364511435574726580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n)

end

end A251924.P7364511435574726580

/-! ## A251924.P8663347546530609438

`2*(∑[A056771(n)]-1)`
-/

namespace A251924.P8663347546530609438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A251924.P8663347546530609438

/-! ## A251924.P9173639452638751123

`∑[A003499(2*n)]-2`
-/

namespace A251924.P9173639452638751123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003499 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A251924.P9173639452638751123

/-! ## A251924.P10812017531990996871

`2*(A253826(n+1)-1)`
-/

namespace A251924.P10812017531990996871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A253826 (n + 1) - 1)

end

end A251924.P10812017531990996871

/-!
# A251925: Prime powers p^k (k>=2) of the form (n^2+1)/2.

The programs for A251925, there is no canonical definition to state claims against.
-/

/-! ## A251925.P6053843597380233709

`A008844(∑[∑{p}[n+1, ceil(n/#)]!])`
-/

namespace A251925.P6053843597380233709
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), ⌈(n : ℚ) / (p : ℚ)⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008844 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251925.P6053843597380233709

/-!
# A251926: The Faulhaber-Knuth a(0,n) sequence.

The programs for A251926, there is no canonical definition to state claims against.
-/

/-! ## A251926.P7936683429332745156

`A217642(a(n-1))` with `a(0)=2, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=0, a(6)=0, a(7)=1`
-/

namespace A251926.P7936683429332745156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1, 1, 1, 0, 0, 1] fun n a =>
  A217642 (a (n - 1)).toNat

end

end A251926.P7936683429332745156

/-! ## A251926.P11967455620019580142

`A072233(A061989(a(n-1)+n))` with `a(0)=2`
-/

namespace A251926.P11967455620019580142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A072233 (A061989 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A251926.P11967455620019580142

/-! ## A251926.P9237809761606358226

`A030016(A308733(a(n-1)+n))` with `a(0)=2`
-/

namespace A251926.P9237809761606358226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A030016 (A308733 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A251926.P9237809761606358226

/-! ## A251926.P8285593129113990770

`A342981(A293933(a(n-1)+n))` with `a(0)=2`
-/

namespace A251926.P8285593129113990770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A342981 (A293933 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A251926.P8285593129113990770

/-! ## A251926.P7716070559168751920

`A097794(∑[A080468(n+2)]²+2)`
-/

namespace A251926.P7716070559168751920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097794 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2).toNat

end

end A251926.P7716070559168751920

/-!
# A251927: Numbers n such that the sum of the triangular numbers T(n) and T(n+1) is equal to a heptagonal number H(m) for some m.

The programs for A251927, there is no canonical definition to state claims against.
-/

/-! ## A251927.P13793709491950703371

`A046196(n+1)-1`
-/

namespace A251927.P13793709491950703371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046196 (n + 1) - 1

end

end A251927.P13793709491950703371

/-! ## A251927.P739756404229983957

`A075873(2*(n+1))-1`
-/

namespace A251927.P739756404229983957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075873 (2 * (n + 1)) - 1

end

end A251927.P739756404229983957

/-! ## A251927.P4492853278488435445

`2*(A253920(n+1)-1)`
-/

namespace A251927.P4492853278488435445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A253920 (n + 1) - 1)

end

end A251927.P4492853278488435445

/-! ## A251927.P7817220529506745122

`xor(char[A028242(n)], A046196(n+1))`
-/

namespace A251927.P7817220529506745122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A046196 (n + 1))

end

end A251927.P7817220529506745122

/-! ## A251927.P12943056320212733133

`xor(char[A057979(n)], A046196(n+1))`
-/

namespace A251927.P12943056320212733133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A046196 (n + 1))

end

end A251927.P12943056320212733133

/-! ## A251927.P164796937631701209

`A075873(2*(n+1))+A001489(n+1)+n`
-/

namespace A251927.P164796937631701209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075873 (2 * (n + 1)) + A001489 (n + 1) + (n : ℤ)

end

end A251927.P164796937631701209

/-! ## A251927.P15741229253871659250

`A075836(2*(n+1))/2-1`
-/

namespace A251927.P15741229253871659250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075836 (2 * (n + 1)) : ℚ) / 2 - 1

end

end A251927.P15741229253871659250

/-!
# A251928: Number of length n+2 0..1 arrays with the sum of the maximum minus the median of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A251928, the canonical program `A251928.P15244553157165878968` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251928 has offset 1).

The definition of A251928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251928.P15244553157165878968

`A077943(n)+2^(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A251928

/-- `A077943(n)+2^(n+2)` -/
def P15244553157165878968.Spec : Prop :=
  ∀ n, P15244553157165878968.a n = A251928 (n + 1)

theorem P15244553157165878968.correct : P15244553157165878968.Spec := by
  intro n
  simp only [A251928, Nat.add_sub_cancel]

end A251928

/-! ## A251928.P50721478823375932

`xor(A020707(n), A077943(n))`
-/

namespace A251928.P50721478823375932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020707 n) (A077943 n)

end

end A251928.P50721478823375932

namespace A251928

/-- `xor(A020707(n), A077943(n))` -/
def P50721478823375932.Spec : Prop :=
  ∀ n, P50721478823375932.a n = A251928 (n + 1)

end A251928

/-! ## A251928.P6143236103813159429

`A020707(n)+∑[A078003(n)]`
-/

namespace A251928.P6143236103813159429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251928.P6143236103813159429

namespace A251928

/-- `A020707(n)+∑[A078003(n)]` -/
def P6143236103813159429.Spec : Prop :=
  ∀ n, P6143236103813159429.a n = A251928 (n + 1)

end A251928

/-! ## A251928.P12719348741049578855

`A020707(n)+∑[A122788(n+1)]`
-/

namespace A251928.P12719348741049578855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251928.P12719348741049578855

namespace A251928

/-- `A020707(n)+∑[A122788(n+1)]` -/
def P12719348741049578855.Spec : Prop :=
  ∀ n, P12719348741049578855.a n = A251928 (n + 1)

end A251928

/-! ## A251928.P17425090688109487006

`A000079(n+2)+∑[A078003(n)]`
-/

namespace A251928.P17425090688109487006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251928.P17425090688109487006

namespace A251928

/-- `A000079(n+2)+∑[A078003(n)]` -/
def P17425090688109487006.Spec : Prop :=
  ∀ n, P17425090688109487006.a n = A251928 (n + 1)

end A251928

/-! ## A251928.P11177107071865779261

`A000079(n+2)+∑[A122788(n+1)]`
-/

namespace A251928.P11177107071865779261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251928.P11177107071865779261

namespace A251928

/-- `A000079(n+2)+∑[A122788(n+1)]` -/
def P11177107071865779261.Spec : Prop :=
  ∀ n, P11177107071865779261.a n = A251928 (n + 1)

end A251928

/-! ## A251928.P6720079893335581491

`4*a(n-1)-6*a(n-2)+6*a(n-3)-4*a(n-4)` with `a(0)=5, a(1)=10, a(2)=18, a(3)=34`
-/

namespace A251928.P6720079893335581491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 10, 18, 34] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 6 * a (n - 3) - 4 * a (n - 4)

end

end A251928.P6720079893335581491

namespace A251928

/-- `4*a(n-1)-6*a(n-2)+6*a(n-3)-4*a(n-4)` -/
def P6720079893335581491.Spec : Prop :=
  ∀ n, P6720079893335581491.a n = A251928 (n + 1)

end A251928

/-! ## A251928.P1598844086975285316

`Δ[Δ[A393945(n+3)]]`
-/

namespace A251928.P1598844086975285316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393945 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251928.P1598844086975285316

namespace A251928

/-- `Δ[Δ[A393945(n+3)]]` -/
def P1598844086975285316.Spec : Prop :=
  ∀ n, P1598844086975285316.a n = A251928 (n + 1)

end A251928

/-!
# A251929: Number of length n+2 0..2 arrays with the sum of the maximum minus the median of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A251929, there is no canonical definition to state claims against.
-/

/-! ## A251929.P9951875515590684734

`A251935(∑[n+2])`
-/

namespace A251929.P9951875515590684734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251929.P9951875515590684734

/-! ## A251929.P8154691014707315210

`record[A251935(abs(A201163(n)))]`
-/

namespace A251929.P8154691014707315210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251929.P8154691014707315210

/-! ## A251929.P15626021192081792505

`record[A251935(Δ[A003453(n+5)])]`
-/

namespace A251929.P15626021192081792505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251929.P15626021192081792505

/-! ## A251929.P12584831391033886051

`or(char[1], A251935(A055998(n)+2))`
-/

namespace A251929.P12584831391033886051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A251935 (A055998 n + 2).toNat)

end

end A251929.P12584831391033886051

/-! ## A251929.P2737298333780909113

`A324870(n+1)+A251935(A000096(n+1))`
-/

namespace A251929.P2737298333780909113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324870 (n + 1) + A251935 (A000096 (n + 1)).toNat

end

end A251929.P2737298333780909113

/-!
# A251930: Number of length n+2 0..3 arrays with the sum of the maximum minus the median of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A251930, there is no canonical definition to state claims against.
-/

/-! ## A251930.P5922000740918344622

`A251935(∑[n+3]+1)`
-/

namespace A251930.P5922000740918344622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251930.P5922000740918344622

/-! ## A251930.P10636098564339755987

`record[A251935(A198464(n+1))]`
-/

namespace A251930.P10636098564339755987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251930.P10636098564339755987

/-! ## A251930.P12141315061838492005

`A251935(A034856(n+2))+char[19]`
-/

namespace A251930.P12141315061838492005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A251930.P12141315061838492005

/-! ## A251930.P3254414785836491546

`A007318(C(2, n))*A251935(A034856(n+2))`
-/

namespace A251930.P3254414785836491546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A251935 (A034856 (n + 2)).toNat

end

end A251930.P3254414785836491546

/-! ## A251930.P2275936880813059528

`A000041(C(n, 64))*A251935(A034856(n+2))`
-/

namespace A251930.P2275936880813059528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64) * A251935 (A034856 (n + 2)).toNat

end

end A251930.P2275936880813059528

/-!
# A251931: Number of length n+2 0..4 arrays with the sum of the maximum minus the median of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A251931, there is no canonical definition to state claims against.
-/

/-! ## A251931.P16531892414277973437

`A251935(∑[n+4]+3)`
-/

namespace A251931.P16531892414277973437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A251931.P16531892414277973437

/-! ## A251931.P2415542307694773340

`A251935(A027379(n+2))+char[17]`
-/

namespace A251931.P2415542307694773340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (A027379 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A251931.P2415542307694773340

/-! ## A251931.P11052802463362449004

`A251935(A141214(n+1))+char[19]`
-/

namespace A251931.P11052802463362449004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (A141214 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A251931.P11052802463362449004

/-! ## A251931.P3393283268356854566

`A251935(A055998(n+2))+char[22]`
-/

namespace A251931.P3393283268356854566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (A055998 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A251931.P3393283268356854566

/-! ## A251931.P12984578304693055907

`record[A251935(A141214(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A251931.P12984578304693055907
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (A141214 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251931.P12984578304693055907

/-!
# A251932: Number of length n+2 0..5 arrays with the sum of the maximum minus the median of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A251932, there is no canonical definition to state claims against.
-/

/-! ## A251932.P17843109972429467936

`A251935(C(n+5, 2)+n+1)`
-/

namespace A251932.P17843109972429467936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (Nat.choose (n + 5) 2 + (n + 1))

end

end A251932.P17843109972429467936

/-! ## A251932.P15937931325629813396

`A251935(Δ[A264443(n)])`
-/

namespace A251932.P15937931325629813396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (f1 (n + 1) - f1 n).toNat

end

end A251932.P15937931325629813396

/-! ## A251932.P14040925291990866035

`A251935(A046691(n+3))`
-/

namespace A251932.P14040925291990866035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (A046691 (n + 3)).toNat

end

end A251932.P14040925291990866035

/-! ## A251932.P18192285876890385916

`A251935(A056115(n)+11)`
-/

namespace A251932.P18192285876890385916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (A056115 n + 11).toNat

end

end A251932.P18192285876890385916

/-! ## A251932.P7364972903014200374

`A251935(eq[2, A092921(n)])`
-/

namespace A251932.P7364972903014200374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251932.P7364972903014200374

/-!
# A251933: Number of length n+2 0..6 arrays with the sum of the maximum minus the median of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A251933, there is no canonical definition to state claims against.
-/

/-! ## A251933.P2106357691394438581

`A251935(A052905(n+3))`
-/

namespace A251933.P2106357691394438581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (A052905 (n + 3)).toNat

end

end A251933.P2106357691394438581

/-! ## A251933.P17218433754241031776

`A251935(A056119(n)+16)`
-/

namespace A251933.P17218433754241031776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (A056119 n + 16).toNat

end

end A251933.P17218433754241031776

/-! ## A251933.P16940073775090859443

`A251935(eq[3, A219347(n)])`
-/

namespace A251933.P16940073775090859443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251933.P16940073775090859443

/-! ## A251933.P1836711415018741692

`A251935(eq[5, A193592(n)])`
-/

namespace A251933.P1836711415018741692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251933.P1836711415018741692

/-! ## A251933.P15866899433126969114

`A251935(eq[8, A258709(n)])`
-/

namespace A251933.P15866899433126969114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251933.P15866899433126969114

/-!
# A251934: Number of length n+2 0..7 arrays with the sum of the maximum minus the median of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A251934, there is no canonical definition to state claims against.
-/

/-! ## A251934.P17241397332787959829

`A251935(A055999(n+4))`
-/

namespace A251934.P17241397332787959829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (A055999 (n + 4)).toNat

end

end A251934.P17241397332787959829

/-! ## A251934.P5279346245675993912

`A251935(eq[4, A219347(n)])`
-/

namespace A251934.P5279346245675993912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251934.P5279346245675993912

/-! ## A251934.P16750530176238307064

`A251935(eq[6, A193592(n)])`
-/

namespace A251934.P16750530176238307064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251934.P16750530176238307064

/-! ## A251934.P1225118759963084815

`A251935(Δ[A026054(n+4)])`
-/

namespace A251934.P1225118759963084815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (f1 (n + 1) - f1 n).toNat

end

end A251934.P1225118759963084815

/-! ## A251934.P15191983098513494206

`A251935(Δ[A103145(n)]+6)`
-/

namespace A251934.P15191983098513494206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (f1 (n + 1) - f1 n + 6).toNat

end

end A251934.P15191983098513494206

/-!
# A251936: Number of length 2+2 0..n arrays with the sum of the maximum minus the median of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A251936, the canonical program `A251936.P593543211679927712` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251936 has offset 1).

The definition of A251936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251936.P593543211679927712

`(n+1)^4/6+7*(n+1)^3/3+23*(n+1)²/6+8*(n+1)/3+1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A251936

/-- `(n+1)^4/6+7*(n+1)^3/3+23*(n+1)²/6+8*(n+1)/3+1` -/
def P593543211679927712.Spec : Prop :=
  ∀ n, P593543211679927712.a n = (A251936 (n + 1) : ℚ)

end A251936

/-! ## A251936.P12372916664291860266

`A251935(∑[n+1]+2)`
-/

namespace A251936.P12372916664291860266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251936.P12372916664291860266

namespace A251936

/-- `A251935(∑[n+1]+2)` -/
def P12372916664291860266.Spec : Prop :=
  ∀ n, P12372916664291860266.a n = A251936 (n + 1)

end A251936

/-!
# A251937: Number of length 3+2 0..n arrays with the sum of the maximum minus the median of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A251937, there is no canonical definition to state claims against.
-/

/-! ## A251937.P16451090477838340516

`A251935(∑[n+2]+4)`
-/

namespace A251937.P16451090477838340516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251937.P16451090477838340516

/-! ## A251937.P2534041584388875918

`or(char[1], A251935(A167614(n+1)))`
-/

namespace A251937.P2534041584388875918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A251935 (A167614 (n + 1)).toNat)

end

end A251937.P2534041584388875918

/-! ## A251937.P8133876908899843606

`A251935(A167614(n+1))+A025466(n)`
-/

namespace A251937.P8133876908899843606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (A167614 (n + 1)).toNat + A025466 n

end

end A251937.P8133876908899843606

/-! ## A251937.P7336074786244200129

`A251935(A167614(n+1))+A178780(n)`
-/

namespace A251937.P7336074786244200129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (A167614 (n + 1)).toNat + A178780 n

end

end A251937.P7336074786244200129

/-! ## A251937.P14477108433381070743

`A251935(A167614(n+1))+A034514(n+1)`
-/

namespace A251937.P14477108433381070743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (A167614 (n + 1)).toNat + A034514 (n + 1)

end

end A251937.P14477108433381070743

/-!
# A251938: Number of length 4+2 0..n arrays with the sum of the maximum minus the median of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A251938, there is no canonical definition to state claims against.
-/

/-! ## A251938.P17198324974107882317

`A251935(∑[n+3]+7)`
-/

namespace A251938.P17198324974107882317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A251938.P17198324974107882317

/-! ## A251938.P14571857794770250974

`A251935(A052905(n)+9)+char[19]`
-/

namespace A251938.P14571857794770250974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A251938.P14571857794770250974

/-! ## A251938.P14476675707508277833

`and(1, n)!*A251935(Δ[A005286(n)]+5)`
-/

namespace A251938.P14476675707508277833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 1 n) : ℤ) * A251935 (f1 (n + 1) - f1 n + 5).toNat

end

end A251938.P14476675707508277833

/-! ## A251938.P96052143160519427

`A251935(A055999(n)+10)%A257524(n+5)`
-/

namespace A251938.P96052143160519427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251935 (A055999 n + 10).toNat) (A257524 (n + 5))

end

end A251938.P96052143160519427

/-! ## A251938.P5840210939891666847

`A007318(C(2, n))*A251935(A052905(n)+9)`
-/

namespace A251938.P5840210939891666847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A251935 (A052905 n + 9).toNat

end

end A251938.P5840210939891666847

/-!
# A251939: Number of length 5+2 0..n arrays with the sum of the maximum minus the median of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A251939, there is no canonical definition to state claims against.
-/

/-! ## A251939.P16793873478679401269

`A251935(∑[n+4]+11)`
-/

namespace A251939.P16793873478679401269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A251939.P16793873478679401269

/-! ## A251939.P15723830860103436597

`A251935(A000217(n+4)+5)+char[19]`
-/

namespace A251939.P15723830860103436597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (A000217 (n + 4) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A251939.P15723830860103436597

/-! ## A251939.P11764687812231524163

`(A251935(A000096(n+3)+6)^(1/2))²`
-/

namespace A251939.P11764687812231524163
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A251935 (A000096 (n + 3) + 6).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A251939.P11764687812231524163

/-! ## A251939.P3821597419111274390

`A063435(n)*A251935(A167499(n+3))`
-/

namespace A251939.P3821597419111274390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A251935 (A167499 (n + 3)).toNat

end

end A251939.P3821597419111274390

/-! ## A251939.P6551338560921482612

`A251935(A167499(n+3))+A130779(n+3)`
-/

namespace A251939.P6551338560921482612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (A167499 (n + 3)).toNat + A130779 (n + 3)

end

end A251939.P6551338560921482612

/-!
# A251940: Number of length 6+2 0..n arrays with the sum of the maximum minus the median of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A251940, there is no canonical definition to state claims against.
-/

/-! ## A251940.P10426921730107316652

`A251935(∑[n+5]+16)`
-/

namespace A251940.P10426921730107316652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A251940.P10426921730107316652

/-! ## A251940.P5528593993682348754

`A251935(A000217(n+5)+6)+char[16]`
-/

namespace A251940.P5528593993682348754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (A000217 (n + 5) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A251940.P5528593993682348754

/-! ## A251940.P16388759642648036506

`A007318(C(2, n))*A251935(A000217(n+5)+6)`
-/

namespace A251940.P16388759642648036506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A251935 (A000217 (n + 5) + 6).toNat

end

end A251940.P16388759642648036506

/-! ## A251940.P15601296475124680275

`A251935(A000217(n+5)+6)%A000045(n+55)`
-/

namespace A251940.P15601296475124680275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251935 (A000217 (n + 5) + 6).toNat) (A000045 (n + 55))

end

end A251940.P15601296475124680275

/-! ## A251940.P2553667191770279712

`(A000041(n)%2)!*A251935(A000217(n+5)+6)`
-/

namespace A251940.P2553667191770279712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A251935 (A000217 (n + 5) + 6).toNat

end

end A251940.P2553667191770279712

/-!
# A251941: Number of length 7+2 0..n arrays with the sum of the maximum minus the median of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A251941, there is no canonical definition to state claims against.
-/

/-! ## A251941.P13614509058889538014

`A251935(A056119(n)+28)`
-/

namespace A251941.P13614509058889538014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (A056119 n + 28).toNat

end

end A251941.P13614509058889538014

/-! ## A251941.P14439243115720323429

`A251935(eq[11, A066657(n)])`
-/

namespace A251941.P14439243115720323429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251941.P14439243115720323429

/-! ## A251941.P12743340661150318198

`A251935(A166136(n+5)+1)`
-/

namespace A251941.P12743340661150318198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (A166136 (n + 5) + 1).toNat

end

end A251941.P12743340661150318198

/-! ## A251941.P18236052726468564028

`A251935(A167499(n+5)+2)`
-/

namespace A251941.P18236052726468564028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (A167499 (n + 5) + 2).toNat

end

end A251941.P18236052726468564028

/-! ## A251941.P2254090914017733118

`A251935(A000124(n+6)+6)`
-/

namespace A251941.P2254090914017733118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251935 (A000124 (n + 6) + 6).toNat

end

end A251941.P2254090914017733118

/-!
# A251942: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum prime and every diagonal and antidiagonal sum nonprime.

The programs for A251942, there is no canonical definition to state claims against.
-/

/-! ## A251942.P7289044929479942063

`A251950((n+1)²+n²)`
-/

namespace A251942.P7289044929479942063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251950 ((n + 1) ^ 2 + n ^ 2)

end

end A251942.P7289044929479942063

/-! ## A251942.P9946803662274004481

`A326461(n)+A251950(A001844(n))`
-/

namespace A251942.P9946803662274004481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326461 n + A251950 (A001844 n).toNat

end

end A251942.P9946803662274004481

/-! ## A251942.P2128033769667857525

`A251950(A001844(n))%A263891(n)`
-/

namespace A251942.P2128033769667857525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251950 (A001844 n).toNat) (A263891 (n + 15))

end

end A251942.P2128033769667857525

/-! ## A251942.P13342746317472717984

`lcm(A033999(n), A251950(A001844(n)))`
-/

namespace A251942.P13342746317472717984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A251950 (A001844 n).toNat)

end

end A251942.P13342746317472717984

/-! ## A251942.P9221912543186038830

`A242179(n)²*A251950(A001844(n))`
-/

namespace A251942.P9221912543186038830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242179 n ^ 2 * A251950 (A001844 n).toNat

end

end A251942.P9221912543186038830

/-!
# A251943: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum prime and every diagonal and antidiagonal sum nonprime.

The programs for A251943, there is no canonical definition to state claims against.
-/

/-! ## A251943.P9880277084427020208

`A251950(∑[n]+1)`
-/

namespace A251943.P9880277084427020208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251950 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251943.P9880277084427020208

/-! ## A251943.P3213558506757320858

`A251950(A000124(n))+char[36]`
-/

namespace A251943.P3213558506757320858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251950 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A251943.P3213558506757320858

/-! ## A251943.P14618904603355430908

`A251950(A000124(n))%A017345(n)`
-/

namespace A251943.P14618904603355430908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251950 (A000124 n).toNat) (A017345 n)

end

end A251943.P14618904603355430908

/-! ## A251943.P17440957719340172612

`A038712(2*n+1)*A251950(A000124(n))`
-/

namespace A251943.P17440957719340172612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (2 * n + 1) * A251950 (A000124 n).toNat

end

end A251943.P17440957719340172612

/-! ## A251943.P13748819359262865645

`A251950(A000217(n)+1)%A251947(n+1)`
-/

namespace A251943.P13748819359262865645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251950 (A000217 n + 1).toNat) (A251947 (n + 1))

end

end A251943.P13748819359262865645

/-!
# A251944: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum prime and every diagonal and antidiagonal sum nonprime.

The programs for A251944, there is no canonical definition to state claims against.
-/

/-! ## A251944.P15255330870592540532

`A251950(∑[n+1]+2)`
-/

namespace A251944.P15255330870592540532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251950 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251944.P15255330870592540532

/-! ## A251944.P4569994219666435141

`A251950(A000096(n)+3)%A251949(n+1)`
-/

namespace A251944.P4569994219666435141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251950 (A000096 n + 3).toNat) (A251949 (n + 1))

end

end A251944.P4569994219666435141

/-! ## A251944.P2814994797836858529

`A251950(A000096(n)+3)+A002262(A000217(n))`
-/

namespace A251944.P2814994797836858529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251950 (A000096 n + 3).toNat + A002262 (A000217 n).toNat

end

end A251944.P2814994797836858529

/-! ## A251944.P1775519133468570358

`A000045(A047726(n+1))*A251950(A000096(n)+3)`
-/

namespace A251944.P1775519133468570358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A047726 (n + 1)).toNat * A251950 (A000096 n + 3).toNat

end

end A251944.P1775519133468570358

/-! ## A251944.P808457210583241164

`A047726(A000005(n+2))*A251950(A000096(n)+3)`
-/

namespace A251944.P808457210583241164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A000005 (n + 2)).toNat * A251950 (A000096 n + 3).toNat

end

end A251944.P808457210583241164

/-!
# A251945: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum prime and every diagonal and antidiagonal sum nonprime.

The programs for A251945, there is no canonical definition to state claims against.
-/

/-! ## A251945.P4116909464252596862

`A251950(∑[n+2]+4)`
-/

namespace A251945.P4116909464252596862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251950 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251945.P4116909464252596862

/-! ## A251945.P1142324712759126795

`lcm((-1)^n, A251950(A167614(n+1)))`
-/

namespace A251945.P1142324712759126795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A251950 (A167614 (n + 1)).toNat)

end

end A251945.P1142324712759126795

/-! ## A251945.P17397359831778600900

`A251950(A167614(n+1))+A025439(n)`
-/

namespace A251945.P17397359831778600900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251950 (A167614 (n + 1)).toNat + A025439 n

end

end A251945.P17397359831778600900

/-! ## A251945.P3588703312336183018

`A251950(A167614(n+1))+A178798(n)`
-/

namespace A251945.P3588703312336183018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251950 (A167614 (n + 1)).toNat + A178798 n

end

end A251945.P3588703312336183018

/-! ## A251945.P1802348265935760499

`A015838(n)*A251950(A167614(n+1))`
-/

namespace A251945.P1802348265935760499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015838 n * A251950 (A167614 (n + 1)).toNat

end

end A251945.P1802348265935760499

/-!
# A251946: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum prime and every diagonal and antidiagonal sum nonprime.

The programs for A251946, there is no canonical definition to state claims against.
-/

/-! ## A251946.P13345908361226475285

`A251950(A141214(n)+7)`
-/

namespace A251946.P13345908361226475285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251950 (A141214 n + 7).toNat

end

end A251946.P13345908361226475285

/-! ## A251946.P8784551779368264833

`A251950(A052905(n)+9)`
-/

namespace A251946.P8784551779368264833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251950 (A052905 n + 9).toNat

end

end A251946.P8784551779368264833

/-! ## A251946.P10068164959503888170

`A251950(A055999(n)+10)`
-/

namespace A251946.P10068164959503888170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251950 (A055999 n + 10).toNat

end

end A251946.P10068164959503888170

/-! ## A251946.P18443592989637944676

`A251950(A167614(n+2)+1)`
-/

namespace A251946.P18443592989637944676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251950 (A167614 (n + 2) + 1).toNat

end

end A251946.P18443592989637944676

/-! ## A251946.P14921836696395806190

`A251950(A167487(n+2)-3)`
-/

namespace A251946.P14921836696395806190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251950 (A167487 (n + 2) - 3).toNat

end

end A251946.P14921836696395806190

/-!
# A251947: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum prime and every diagonal and antidiagonal sum nonprime.

The programs for A251947, there is no canonical definition to state claims against.
-/

/-! ## A251947.P2735019362807860263

`A251950(C(n+5, 2)+5)`
-/

namespace A251947.P2735019362807860263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251950 (Nat.choose (n + 5) 2 + 5)

end

end A251947.P2735019362807860263

/-! ## A251947.P9642825887017936129

`A251950(A167499(n+3))`
-/

namespace A251947.P9642825887017936129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251950 (A167499 (n + 3)).toNat

end

end A251947.P9642825887017936129

/-! ## A251947.P7295762011569526435

`A251950(A000217(n+4)+5)`
-/

namespace A251947.P7295762011569526435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251950 (A000217 (n + 4) + 5).toNat

end

end A251947.P7295762011569526435

/-! ## A251947.P859716629343941567

`A251950(eq[5, A025581(n)]-2*n)`
-/

namespace A251947.P859716629343941567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A251947.P859716629343941567

/-! ## A251947.P14968707338945923211

`A251950(A052905(n+3)-A005408(n))`
-/

namespace A251947.P14968707338945923211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251950 (A052905 (n + 3) - A005408 n).toNat

end

end A251947.P14968707338945923211

/-!
# A251948: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum prime and every diagonal and antidiagonal sum nonprime.

The programs for A251948, there is no canonical definition to state claims against.
-/

/-! ## A251948.P6102119775145345316

`A251950(∑[n+5]+16)`
-/

namespace A251948.P6102119775145345316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251950 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A251948.P6102119775145345316

/-! ## A251948.P16209863640866754883

`or(A000007(n), A251950(A000217(n+6)-5))`
-/

namespace A251948.P16209863640866754883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A251950 (A000217 (n + 6) - 5).toNat)

end

end A251948.P16209863640866754883

/-! ## A251948.P2302096852403369454

`A251950(A000217(n+6)-5)+val(A005408(n)+n, 9)`
-/

namespace A251948.P2302096852403369454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251950 (A000217 (n + 6) - 5).toNat + (SequenceMachineLib.valuation (A005408 n + (n : ℤ)).toNat 9 : ℤ)

end

end A251948.P2302096852403369454

/-! ## A251948.P8103849012694620528

`A007318(A000096(n))*A251950(A000217(n+6)-5)`
-/

namespace A251948.P8103849012694620528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A251950 (A000217 (n + 6) - 5).toNat

end

end A251948.P8103849012694620528

/-! ## A251948.P4044830999097782280

`A001055(A000040(n+1))*A251950(A000217(n+6)-5)`
-/

namespace A251948.P4044830999097782280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A000040 (n + 1)).toNat * A251950 (A000217 (n + 6) - 5).toNat

end

end A251948.P4044830999097782280

/-!
# A251949: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum prime and every diagonal and antidiagonal sum nonprime.

The programs for A251949, there is no canonical definition to state claims against.
-/

/-! ## A251949.P11259690296174016801

`A251950(A167487(n+5))`
-/

namespace A251949.P11259690296174016801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251950 (A167487 (n + 5)).toNat

end

end A251949.P11259690296174016801

/-! ## A251949.P4533324661960668200

`A251950(A167614(n+5)+4)`
-/

namespace A251949.P4533324661960668200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251950 (A167614 (n + 5) + 4).toNat

end

end A251949.P4533324661960668200

/-! ## A251949.P6142081304468055391

`A251950(A000217(n+6)+7)`
-/

namespace A251949.P6142081304468055391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251950 (A000217 (n + 6) + 7).toNat

end

end A251949.P6142081304468055391

/-! ## A251949.P12094066016662426548

`A251950(A046691(n+4)+11)`
-/

namespace A251949.P12094066016662426548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251950 (A046691 (n + 4) + 11).toNat

end

end A251949.P12094066016662426548

/-! ## A251949.P29254401615558979

`A251950(A374008(n+1))`
-/

namespace A251949.P29254401615558979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251950 (A374008 (n + 1)).toNat

end

end A251949.P29254401615558979

/-!
# A251951: Number of (n+2)X(1+2) 0..2 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 3.

The programs for A251951, there is no canonical definition to state claims against.
-/

/-! ## A251951.P7721822557942613336

`A251955(∑[n]+1)`
-/

namespace A251951.P7721822557942613336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251955 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251951.P7721822557942613336

/-! ## A251951.P13050692311382943090

`lcm(2, A251955(A000124(n)))`
-/

namespace A251951.P13050692311382943090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251955 (A000124 n).toNat)

end

end A251951.P13050692311382943090

/-! ## A251951.P18426455230381245875

`record[gcd(A002262(n), A251955(n+1))]`
-/

namespace A251951.P18426455230381245875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251955 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251951.P18426455230381245875

/-! ## A251951.P2254157864622232978

`record[(1-A112367(n))*A251955(n+1)]`
-/

namespace A251951.P2254157864622232978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A112367 n) * A251955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251951.P2254157864622232978

/-! ## A251951.P4806746117018276410

`record[root(A251955(n+1), A200370(n+1))]`
-/

namespace A251951.P4806746117018276410
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251955 (n + 1) : ℝ) ^ (1 / (A200370 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251951.P4806746117018276410

/-!
# A251952: Number of (n+2) X (2+2) 0..2 arrays with no row, column, diagonal or antidiagonal in any 3 X 3 subblock summing to 3.

The programs for A251952, there is no canonical definition to state claims against.
-/

/-! ## A251952.P13899713151238656179

`A251955(∑[n+1]+2)`
-/

namespace A251952.P13899713151238656179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251955 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251952.P13899713151238656179

/-! ## A251952.P17134067374145724881

`record[A251955(A112367(n)+2)]`
-/

namespace A251952.P17134067374145724881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251955 (A112367 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251952.P17134067374145724881

/-! ## A251952.P13023409302082289770

`record[gcd(A002262(n), A251955(n+2))]`
-/

namespace A251952.P13023409302082289770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251955 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251952.P13023409302082289770

/-! ## A251952.P2520950271724339714

`record[root(A251955(n+2), A200370(n+1))]`
-/

namespace A251952.P2520950271724339714
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251955 (n + 2) : ℝ) ^ (1 / (A200370 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251952.P2520950271724339714

/-! ## A251952.P4474334201900002618

`A055642(n)*A251955(A000096(n+1))`
-/

namespace A251952.P4474334201900002618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A251955 (A000096 (n + 1)).toNat

end

end A251952.P4474334201900002618

/-!
# A251953: Number of (n+2)X(3+2) 0..2 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 3.

The programs for A251953, there is no canonical definition to state claims against.
-/

/-! ## A251953.P15063227654606708578

`A251955(∑[n+2]+4)`
-/

namespace A251953.P15063227654606708578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251955 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251953.P15063227654606708578

/-! ## A251953.P17959948395666413392

`lcm(2, A251955(A167614(n+1)))`
-/

namespace A251953.P17959948395666413392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251955 (A167614 (n + 1)).toNat)

end

end A251953.P17959948395666413392

/-! ## A251953.P10834504506970998455

`A251955(A167614(n+1))+A097601(n)`
-/

namespace A251953.P10834504506970998455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251955 (A167614 (n + 1)).toNat + A097601 n

end

end A251953.P10834504506970998455

/-! ## A251953.P13125817207598733895

`A251955(A167614(n+1))+A051767(n+1)`
-/

namespace A251953.P13125817207598733895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251955 (A167614 (n + 1)).toNat + A051767 (n + 1)

end

end A251953.P13125817207598733895

/-! ## A251953.P362962500731413847

`A251955(A167614(n+1))+A111417(2*n+1)`
-/

namespace A251953.P362962500731413847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251955 (A167614 (n + 1)).toNat + A111417 (2 * n + 1)

end

end A251953.P362962500731413847

/-!
# A251954: Number of (n+2)X(4+2) 0..2 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 3.

The programs for A251954, there is no canonical definition to state claims against.
-/

/-! ## A251954.P5377742456856280681

`A251955(A167614(n+2)+1)`
-/

namespace A251954.P5377742456856280681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251955 (A167614 (n + 2) + 1).toNat

end

end A251954.P5377742456856280681

/-! ## A251954.P13715384938495928183

`A251955(eq[4, A004736(n+1)]+1)`
-/

namespace A251954.P13715384938495928183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A251954.P13715384938495928183

/-!
# A251956: Number of (n+2)X(1+2) 0..4 arrays with every row, column, diagonal or antidiagonal in each 3X3 subblock summing to a prime.

The programs for A251956, there is no canonical definition to state claims against.
-/

/-! ## A251956.P5029633902982464873

`A251962(∑[n]+1)`
-/

namespace A251956.P5029633902982464873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251962 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251956.P5029633902982464873

/-! ## A251956.P11614257921489907801

`record[root(A251962(n+1), A059268(n))]`
-/

namespace A251956.P11614257921489907801
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251962 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251956.P11614257921489907801

/-! ## A251956.P885277090483680541

`record[root(A251962(n+1), A233308(n))]`
-/

namespace A251956.P885277090483680541
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251962 (n + 1) : ℝ) ^ (1 / (A233308 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251956.P885277090483680541

/-! ## A251956.P4592727276991335786

`record[gcd(A002262(n), A251962(n+1))]`
-/

namespace A251956.P4592727276991335786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251962 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251956.P4592727276991335786

/-! ## A251956.P14754022595504247982

`record[root(A251962(n+1), A002260(n+1))]`
-/

namespace A251956.P14754022595504247982
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251962 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251956.P14754022595504247982

/-!
# A251957: Number of (n+2)X(2+2) 0..4 arrays with every row, column, diagonal or antidiagonal in each 3X3 subblock summing to a prime.

The programs for A251957, there is no canonical definition to state claims against.
-/

/-! ## A251957.P11136217069797470438

`A251962(∑[n+1]+2)`
-/

namespace A251957.P11136217069797470438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251962 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251957.P11136217069797470438

/-! ## A251957.P15388002350145244861

`record[root(A251962(n+2), A059268(n))]`
-/

namespace A251957.P15388002350145244861
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251962 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251957.P15388002350145244861

/-! ## A251957.P2681977145863384313

`record[gcd(A002262(n), A251962(n+2))]`
-/

namespace A251957.P2681977145863384313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251962 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251957.P2681977145863384313

/-! ## A251957.P16773884530220391052

`record[root(A251962(n+2), A002260(n+1))]`
-/

namespace A251957.P16773884530220391052
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251962 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251957.P16773884530220391052

/-! ## A251957.P11916546238823652364

`record[root(A251962(n+2), A194959(n+1))]`
-/

namespace A251957.P11916546238823652364
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251962 (n + 2) : ℝ) ^ (1 / (A194959 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251957.P11916546238823652364

/-!
# A251958: Number of (n+2)X(3+2) 0..4 arrays with every row, column, diagonal or antidiagonal in each 3X3 subblock summing to a prime.

The programs for A251958, there is no canonical definition to state claims against.
-/

/-! ## A251958.P10142057815474890605

`A251962(∑[n+2]+4)`
-/

namespace A251958.P10142057815474890605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251962 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251958.P10142057815474890605

/-! ## A251958.P18287185423236159256

`lcm(A033999(n), A251962(A167614(n+1)))`
-/

namespace A251958.P18287185423236159256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A251962 (A167614 (n + 1)).toNat)

end

end A251958.P18287185423236159256

/-! ## A251958.P8952393758219107489

`or(A000038(n), A251962(A167614(n+1)))`
-/

namespace A251958.P8952393758219107489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A251962 (A167614 (n + 1)).toNat)

end

end A251958.P8952393758219107489

/-! ## A251958.P15806094206122094803

`or(A080791(n), A251962(A167614(n+1)))`
-/

namespace A251958.P15806094206122094803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080791 n) (A251962 (A167614 (n + 1)).toNat)

end

end A251958.P15806094206122094803

/-! ## A251958.P5375948973839571473

`or(A185012(n), A251962(A167614(n+1)))`
-/

namespace A251958.P5375948973839571473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185012 n) (A251962 (A167614 (n + 1)).toNat)

end

end A251958.P5375948973839571473

/-!
# A251959: Number of (n+2)X(4+2) 0..4 arrays with every row, column, diagonal or antidiagonal in each 3X3 subblock summing to a prime.

The programs for A251959, there is no canonical definition to state claims against.
-/

/-! ## A251959.P16307167994558565243

`A251962(A374004(n+1))`
-/

namespace A251959.P16307167994558565243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251962 (A374004 (n + 1)).toNat

end

end A251959.P16307167994558565243

/-! ## A251959.P3655254507686694398

`A251962(A141214(n)+7)`
-/

namespace A251959.P3655254507686694398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251962 (A141214 n + 7).toNat

end

end A251959.P3655254507686694398

/-! ## A251959.P11169694915044591137

`A251962(A052905(n)+9)`
-/

namespace A251959.P11169694915044591137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251962 (A052905 n + 9).toNat

end

end A251959.P11169694915044591137

/-! ## A251959.P2000465786301580373

`A251962(A055999(n)+10)`
-/

namespace A251959.P2000465786301580373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251962 (A055999 n + 10).toNat

end

end A251959.P2000465786301580373

/-! ## A251959.P15585754970334095739

`A251962(A167614(n+2)+1)`
-/

namespace A251959.P15585754970334095739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251962 (A167614 (n + 2) + 1).toNat

end

end A251959.P15585754970334095739

/-!
# A251960: Number of (n+2)X(5+2) 0..4 arrays with every row, column, diagonal or antidiagonal in each 3X3 subblock summing to a prime.

The programs for A251960, there is no canonical definition to state claims against.
-/

/-! ## A251960.P8334353435301639272

`A251962(A374005(n+1))`
-/

namespace A251960.P8334353435301639272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251962 (A374005 (n + 1)).toNat

end

end A251960.P8334353435301639272

/-! ## A251960.P13996924354806555716

`A251962(A155212(n)+13)`
-/

namespace A251960.P13996924354806555716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251962 (A155212 n + 13).toNat

end

end A251960.P13996924354806555716

/-! ## A251960.P7235859186039501722

`A251962(eq[7, A066657(n)])`
-/

namespace A251960.P7235859186039501722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251960.P7235859186039501722

/-! ## A251960.P15195029075984443802

`A251962(A166136(n+3)-1)`
-/

namespace A251960.P15195029075984443802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251962 (A166136 (n + 3) - 1).toNat

end

end A251960.P15195029075984443802

/-! ## A251960.P12577024408334335824

`A251962(A000217(n+4)+5)`
-/

namespace A251960.P12577024408334335824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251962 (A000217 (n + 4) + 5).toNat

end

end A251960.P12577024408334335824

/-!
# A251961: Number of (n+2)X(6+2) 0..4 arrays with every row, column, diagonal or antidiagonal in each 3X3 subblock summing to a prime.

The programs for A251961, there is no canonical definition to state claims against.
-/

/-! ## A251961.P1612177388507652820

`A251962(A374007(n+1))`
-/

namespace A251961.P1612177388507652820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251962 (A374007 (n + 1)).toNat

end

end A251961.P1612177388507652820

/-! ## A251961.P13755056447377758826

`A251962(eq[6, A200370(n+1)])`
-/

namespace A251961.P13755056447377758826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251961.P13755056447377758826

/-! ## A251961.P8400272610899721244

`A251962(Δ[A264443(n+1)]-1)`
-/

namespace A251961.P8400272610899721244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251962 (f1 (n + 1) - f1 n - 1).toNat

end

end A251961.P8400272610899721244

/-!
# A251963: Numbers n such that the sum of the triangular numbers T(n) and T(n+1) is equal to an octagonal number N(m) for some m.

The programs for A251963, the canonical program `A251963.P15171526515360193077` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251963 has offset 1).

The definition of A251963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251963.P15171526515360193077

`14*a(n-1)-a(n-2)+12` with `a(0)=0, a(1)=14`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A251963

/-- `14*a(n-1)-a(n-2)+12` -/
def P15171526515360193077.Spec : Prop :=
  ∀ n, P15171526515360193077.a n = A251963 (n + 1)

theorem P15171526515360193077.correct : P15171526515360193077.Spec := by
  intro n
  simp only [A251963, Nat.add_sub_cancel]

end A251963

/-! ## A251963.P11352588483687406836

`∑[ogf((2-14x)/(1-14x+x^2))]-2`
-/

namespace A251963.P11352588483687406836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -14] [1, -14, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A251963.P11352588483687406836

namespace A251963

/-- `∑[ogf((2-14x)/(1-14x+x^2))]-2` -/
def P11352588483687406836.Spec : Prop :=
  ∀ n, P11352588483687406836.a n = A251963 (n + 1)

end A251963

/-! ## A251963.P17807023780485545258

`∑[round(((sqrt(3)+2)^n)²)]-1`
-/

namespace A251963.P17807023780485545258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Real.sqrt (3 : ℝ) + 2) ^ n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A251963.P17807023780485545258

namespace A251963

/-- `∑[round(((sqrt(3)+2)^n)²)]-1` -/
def P17807023780485545258.Spec : Prop :=
  ∀ n, P17807023780485545258.a n = A251963 (n + 1)

end A251963

/-! ## A251963.P8334138373813138978

`xor(1, ∑[round(((sqrt(3)+2)^n)²)])`
-/

namespace A251963.P8334138373813138978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Real.sqrt (3 : ℝ) + 2) ^ n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251963.P8334138373813138978

namespace A251963

/-- `xor(1, ∑[round(((sqrt(3)+2)^n)²)])` -/
def P8334138373813138978.Spec : Prop :=
  ∀ n, P8334138373813138978.a n = A251963 (n + 1)

end A251963

/-! ## A251963.P10034589140971664887

`and(-2, ∑[round(((sqrt(3)+2)^n)²)])`
-/

namespace A251963.P10034589140971664887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Real.sqrt (3 : ℝ) + 2) ^ n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251963.P10034589140971664887

namespace A251963

/-- `and(-2, ∑[round(((sqrt(3)+2)^n)²)])` -/
def P10034589140971664887.Spec : Prop :=
  ∀ n, P10034589140971664887.a n = A251963 (n + 1)

end A251963

/-! ## A251963.P817316212805181184

`2*A001921(n)`
-/

namespace A251963.P817316212805181184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001921 n

end

end A251963.P817316212805181184

namespace A251963

/-- `2*A001921(n)` -/
def P817316212805181184.Spec : Prop :=
  ∀ n, P817316212805181184.a n = A251963 (n + 1)

end A251963

/-! ## A251963.P11010211550980935526

`record[A110294(n)-1]`
-/

namespace A251963.P11010211550980935526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110294 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251963.P11010211550980935526

namespace A251963

/-- `record[A110294(n)-1]` -/
def P11010211550980935526.Spec : Prop :=
  ∀ n, P11010211550980935526.a n = A251963 (n + 1)

end A251963

/-! ## A251963.P14579295132530523687

`record[A125905(n)-1]`
-/

namespace A251963.P14579295132530523687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125905 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251963.P14579295132530523687

namespace A251963

/-- `record[A125905(n)-1]` -/
def P14579295132530523687.Spec : Prop :=
  ∀ n, P14579295132530523687.a n = A251963 (n + 1)

end A251963

/-! ## A251963.P10914237322774245742

`2*(A001922(n)-1)`
-/

namespace A251963.P10914237322774245742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001922 n - 1)

end

end A251963.P10914237322774245742

namespace A251963

/-- `2*(A001922(n)-1)` -/
def P10914237322774245742.Spec : Prop :=
  ∀ n, P10914237322774245742.a n = A251963 (n + 1)

end A251963

/-! ## A251963.P2719992280031390955

`2/3*A157088(n)`
-/

namespace A251963.P2719992280031390955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A157088 n : ℚ)

end

end A251963.P2719992280031390955

namespace A251963

/-- `2/3*A157088(n)` -/
def P2719992280031390955.Spec : Prop :=
  ∀ n, P2719992280031390955.a n = (A251963 (n + 1) : ℚ)

end A251963

/-!
# A251964: For a prime p, denote by s(p,k) the odd part of the digital sum of p^k. Let k_1 be the smallest k such that s(p,k) is divisible by 5. Sequence lists primes p for which s(p,k_1)=5.

The programs for A251964, there is no canonical definition to state claims against.
-/

/-! ## A251964.P7768779402468850746

`∩[A039675(n+1), A346151(n)]`
-/

namespace A251964.P7768779402468850746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346151 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A251964.P7768779402468850746

/-! ## A251964.P15000318010240732006

`A045344(lt[A034296(n), A202674(n+1)])`
-/

namespace A251964.P15000318010240732006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034296 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A251964.P15000318010240732006

/-!
# A251966: Numbers representable as both b^c - b + c and x^y + x - y, where b, c, x, y are integers greater than 1.

The programs for A251966, there is no canonical definition to state claims against.
-/

/-! ## A251966.P11512597236980889963

`A360994(∑[A361025(n+3)²])`
-/

namespace A251966.P11512597236980889963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361025 (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360994 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A251966.P11512597236980889963

/-!
# A251968: Number of (n+1) X (n+1) 0..3 arrays with nondecreasing sum of every two consecutive values in every row and column.

The programs for A251968, there is no canonical definition to state claims against.
-/

/-! ## A251968.P2723369967419295795

`A251974((n+1)²+n²)`
-/

namespace A251968.P2723369967419295795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251974 ((n + 1) ^ 2 + n ^ 2)

end

end A251968.P2723369967419295795

/-!
# A251969: Number of (n+1)X(2+1) 0..3 arrays with nondecreasing sum of every two consecutive values in every row and column.

The programs for A251969, the canonical program `A251969.P6991737648331539879` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251969 has offset 1).

The definition of A251969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251969.P6991737648331539879

`A250426(n+1)/A250427(n+1)*A250439(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A251969

/-- `A250426(n+1)/A250427(n+1)*A250439(n+1)` -/
def P6991737648331539879.Spec : Prop :=
  ∀ n, P6991737648331539879.a n = (A251969 (n + 1) : ℚ)

end A251969

/-! ## A251969.P9567341280194023263

`A250428(n+1)*A250430(n+1)/A250426(n+1)`
-/

namespace A251969.P9567341280194023263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250428 (n + 1) * A250430 (n + 1) : ℚ) / (A250426 (n + 1) : ℚ)

end

end A251969.P9567341280194023263

namespace A251969

/-- `A250428(n+1)*A250430(n+1)/A250426(n+1)` -/
def P9567341280194023263.Spec : Prop :=
  ∀ n, P9567341280194023263.a n = (A251969 (n + 1) : ℚ)

end A251969

/-! ## A251969.P3878351035000678428

`A250430(n+1)/A250427(n+1)*A250437(n+1)`
-/

namespace A251969.P3878351035000678428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250430 (n + 1) : ℚ) / (A250427 (n + 1) : ℚ) * (A250437 (n + 1) : ℚ)

end

end A251969.P3878351035000678428

namespace A251969

/-- `A250430(n+1)/A250427(n+1)*A250437(n+1)` -/
def P3878351035000678428.Spec : Prop :=
  ∀ n, P3878351035000678428.a n = (A251969 (n + 1) : ℚ)

end A251969

/-! ## A251969.P335205561147392798

`A250428(n+1)/A250437(n+1)*A250439(n+1)`
-/

namespace A251969.P335205561147392798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250428 (n + 1) : ℚ) / (A250437 (n + 1) : ℚ) * (A250439 (n + 1) : ℚ)

end

end A251969.P335205561147392798

namespace A251969

/-- `A250428(n+1)/A250437(n+1)*A250439(n+1)` -/
def P335205561147392798.Spec : Prop :=
  ∀ n, P335205561147392798.a n = (A251969 (n + 1) : ℚ)

end A251969

/-! ## A251969.P6190449892767937126

`A250430(n+1)/A250437(n+1)*A250438(n+1)`
-/

namespace A251969.P6190449892767937126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250430 (n + 1) : ℚ) / (A250437 (n + 1) : ℚ) * (A250438 (n + 1) : ℚ)

end

end A251969.P6190449892767937126

namespace A251969

/-- `A250430(n+1)/A250437(n+1)*A250438(n+1)` -/
def P6190449892767937126.Spec : Prop :=
  ∀ n, P6190449892767937126.a n = (A251969 (n + 1) : ℚ)

end A251969

/-! ## A251969.P17713955025236430703

`sqrt(A250429(n+1)*A250440(n+1))`
-/

namespace A251969.P17713955025236430703
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A250429 (n + 1) * A250440 (n + 1) : ℝ)

end

end A251969.P17713955025236430703

namespace A251969

/-- `sqrt(A250429(n+1)*A250440(n+1))` -/
def P17713955025236430703.Spec : Prop :=
  ∀ n, P17713955025236430703.a n = (A251969 (n + 1) : ℝ)

end A251969

/-!
# A251970: Number of (n+1)X(4+1) 0..3 arrays with nondecreasing sum of every two consecutive values in every row and column.

The programs for A251970, there is no canonical definition to state claims against.
-/

/-! ## A251970.P1433192539815425146

`A250428(n+1)/A250427(n+1)*A250441(n+1)`
-/

namespace A251970.P1433192539815425146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250428 (n + 1) : ℚ) / (A250427 (n + 1) : ℚ) * (A250441 (n + 1) : ℚ)

end

end A251970.P1433192539815425146

/-! ## A251970.P5548462415213423316

`A250429(n+1)/A250428(n+1)*A250441(n+1)`
-/

namespace A251970.P5548462415213423316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250429 (n + 1) : ℚ) / (A250428 (n + 1) : ℚ) * (A250441 (n + 1) : ℚ)

end

end A251970.P5548462415213423316

/-! ## A251970.P551074255350762236

`sqrt(A250440(n+1)*A251971(n+1))`
-/

namespace A251970.P551074255350762236
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A250440 (n + 1) * A251971 (n + 1) : ℝ)

end

end A251970.P551074255350762236

/-! ## A251970.P13576925465417852596

`sqrt(A251971(n+1)/A250442(n+1))*A250441(n+1)`
-/

namespace A251970.P13576925465417852596
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A251971 (n + 1) : ℚ) / (A250442 (n + 1) : ℚ) : ℝ) * (A250441 (n + 1) : ℝ)

end

end A251970.P13576925465417852596

/-! ## A251970.P15007041281680514227

`sqrt(A251971(n+1)/A250429(n+1))*A251969(n+1)`
-/

namespace A251970.P15007041281680514227
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A251971 (n + 1) : ℚ) / (A250429 (n + 1) : ℚ) : ℝ) * (A251969 (n + 1) : ℝ)

end

end A251970.P15007041281680514227

/-!
# A251971: Number of (n+1)X(5+1) 0..3 arrays with nondecreasing sum of every two consecutive values in every row and column.

The programs for A251971, there is no canonical definition to state claims against.
-/

/-! ## A251971.P14339353709284023722

`A251970(n+1)²/A250440(n+1)`
-/

namespace A251971.P14339353709284023722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251970 (n + 1) ^ 2 : ℚ) / (A250440 (n + 1) : ℚ)

end

end A251971.P14339353709284023722

/-! ## A251971.P1520171642409328624

`A250429(n+1)/A250427(n+1)*A250442(n+1)`
-/

namespace A251971.P1520171642409328624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250429 (n + 1) : ℚ) / (A250427 (n + 1) : ℚ) * (A250442 (n + 1) : ℚ)

end

end A251971.P1520171642409328624

/-! ## A251971.P14994225300744180102

`A251972(n+1)²/A251973(n+1)`
-/

namespace A251971.P14994225300744180102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251972 (n + 1) ^ 2 : ℚ) / (A251973 (n + 1) : ℚ)

end

end A251971.P14994225300744180102

/-! ## A251971.P8391265021081377654

`A251974(A167499(n+3))`
-/

namespace A251971.P8391265021081377654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251974 (A167499 (n + 3)).toNat

end

end A251971.P8391265021081377654

/-! ## A251971.P1420018333065431720

`A251974(A374005(n+1))`
-/

namespace A251971.P1420018333065431720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251974 (A374005 (n + 1)).toNat

end

end A251971.P1420018333065431720

/-!
# A251972: Number of (n+1) X (6+1) 0..3 arrays with nondecreasing sum of every two consecutive values in every row and column.

The programs for A251972, there is no canonical definition to state claims against.
-/

/-! ## A251972.P14245420787653231847

`sqrt(A251971(n+1)*A251973(n+1))`
-/

namespace A251972.P14245420787653231847
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A251971 (n + 1) * A251973 (n + 1) : ℝ)

end

end A251972.P14245420787653231847

/-! ## A251972.P7921493962537206551

`A251974(A374007(n+1))`
-/

namespace A251972.P7921493962537206551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251974 (A374007 (n + 1)).toNat

end

end A251972.P7921493962537206551

/-!
# A251973: Number of (n+1)X(7+1) 0..3 arrays with nondecreasing sum of every two consecutive values in every row and column.

The programs for A251973, there is no canonical definition to state claims against.
-/

/-! ## A251973.P994624974660179417

`A251972(n+1)²/A251971(n+1)`
-/

namespace A251973.P994624974660179417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251972 (n + 1) ^ 2 : ℚ) / (A251971 (n + 1) : ℚ)

end

end A251973.P994624974660179417

/-! ## A251973.P11838715088400578157

`A251974(A374008(n+1))`
-/

namespace A251973.P11838715088400578157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251974 (A374008 (n + 1)).toNat

end

end A251973.P11838715088400578157

/-!
# A251975: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum not 0 1 2 7 8 or 9 and every diagonal and antidiagonal sum 0 1 2 7 8 or 9.

The programs for A251975, there is no canonical definition to state claims against.
-/

/-! ## A251975.P17473198993469478922

`A251983(∑[4*n]+1)`
-/

namespace A251975.P17473198993469478922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251975.P17473198993469478922

/-! ## A251975.P12219641506028593020

`lcm(2, A251983(A001844(n)))`
-/

namespace A251975.P12219641506028593020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251983 (A001844 n).toNat)

end

end A251975.P12219641506028593020

/-! ## A251975.P5349246747185398904

`record[A003982(n)*A251983(n+1)]`
-/

namespace A251975.P5349246747185398904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A251983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251975.P5349246747185398904

/-! ## A251975.P13461585061075985782

`record[gcd(A251983(n+1), A323833(n))]`
-/

namespace A251975.P13461585061075985782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A251983 (n + 1)) (A323833 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251975.P13461585061075985782

/-! ## A251975.P7211535432741598374

`record[A203994(n+1)*A251983(n+1)]`
-/

namespace A251975.P7211535432741598374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A251983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251975.P7211535432741598374

/-!
# A251976: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum not 0 1 2 7 8 or 9 and every diagonal and antidiagonal sum 0 1 2 7 8 or 9.

The programs for A251976, there is no canonical definition to state claims against.
-/

/-! ## A251976.P13151232646980527003

`A251983(∑[n]+1)`
-/

namespace A251976.P13151232646980527003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251976.P13151232646980527003

/-! ## A251976.P1394416244742121361

`lcm(2, A251983(A000124(n)))`
-/

namespace A251976.P1394416244742121361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251983 (A000124 n).toNat)

end

end A251976.P1394416244742121361

/-! ## A251976.P5018356798269274409

`record[A010054(n)*A251983(n+1)]`
-/

namespace A251976.P5018356798269274409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251976.P5018356798269274409

/-! ## A251976.P17630987169896593782

`record[A251983(n+1)/A141690(n)]`
-/

namespace A251976.P17630987169896593782
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251983 (n + 1) : ℚ) / (A141690 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251976.P17630987169896593782

/-! ## A251976.P11692655517485180279

`record[root(A251983(n+1), A039798(n))]`
-/

namespace A251976.P11692655517485180279
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251983 (n + 1) : ℝ) ^ (1 / (A039798 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251976.P11692655517485180279

/-!
# A251977: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum not 0 1 2 7 8 or 9 and every diagonal and antidiagonal sum 0 1 2 7 8 or 9.

The programs for A251977, there is no canonical definition to state claims against.
-/

/-! ## A251977.P16784021760645384150

`A251983(∑[n+1]+2)`
-/

namespace A251977.P16784021760645384150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251977.P16784021760645384150

/-! ## A251977.P4533417015837980609

`record[A010054(n)*A251983(n+2)]`
-/

namespace A251977.P4533417015837980609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251983 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251977.P4533417015837980609

/-! ## A251977.P2222788797348351578

`record[gcd(A002262(n), A251983(n+2))]`
-/

namespace A251977.P2222788797348351578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251983 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251977.P2222788797348351578

/-! ## A251977.P16452944120665191180

`record[root(A251983(n+2), A102661(n+1))]`
-/

namespace A251977.P16452944120665191180
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251983 (n + 2) : ℝ) ^ (1 / (A102661 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251977.P16452944120665191180

/-! ## A251977.P11595977167471848147

`record[A251983(Δ[A003453(n+5)])]`
-/

namespace A251977.P11595977167471848147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251977.P11595977167471848147

/-!
# A251978: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum not 0 1 2 7 8 or 9 and every diagonal and antidiagonal sum 0 1 2 7 8 or 9.

The programs for A251978, there is no canonical definition to state claims against.
-/

/-! ## A251978.P15660022811867361995

`A251983(∑[n+2]+4)`
-/

namespace A251978.P15660022811867361995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251978.P15660022811867361995

/-! ## A251978.P15219835458888633474

`lcm(2, A251983(A167614(n+1)))`
-/

namespace A251978.P15219835458888633474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251983 (A167614 (n + 1)).toNat)

end

end A251978.P15219835458888633474

/-! ## A251978.P12338264010591988296

`A251983(A167614(n+1))+A185284(n)`
-/

namespace A251978.P12338264010591988296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (A167614 (n + 1)).toNat + A185284 n

end

end A251978.P12338264010591988296

/-! ## A251978.P3972896591974061637

`or(A000038(n), A251983(A167614(n+1)))`
-/

namespace A251978.P3972896591974061637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A251983 (A167614 (n + 1)).toNat)

end

end A251978.P3972896591974061637

/-! ## A251978.P16046359252796098183

`A251983(A167614(n+1))+A034562(n+1)`
-/

namespace A251978.P16046359252796098183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (A167614 (n + 1)).toNat + A034562 (n + 1)

end

end A251978.P16046359252796098183

/-!
# A251979: Number of (n+2) X (4+2) 0..3 arrays with every 3 X 3 subblock row and column sum not 0 1 2 7 8 or 9 and every diagonal and antidiagonal sum 0 1 2 7 8 or 9.

The programs for A251979, there is no canonical definition to state claims against.
-/

/-! ## A251979.P10323664705035785614

`A251983(A374004(n+1))`
-/

namespace A251979.P10323664705035785614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (A374004 (n + 1)).toNat

end

end A251979.P10323664705035785614

/-! ## A251979.P3814311355839971463

`A251983(A141214(n)+7)`
-/

namespace A251979.P3814311355839971463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (A141214 n + 7).toNat

end

end A251979.P3814311355839971463

/-! ## A251979.P7072539636787039411

`A251983(A052905(n)+9)`
-/

namespace A251979.P7072539636787039411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (A052905 n + 9).toNat

end

end A251979.P7072539636787039411

/-! ## A251979.P3002407245738862902

`A251983(A055999(n)+10)`
-/

namespace A251979.P3002407245738862902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (A055999 n + 10).toNat

end

end A251979.P3002407245738862902

/-! ## A251979.P3987069741826513120

`A251983(A167614(n+2)+1)`
-/

namespace A251979.P3987069741826513120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (A167614 (n + 2) + 1).toNat

end

end A251979.P3987069741826513120

/-!
# A251980: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum not 0 1 2 7 8 or 9 and every diagonal and antidiagonal sum 0 1 2 7 8 or 9.

The programs for A251980, there is no canonical definition to state claims against.
-/

/-! ## A251980.P13961727793771455311

`A251983(A374005(n+1))`
-/

namespace A251980.P13961727793771455311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (A374005 (n + 1)).toNat

end

end A251980.P13961727793771455311

/-! ## A251980.P7784691350785244055

`A251983(A167499(n+3))`
-/

namespace A251980.P7784691350785244055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (A167499 (n + 3)).toNat

end

end A251980.P7784691350785244055

/-! ## A251980.P11776762227977160998

`A251983(eq[7, A066657(n)])`
-/

namespace A251980.P11776762227977160998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251980.P11776762227977160998

/-! ## A251980.P3172429300300640401

`A251983(Δ[A264443(n)])`
-/

namespace A251980.P3172429300300640401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (f1 (n + 1) - f1 n).toNat

end

end A251980.P3172429300300640401

/-! ## A251980.P11175370741924210437

`A251983(A046691(n+3))`
-/

namespace A251980.P11175370741924210437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (A046691 (n + 3)).toNat

end

end A251980.P11175370741924210437

/-!
# A251981: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum not 0 1 2 7 8 or 9 and every diagonal and antidiagonal sum 0 1 2 7 8 or 9.

The programs for A251981, there is no canonical definition to state claims against.
-/

/-! ## A251981.P9544772495949414407

`A251983(A374007(n+1))`
-/

namespace A251981.P9544772495949414407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (A374007 (n + 1)).toNat

end

end A251981.P9544772495949414407

/-! ## A251981.P3554730550727265185

`A251983(eq[7, A131818(n+1)])`
-/

namespace A251981.P3554730550727265185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251981.P3554730550727265185

/-! ## A251981.P10702094482344013141

`A251983(A052905(n+3))`
-/

namespace A251981.P10702094482344013141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (A052905 (n + 3)).toNat

end

end A251981.P10702094482344013141

/-! ## A251981.P6233336724956187588

`A251983(eq[3, A219347(n)])`
-/

namespace A251981.P6233336724956187588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251981.P6233336724956187588

/-! ## A251981.P64890325181737339

`A251983(eq[5, A193592(n)])`
-/

namespace A251981.P64890325181737339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251981.P64890325181737339

/-!
# A251982: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum not 0 1 2 7 8 or 9 and every diagonal and antidiagonal sum 0 1 2 7 8 or 9.

The programs for A251982, there is no canonical definition to state claims against.
-/

/-! ## A251982.P1633488463128806502

`A251983(A374008(n+1))`
-/

namespace A251982.P1633488463128806502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (A374008 (n + 1)).toNat

end

end A251982.P1633488463128806502

/-! ## A251982.P10623203251745699638

`A251983(eq[11, A066657(n)])`
-/

namespace A251982.P10623203251745699638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251982.P10623203251745699638

/-! ## A251982.P6135763382077492745

`A251983(eq[8, A131818(n+1)])`
-/

namespace A251982.P6135763382077492745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251982.P6135763382077492745

/-! ## A251982.P1022364899189625490

`A251983(A055999(n+4))`
-/

namespace A251982.P1022364899189625490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (A055999 (n + 4)).toNat

end

end A251982.P1022364899189625490

/-! ## A251982.P14340751566918965534

`A251983(eq[4, A219347(n)])`
-/

namespace A251982.P14340751566918965534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251982.P14340751566918965534

/-!
# A251984: Smallest number such that a carry occurs when adding it to n in decimal representation.

The programs for A251984, the canonical program `A251984.P15569396119092136468` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251984 has offset 1).

The definition of A251984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251984.P6289956017701537276

`A055120(A274206(n+1))`
-/

namespace A251984.P6289956017701537276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A274206 (n + 1)).toNat

end

end A251984.P6289956017701537276

namespace A251984

/-- `A055120(A274206(n+1))` -/
def P6289956017701537276.Spec : Prop :=
  ∀ n, P6289956017701537276.a n = A251984 (n + 1)

end A251984

/-! ## A251984.P15569396119092136468

`A274206(A089186(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A251984

/-- `A274206(A089186(n+1))` -/
def P15569396119092136468.Spec : Prop :=
  ∀ n, P15569396119092136468.a n = A251984 (n + 1)

theorem P15569396119092136468.correct : P15569396119092136468.Spec := by
  intro n
  simp only [A251984, Nat.add_sub_cancel]

end A251984

/-! ## A251984.P12400582897182009271

`A274206(A178914(n+1))`
-/

namespace A251984.P12400582897182009271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (A178914 (n + 1)).toNat

end

end A251984.P12400582897182009271

namespace A251984

/-- `A274206(A178914(n+1))` -/
def P12400582897182009271.Spec : Prop :=
  ∀ n, P12400582897182009271.a n = A251984 (n + 1)

end A251984

/-! ## A251984.P11684256777153245101

`A274206(A061601(n+1)+1)`
-/

namespace A251984.P11684256777153245101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (A061601 (n + 1) + 1).toNat

end

end A251984.P11684256777153245101

namespace A251984

/-- `A274206(A061601(n+1)+1)` -/
def P11684256777153245101.Spec : Prop :=
  ∀ n, P11684256777153245101.a n = A251984 (n + 1)

end A251984

/-! ## A251984.P6413626504098921800

`∑[A017377(2*n)]%(10^A160094(n+1))`
-/

namespace A251984.P6413626504098921800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.roundAway ((10 : ℚ) ^ (A160094 (n + 1) : ℤ)))

end

end A251984.P6413626504098921800

namespace A251984

/-- `∑[A017377(2*n)]%(10^A160094(n+1))` -/
def P6413626504098921800.Spec : Prop :=
  ∀ n, P6413626504098921800.a n = A251984 (n + 1)

end A251984

/-! ## A251984.P9275425303398187380

`A274206(9*(n+1))`
-/

namespace A251984.P9275425303398187380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (9 * (n + 1))

end

end A251984.P9275425303398187380

namespace A251984

/-- `A274206(9*(n+1))` -/
def P9275425303398187380.Spec : Prop :=
  ∀ n, P9275425303398187380.a n = A251984 (n + 1)

end A251984

/-! ## A251984.P15658675511453479923

`A274206(A111708(n))%A017509(n)`
-/

namespace A251984.P15658675511453479923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274206 (A111708 n).toNat) (A017509 n)

end

end A251984.P15658675511453479923

namespace A251984

/-- `A274206(A111708(n))%A017509(n)` -/
def P15658675511453479923.Spec : Prop :=
  ∀ n, P15658675511453479923.a n = A251984 (n + 1)

end A251984

/-!
# A251985: Number of (n+2)X(1+2) 0..2 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 1 or 5.

The programs for A251985, there is no canonical definition to state claims against.
-/

/-! ## A251985.P15127503349646589988

`A251989(∑[n]+1)`
-/

namespace A251985.P15127503349646589988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251989 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251985.P15127503349646589988

/-! ## A251985.P3263886674859532445

`or(1, A251989(A000124(n)))`
-/

namespace A251985.P3263886674859532445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251989 (A000124 n).toNat)

end

end A251985.P3263886674859532445

/-! ## A251985.P16136672613918067202

`record[A251989(A000124(∑{digits}[n, #]))]`
-/

namespace A251985.P16136672613918067202
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251989 (A000124 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251985.P16136672613918067202

/-! ## A251985.P6220933677596446757

`record[root(A251989(n+1), A039798(n))]`
-/

namespace A251985.P6220933677596446757
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251989 (n + 1) : ℝ) ^ (1 / (A039798 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251985.P6220933677596446757

/-! ## A251985.P7910802639240897373

`record[gcd(A002262(n), A251989(n+1))]`
-/

namespace A251985.P7910802639240897373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251989 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251985.P7910802639240897373

/-!
# A251986: Number of (n+2)X(2+2) 0..2 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 1 or 5.

The programs for A251986, there is no canonical definition to state claims against.
-/

/-! ## A251986.P12479273451527112269

`A251989(∑[n+1]+2)`
-/

namespace A251986.P12479273451527112269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251989 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251986.P12479273451527112269

/-! ## A251986.P9336787096565472694

`record[gcd(A002262(n), A251989(n+2))]`
-/

namespace A251986.P9336787096565472694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251989 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251986.P9336787096565472694

/-! ## A251986.P11198991927464404937

`record[A251989(abs(A201163(n)))]`
-/

namespace A251986.P11198991927464404937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251989 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251986.P11198991927464404937

/-! ## A251986.P7838059186056248785

`record[A251989(Δ[A003453(n+5)])]`
-/

namespace A251986.P7838059186056248785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251989 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251986.P7838059186056248785

/-!
# A251987: Number of (n+2)X(3+2) 0..2 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 1 or 5.

The programs for A251987, there is no canonical definition to state claims against.
-/

/-! ## A251987.P15304487886355637516

`A251989(∑[n+2]+4)`
-/

namespace A251987.P15304487886355637516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251989 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251987.P15304487886355637516

/-! ## A251987.P16985517432349941784

`or(1, A251989(A167614(n+1)))`
-/

namespace A251987.P16985517432349941784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251989 (A167614 (n + 1)).toNat)

end

end A251987.P16985517432349941784

/-! ## A251987.P927346553859544196

`A297233(n+1)+A251989(A167614(n+1))`
-/

namespace A251987.P927346553859544196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297233 (n + 1) + A251989 (A167614 (n + 1)).toNat

end

end A251987.P927346553859544196

/-! ## A251987.P2873162189762583083

`A059514(n+1)*A251989(A167614(n+1))`
-/

namespace A251987.P2873162189762583083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059514 (n + 1) * A251989 (A167614 (n + 1)).toNat

end

end A251987.P2873162189762583083

/-! ## A251987.P13531742479218216446

`A251989(A167614(n+1))%A234455(n+1)`
-/

namespace A251987.P13531742479218216446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251989 (A167614 (n + 1)).toNat) (A234455 (n + 1))

end

end A251987.P13531742479218216446

/-!
# A251988: Number of (n+2)X(4+2) 0..2 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 1 or 5.

The programs for A251988, there is no canonical definition to state claims against.
-/

/-! ## A251988.P3873469697780933044

`A251989(A167614(n+2)+1)`
-/

namespace A251988.P3873469697780933044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251989 (A167614 (n + 2) + 1).toNat

end

end A251988.P3873469697780933044

/-! ## A251988.P13968547381178016893

`A251989(eq[4, A057728(n+1)])`
-/

namespace A251988.P13968547381178016893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251988.P13968547381178016893

/-!
# A251990: Numbers n such that the sum of the hexagonal numbers H(n) and H(n+1) is equal to the sum of the pentagonal numbers P(m) and P(m+1) for some m.

The programs for A251990, there is no canonical definition to state claims against.
-/

/-! ## A251990.P3606583598942248057

`A099486(4*(n+1))`
-/

namespace A251990.P3606583598942248057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099486 (4 * (n + 1))

end

end A251990.P3606583598942248057

/-! ## A251990.P5429162378224893309

`∑[A003500(4*n+3)]`
-/

namespace A251990.P5429162378224893309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003500 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251990.P5429162378224893309

/-! ## A251990.P13869920358662264210

`A011944(n+1)*A094347(n+2)`
-/

namespace A251990.P13869920358662264210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011944 (n + 1) * A094347 (n + 2)

end

end A251990.P13869920358662264210

/-! ## A251990.P11199513681205751637

`A001353(2*(n+1))*A001570(n+2)`
-/

namespace A251990.P11199513681205751637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (2 * (n + 1)) * A001570 (n + 2)

end

end A251990.P11199513681205751637

/-! ## A251990.P12228644754875933877

`2*A011944(n+1)*A001570(n+2)`
-/

namespace A251990.P12228644754875933877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011944 (n + 1) * A001570 (n + 2)

end

end A251990.P12228644754875933877

/-!
# A251991: Numbers n such that the sum of the pentagonal numbers P(n) and P(n+1) is equal to the sum of the hexagonal numbers H(m) and H(m+1) for some m.

The programs for A251991, there is no canonical definition to state claims against.
-/

/-! ## A251991.P547062944429907074

`A123480(2*(n+1))`
-/

namespace A251991.P547062944429907074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123480 (2 * (n + 1))

end

end A251991.P547062944429907074

/-! ## A251991.P7560802814890085442

`4*A108281(n+2)`
-/

namespace A251991.P7560802814890085442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A108281 (n + 2)

end

end A251991.P7560802814890085442

/-! ## A251991.P2056619832669604985

`A189450(4*(n+1))-1`
-/

namespace A251991.P2056619832669604985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189450 (4 * (n + 1)) - 1

end

end A251991.P2056619832669604985

/-! ## A251991.P18222290901380038864

`A103975(2*(n+1))/4`
-/

namespace A251991.P18222290901380038864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103975 (2 * (n + 1)) : ℚ) / 4

end

end A251991.P18222290901380038864

/-! ## A251991.P11690608221350573463

`A072335(3*(n+1)+n)`
-/

namespace A251991.P11690608221350573463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072335 (3 * (n + 1) + n)

end

end A251991.P11690608221350573463

/-!
# A251993: Number of (n+2)X(1+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 2 4 5 or 7.

The programs for A251993, there is no canonical definition to state claims against.
-/

/-! ## A251993.P11366210311892539914

`A252000(∑[n]+1)`
-/

namespace A251993.P11366210311892539914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252000 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251993.P11366210311892539914

/-! ## A251993.P7564190187719456726

`lcm(2, A252000(A000124(n)))`
-/

namespace A251993.P7564190187719456726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252000 (A000124 n).toNat)

end

end A251993.P7564190187719456726

/-! ## A251993.P14418660975185887470

`record[A103451(n)*A252000(n+1)]`
-/

namespace A251993.P14418660975185887470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A252000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251993.P14418660975185887470

/-! ## A251993.P3368961004821578135

`record[root(A252000(n+1), A039798(n))]`
-/

namespace A251993.P3368961004821578135
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252000 (n + 1) : ℝ) ^ (1 / (A039798 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251993.P3368961004821578135

/-! ## A251993.P16453894160302616743

`record[gcd(A141169(n), A252000(n+1))]`
-/

namespace A251993.P16453894160302616743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141169 n) (A252000 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251993.P16453894160302616743

/-!
# A251994: Number of (n+2)X(2+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 2 4 5 or 7.

The programs for A251994, there is no canonical definition to state claims against.
-/

/-! ## A251994.P14237217176779065946

`A252000(∑[n+1]+2)`
-/

namespace A251994.P14237217176779065946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252000 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251994.P14237217176779065946

/-! ## A251994.P4228082952301963165

`record[gcd(A141169(n), A252000(n+2))]`
-/

namespace A251994.P4228082952301963165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141169 n) (A252000 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251994.P4228082952301963165

/-! ## A251994.P7110917823166776774

`record[A252000(A198455(n+1))]`
-/

namespace A251994.P7110917823166776774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252000 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251994.P7110917823166776774

/-! ## A251994.P8301672047505202079

`lcm(2, A252000(A000096(n+1)))`
-/

namespace A251994.P8301672047505202079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252000 (A000096 (n + 1)).toNat)

end

end A251994.P8301672047505202079

/-! ## A251994.P13727024918258489045

`A252000(A000096(n+1))+A034535(n+1)`
-/

namespace A251994.P13727024918258489045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252000 (A000096 (n + 1)).toNat + A034535 (n + 1)

end

end A251994.P13727024918258489045

/-!
# A251995: Number of (n+2)X(3+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 2 4 5 or 7.

The programs for A251995, there is no canonical definition to state claims against.
-/

/-! ## A251995.P4646963691934352773

`A252000(∑[n+2]+4)`
-/

namespace A251995.P4646963691934352773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252000 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251995.P4646963691934352773

/-! ## A251995.P15411344090923806311

`lcm(2, A252000(A167614(n+1)))`
-/

namespace A251995.P15411344090923806311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252000 (A167614 (n + 1)).toNat)

end

end A251995.P15411344090923806311

/-! ## A251995.P3753481265184308824

`A252000(A167614(n+1))%A251996(n+1)`
-/

namespace A251995.P3753481265184308824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252000 (A167614 (n + 1)).toNat) (A251996 (n + 1))

end

end A251995.P3753481265184308824

/-! ## A251995.P209935656909901051

`A252000(Δ[A008778(n)])/gcd(n, n+1)`
-/

namespace A251995.P209935656909901051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252000 (f1 (n + 1) - f1 n).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A251995.P209935656909901051

/-! ## A251995.P1170173334989515732

`A252000(Δ[A008778(n)])%A251996(n+1)`
-/

namespace A251995.P1170173334989515732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252000 (f1 (n + 1) - f1 n).toNat) (A251996 (n + 1))

end

end A251995.P1170173334989515732

/-!
# A251996: Number of (n+2)X(4+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 2 4 5 or 7.

The programs for A251996, there is no canonical definition to state claims against.
-/

/-! ## A251996.P2928064583212583895

`A252000(A167614(n+2)+1)`
-/

namespace A251996.P2928064583212583895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252000 (A167614 (n + 2) + 1).toNat

end

end A251996.P2928064583212583895

/-! ## A251996.P6122046039965163304

`A252000(A052905(n+1)+2)`
-/

namespace A251996.P6122046039965163304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252000 (A052905 (n + 1) + 2).toNat

end

end A251996.P6122046039965163304

/-! ## A251996.P16916606821596857398

`A252000(Δ[A008778(n+1)]-1)`
-/

namespace A251996.P16916606821596857398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252000 (f1 (n + 1) - f1 n - 1).toNat

end

end A251996.P16916606821596857398

/-!
# A251997: Number of (n+2)X(5+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 2 4 5 or 7.

The programs for A251997, there is no canonical definition to state claims against.
-/

/-! ## A251997.P17552290977176372300

`A252000(A056000(n)+15)`
-/

namespace A251997.P17552290977176372300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252000 (A056000 n + 15).toNat

end

end A251997.P17552290977176372300

/-! ## A251997.P6612094554456154192

`A252000(eq[4, A002262(n)]+1)`
-/

namespace A251997.P6612094554456154192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A251997.P6612094554456154192

/-! ## A251997.P1973953277048250086

`A252000(A374005(n+1))`
-/

namespace A251997.P1973953277048250086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252000 (A374005 (n + 1)).toNat

end

end A251997.P1973953277048250086

/-! ## A251997.P8764810195603592920

`A252000(Δ[A023545(n+1)])`
-/

namespace A251997.P8764810195603592920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252000 (f1 (n + 1) - f1 n).toNat

end

end A251997.P8764810195603592920

/-!
# A251999: 

The programs for A251999, there is no canonical definition to state claims against.
-/

/-! ## A251999.P6703635434521122451

`A252000(eq[6, A002262(n)]+1)`
-/

namespace A251999.P6703635434521122451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A251999.P6703635434521122451

/-! ## A251999.P8647029330084686159

`A252000(A055998(n+5)-3)`
-/

namespace A251999.P8647029330084686159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252000 (A055998 (n + 5) - 3).toNat

end

end A251999.P8647029330084686159

