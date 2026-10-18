import SequenceMachineLib
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
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
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

/-!
# A282300: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 453", based on the 5-celled von Neumann neighborhood.

The programs for A282300, there is no canonical definition to state claims against.
-/

/-! ## A282300.P3127909884220408243

`A007088(A282302(n))`
-/

namespace A282300.P3127909884220408243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282302 n).toNat

end

end A282300.P3127909884220408243

/-! ## A282300.P911537003987276301

`A185544(2*A282302(n))`
-/

namespace A282300.P911537003987276301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282302 n).toNat

end

end A282300.P911537003987276301

/-!
# A282301: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 453", based on the 5-celled von Neumann neighborhood.

The programs for A282301, there is no canonical definition to state claims against.
-/

/-! ## A282301.P11824717100292258595

`A007088(A282303(n))`
-/

namespace A282301.P11824717100292258595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282303 n).toNat

end

end A282301.P11824717100292258595

/-! ## A282301.P6990141725509558469

`A185544(2*A282303(n))`
-/

namespace A282301.P6990141725509558469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282303 n).toNat

end

end A282301.P6990141725509558469

/-!
# A282302: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 453", based on the 5-celled von Neumann neighborhood.

The programs for A282302, there is no canonical definition to state claims against.
-/

/-! ## A282302.P16610432735527417438

`A279754(A004891(n+1))+A127672(A328612(n))`
-/

namespace A282302.P16610432735527417438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279754 (A004891 (n + 1)).toNat + A127672 (A328612 n).toNat

end

end A282302.P16610432735527417438

/-! ## A282302.P8263635453173455870

`A279754(A004902(n+1))+A127672(A328612(n))`
-/

namespace A282302.P8263635453173455870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279754 (A004902 (n + 1)).toNat + A127672 (A328612 n).toNat

end

end A282302.P8263635453173455870

/-! ## A282302.P2362394576119289815

`A279754(A004913(n+1))+A127672(A328612(n))`
-/

namespace A282302.P2362394576119289815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279754 (A004913 (n + 1)).toNat + A127672 (A328612 n).toNat

end

end A282302.P2362394576119289815

/-! ## A282302.P10802554666978702456

`A279754(A001222(5^n))+A127672(A328612(n))`
-/

namespace A282302.P10802554666978702456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279754 (A001222 (5 ^ n)).toNat + A127672 (A328612 n).toNat

end

end A282302.P10802554666978702456

/-!
# A282305: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 454", based on the 5-celled von Neumann neighborhood.

The programs for A282305, there is no canonical definition to state claims against.
-/

/-! ## A282305.P2968526231486814172

`A000042(n+1)-A283372(A028310(n))`
-/

namespace A282305.P2968526231486814172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A283372 (A028310 n).toNat

end

end A282305.P2968526231486814172

/-! ## A282305.P11699284381783653908

`A002275(n+1)-A283372(A028310(n))`
-/

namespace A282305.P11699284381783653908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) - A283372 (A028310 n).toNat

end

end A282305.P11699284381783653908

/-! ## A282305.P4555541661872915752

`A282306(n)+A283373(n)-A283372(n)`
-/

namespace A282305.P4555541661872915752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282306 n + (A283373 n - A283372 n)

end

end A282305.P4555541661872915752

/-! ## A282305.P8382083426667850154

`A282602(n)+A283283(n)-A283372(n)`
-/

namespace A282305.P8382083426667850154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282602 n + (A283283 n - A283372 n)

end

end A282305.P8382083426667850154

/-! ## A282305.P12294965504426685036

`A282603(n)+A283284(n)-A283372(n)`
-/

namespace A282305.P12294965504426685036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282603 n + (A283284 n - A283372 n)

end

end A282305.P12294965504426685036

/-!
# A282306: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 454", based on the 5-celled von Neumann neighborhood.

The programs for A282306, there is no canonical definition to state claims against.
-/

/-! ## A282306.P3226095747647029073

`∑[10^n]-A283373(A028310(n))`
-/

namespace A282306.P3226095747647029073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A283373 (A028310 n).toNat

end

end A282306.P3226095747647029073

/-! ## A282306.P13317011362955363171

`A282305(n)+A283372(n)-A283373(n)`
-/

namespace A282306.P13317011362955363171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282305 n + (A283372 n - A283373 n)

end

end A282306.P13317011362955363171

/-! ## A282306.P7367700243514475792

`A282602(n)+A283283(n)-A283373(n)`
-/

namespace A282306.P7367700243514475792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282602 n + (A283283 n - A283373 n)

end

end A282306.P7367700243514475792

/-! ## A282306.P16328833364915509925

`A282603(n)+A283284(n)-A283373(n)`
-/

namespace A282306.P16328833364915509925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282603 n + (A283284 n - A283373 n)

end

end A282306.P16328833364915509925

/-! ## A282306.P3959931685836335071

`A282305(n)+A283372(n)-A007088(A283375(n))`
-/

namespace A282306.P3959931685836335071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282305 n + (A283372 n - A007088 (A283375 n).toNat)

end

end A282306.P3959931685836335071

/-!
# A282307: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 454", based on the 5-celled von Neumann neighborhood.

The programs for A282307, there is no canonical definition to state claims against.
-/

/-! ## A282307.P13007385395833046143

`A282604(n)+A283285(n)-A283374(n)`
-/

namespace A282307.P13007385395833046143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282604 n + (A283285 n - A283374 n)

end

end A282307.P13007385395833046143

/-! ## A282307.P10957348418317913499

`A095121(n)+1-A283374(n)`
-/

namespace A282307.P10957348418317913499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A283374 n)

end

end A282307.P10957348418317913499

/-! ## A282307.P15065992884035107690

`A126646(n)-A283374(A028310(n))`
-/

namespace A282307.P15065992884035107690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A283374 (A028310 n).toNat

end

end A282307.P15065992884035107690

/-! ## A282307.P10989790282314224851

`A282308(n)+A283375(n)-A283374(n)`
-/

namespace A282307.P10989790282314224851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282308 n + (A283375 n - A283374 n)

end

end A282307.P10989790282314224851

/-! ## A282307.P16958190142105447972

`A282605(n)+A283286(n)-A283374(n)`
-/

namespace A282307.P16958190142105447972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282605 n + (A283286 n - A283374 n)

end

end A282307.P16958190142105447972

/-! ## A282307.P8986828219697787643

`A126646(n)-A283374(n)%A095121(n)`
-/

namespace A282307.P8986828219697787643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A283374 n) (A095121 n)

end

end A282307.P8986828219697787643

/-!
# A282308: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 454", based on the 5-celled von Neumann neighborhood.

The programs for A282308, there is no canonical definition to state claims against.
-/

/-! ## A282308.P15506561810973115883

`A095121(n)+1-A283375(n)`
-/

namespace A282308.P15506561810973115883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A283375 n)

end

end A282308.P15506561810973115883

/-! ## A282308.P10076208087746977787

`or(1, A126646(n)-A283375(n))`
-/

namespace A282308.P10076208087746977787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126646 n - A283375 n)

end

end A282308.P10076208087746977787

/-! ## A282308.P13633828463222062484

`A126646(n)-A283375(A028310(n))`
-/

namespace A282308.P13633828463222062484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A283375 (A028310 n).toNat

end

end A282308.P13633828463222062484

/-! ## A282308.P952943712906491717

`A282307(n)+A283374(n)-A283375(n)`
-/

namespace A282308.P952943712906491717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282307 n + (A283374 n - A283375 n)

end

end A282308.P952943712906491717

/-! ## A282308.P8809446159376058173

`A282604(n)+A283285(n)-A283375(n)`
-/

namespace A282308.P8809446159376058173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282604 n + (A283285 n - A283375 n)

end

end A282308.P8809446159376058173

/-! ## A282308.P11494787951891439710

`A282605(n)+A283286(n)-A283375(n)`
-/

namespace A282308.P11494787951891439710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282605 n + (A283286 n - A283375 n)

end

end A282308.P11494787951891439710

/-! ## A282308.P9588393424102692513

`A020707(n)-or(A048578(n), A283375(n))`
-/

namespace A282308.P9588393424102692513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n - Int.lor (A048578 n) (A283375 n)

end

end A282308.P9588393424102692513

/-!
# A282309: Number of n X n 0..1 arrays with no 1 equal to more than four of its king-move neighbors.

The programs for A282309, there is no canonical definition to state claims against.
-/

/-! ## A282309.P11355327514912728031

`A282316(∑[4*n]+1)`
-/

namespace A282309.P11355327514912728031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282316 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A282309.P11355327514912728031

/-! ## A282309.P969508853408123281

`record[A003982(n)*A282316(n+1)]`
-/

namespace A282309.P969508853408123281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A282316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282309.P969508853408123281

/-! ## A282309.P3133248895857825703

`lcm(A087960(n), A282316(A001844(n)))`
-/

namespace A282309.P3133248895857825703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A282316 (A001844 n).toNat)

end

end A282309.P3133248895857825703

/-! ## A282309.P12107448611852259102

`A282338(n+1)+A282316(A001844(n))`
-/

namespace A282309.P12107448611852259102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282338 (n + 1) + A282316 (A001844 n).toNat

end

end A282309.P12107448611852259102

/-! ## A282309.P1586202432084367500

`A008835(n+1)*A282316(A001844(n))`
-/

namespace A282309.P1586202432084367500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (n + 1) * A282316 (A001844 n).toNat

end

end A282309.P1586202432084367500

/-!
# A282310: Number of n X 2 0..1 arrays with no 1 equal to more than four of its king-move neighbors.

The programs for A282310, the canonical program `A282310.P12292779318306874923` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282310 has offset 1).

The definition of A282310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282310.P2191207024002419831

`ogf((4+4x+3x^2)/(1-3x-3x^2-3x^3))`
-/

namespace A282310.P2191207024002419831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 4, 3] [1, -3, -3, -3] n

end

end A282310.P2191207024002419831

namespace A282310

/-- `ogf((4+4x+3x^2)/(1-3x-3x^2-3x^3))` -/
def P2191207024002419831.Spec : Prop :=
  ∀ n, P2191207024002419831.a n = A282310 (n + 1)

end A282310

/-! ## A282310.P12292779318306874923

`3*a(n-1)+3*a(n-2)+3*a(n-3)` with `a(0)=4, a(1)=16, a(2)=63`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A282310

/-- `3*a(n-1)+3*a(n-2)+3*a(n-3)` -/
def P12292779318306874923.Spec : Prop :=
  ∀ n, (P12292779318306874923.a n : ℤ) = A282310 (n + 1)

theorem P12292779318306874923.correct : P12292779318306874923.Spec := by
  intro n
  simp only [A282310, Nat.add_sub_cancel]

end A282310

/-! ## A282310.P10924818172221100507

`A077828(n+2)/3`
-/

namespace A282310.P10924818172221100507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077828 (n + 2) : ℚ) / 3

end

end A282310.P10924818172221100507

namespace A282310

/-- `A077828(n+2)/3` -/
def P10924818172221100507.Spec : Prop :=
  ∀ n, P10924818172221100507.a n = (A282310 (n + 1) : ℚ)

end A282310

/-! ## A282310.P15749434959226314384

`A188714(n+2)/4`
-/

namespace A282310.P15749434959226314384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188714 (n + 2) : ℚ) / 4

end

end A282310.P15749434959226314384

namespace A282310

/-- `A188714(n+2)/4` -/
def P15749434959226314384.Spec : Prop :=
  ∀ n, P15749434959226314384.a n = (A282310 (n + 1) : ℚ)

end A282310

/-! ## A282310.P2089499374212843007

`Δ[A077821(n+1)/3]`
-/

namespace A282310.P2089499374212843007
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077821 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282310.P2089499374212843007

namespace A282310

/-- `Δ[A077821(n+1)/3]` -/
def P2089499374212843007.Spec : Prop :=
  ∀ n, P2089499374212843007.a n = (A282310 (n + 1) : ℚ)

end A282310

/-! ## A282310.P16311245039018791847

`record[A077828(abs(2-n))/3]`
-/

namespace A282310.P16311245039018791847
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077828 |2 - (n : ℤ)|.toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282310.P16311245039018791847

namespace A282310

/-- `record[A077828(abs(2-n))/3]` -/
def P16311245039018791847.Spec : Prop :=
  ∀ n, P16311245039018791847.a n = (A282310 (n + 1) : ℚ)

end A282310

/-!
# A282311: Number of n X 3 0..1 arrays with no 1 equal to more than four of its king-move neighbors.

The programs for A282311, there is no canonical definition to state claims against.
-/

/-! ## A282311.P612382389759821354

`A282316(∑[n+2]+4)`
-/

namespace A282311.P612382389759821354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282316 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A282311.P612382389759821354

/-! ## A282311.P8430361314342821814

`and(-1, A282316(A167614(n+1)))`
-/

namespace A282311.P8430361314342821814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A282316 (A167614 (n + 1)).toNat)

end

end A282311.P8430361314342821814

/-! ## A282311.P9097643665228473759

`A282316(A167614(n+1))+A178798(n)`
-/

namespace A282311.P9097643665228473759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282316 (A167614 (n + 1)).toNat + A178798 n

end

end A282311.P9097643665228473759

/-! ## A282311.P6221775998261638447

`A282316(A167614(n+1))%A042404(n)`
-/

namespace A282311.P6221775998261638447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282316 (A167614 (n + 1)).toNat) (A042404 n)

end

end A282311.P6221775998261638447

/-! ## A282311.P5820182441854928606

`A282316(A167614(n+1))+A000007(n+1)`
-/

namespace A282311.P5820182441854928606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282316 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A282311.P5820182441854928606

/-!
# A282312: Number of nX4 0..1 arrays with no 1 equal to more than four of its king-move neighbors.

The programs for A282312, there is no canonical definition to state claims against.
-/

/-! ## A282312.P12711464649764920070

`A282316(A374004(n+1))`
-/

namespace A282312.P12711464649764920070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282316 (A374004 (n + 1)).toNat

end

end A282312.P12711464649764920070

/-! ## A282312.P16716102859629724874

`A282316(A141214(n)+7)`
-/

namespace A282312.P16716102859629724874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282316 (A141214 n + 7).toNat

end

end A282312.P16716102859629724874

/-! ## A282312.P15186138134180050560

`A282316(A052905(n)+9)`
-/

namespace A282312.P15186138134180050560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282316 (A052905 n + 9).toNat

end

end A282312.P15186138134180050560

/-! ## A282312.P13978236016203342270

`A282316(A055999(n)+10)`
-/

namespace A282312.P13978236016203342270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282316 (A055999 n + 10).toNat

end

end A282312.P13978236016203342270

/-! ## A282312.P7078288659266767701

`A282316(A167614(n+2)+1)`
-/

namespace A282312.P7078288659266767701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282316 (A167614 (n + 2) + 1).toNat

end

end A282312.P7078288659266767701

/-!
# A282313: Number of nX5 0..1 arrays with no 1 equal to more than four of its king-move neighbors.

The programs for A282313, there is no canonical definition to state claims against.
-/

/-! ## A282313.P3030091122987946571

`A282316(A374005(n+1))`
-/

namespace A282313.P3030091122987946571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282316 (A374005 (n + 1)).toNat

end

end A282313.P3030091122987946571

/-! ## A282313.P8263126078273908255

`A282316(A155212(n)+13)`
-/

namespace A282313.P8263126078273908255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282316 (A155212 n + 13).toNat

end

end A282313.P8263126078273908255

/-! ## A282313.P9056245771795962114

`A282316(eq[6, A131818(n+1)])`
-/

namespace A282313.P9056245771795962114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282313.P9056245771795962114

/-! ## A282313.P14634460459719323599

`A282316(Δ[A264443(n)])`
-/

namespace A282313.P14634460459719323599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282316 (f1 (n + 1) - f1 n).toNat

end

end A282313.P14634460459719323599

/-! ## A282313.P3563553589233708075

`A282316(eq[4, A193592(n)])`
-/

namespace A282313.P3563553589233708075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282313.P3563553589233708075

/-!
# A282314: Number of nX6 0..1 arrays with no 1 equal to more than four of its king-move neighbors.

The programs for A282314, there is no canonical definition to state claims against.
-/

/-! ## A282314.P11898026321032373068

`A282316(A374007(n+1))`
-/

namespace A282314.P11898026321032373068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282316 (A374007 (n + 1)).toNat

end

end A282314.P11898026321032373068

/-! ## A282314.P4614868369960551128

`A282316(eq[7, A131818(n+1)])`
-/

namespace A282314.P4614868369960551128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282314.P4614868369960551128

/-! ## A282314.P17768434869832924053

`A282316(A238531(n+7)-(n+2))`
-/

namespace A282314.P17768434869832924053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282316 (A238531 (n + 7) - (n + 2 : ℤ)).toNat

end

end A282314.P17768434869832924053

/-! ## A282314.P4374937571166475811

`A282316(eq[5, A193592(n)])`
-/

namespace A282314.P4374937571166475811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282314.P4374937571166475811

/-! ## A282314.P14750020698439766921

`A282316(eq[8, A185782(n+1)])`
-/

namespace A282314.P14750020698439766921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282314.P14750020698439766921

/-!
# A282315: Number of nX7 0..1 arrays with no 1 equal to more than four of its king-move neighbors.

The programs for A282315, there is no canonical definition to state claims against.
-/

/-! ## A282315.P1647519843387867136

`A282316(A374008(n+1))`
-/

namespace A282315.P1647519843387867136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282316 (A374008 (n + 1)).toNat

end

end A282315.P1647519843387867136

/-! ## A282315.P2961861151546160539

`A282316(A238531(n+7)+5)`
-/

namespace A282315.P2961861151546160539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282316 (A238531 (n + 7) + 5).toNat

end

end A282315.P2961861151546160539

/-! ## A282315.P4031224543077882492

`A282316(eq[8, A131818(n+1)])`
-/

namespace A282315.P4031224543077882492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282315.P4031224543077882492

/-! ## A282315.P5554214297270346711

`A282316(A055999(n+4))`
-/

namespace A282315.P5554214297270346711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282316 (A055999 (n + 4)).toNat

end

end A282315.P5554214297270346711

/-! ## A282315.P14153600386122934936

`A282316(eq[6, A193592(n)])`
-/

namespace A282315.P14153600386122934936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282315.P14153600386122934936

/-!
# A282316: T(n,k)=Number of nXk 0..1 arrays with no 1 equal to more than four of its king-move neighbors.

The programs for A282316, there is no canonical definition to state claims against.
-/

/-! ## A282316.P1142128279400815115

`A301784(n+1)+A115060(A299001(n+1))`
-/

namespace A282316.P1142128279400815115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (n + 1) + A115060 (A299001 (n + 1)).toNat

end

end A282316.P1142128279400815115

/-! ## A282316.P17633728259314876855

`A301784(n+1)+A115060(A299668(n+1))`
-/

namespace A282316.P17633728259314876855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (n + 1) + A115060 (A299668 (n + 1)).toNat

end

end A282316.P17633728259314876855

/-! ## A282316.P15932966389847014408

`A301784(n+1)+A115060(A299746(n+1))`
-/

namespace A282316.P15932966389847014408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (n + 1) + A115060 (A299746 (n + 1)).toNat

end

end A282316.P15932966389847014408

/-! ## A282316.P975139989438693007

`A301784(n+1)+A115060(A300259(n+1))`
-/

namespace A282316.P975139989438693007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (n + 1) + A115060 (A300259 (n + 1)).toNat

end

end A282316.P975139989438693007

/-! ## A282316.P2784638182877684017

`A299661(n+1)+A130446(A299001(n+1))`
-/

namespace A282316.P2784638182877684017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299661 (n + 1) + A130446 (A299001 (n + 1)).toNat

end

end A282316.P2784638182877684017

/-!
# A282317: Lexicographically earliest infinite cubefree word over alphabet {0,1}.

The programs for A282317, there is no canonical definition to state claims against.
-/

/-! ## A282317.P1868351623837685925

`1-A365261(n)`
-/

namespace A282317.P1868351623837685925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A365261 n

end

end A282317.P1868351623837685925

/-! ## A282317.P17698413515550914666

`xor(A020985(n)², A365261(n))`
-/

namespace A282317.P17698413515550914666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020985 n ^ 2) (A365261 n)

end

end A282317.P17698413515550914666

/-! ## A282317.P11546661738408598350

`A000007((n+1)*A365261(n))`
-/

namespace A282317.P11546661738408598350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n + 1 : ℤ) * A365261 n).toNat

end

end A282317.P11546661738408598350

/-! ## A282317.P16013270103198102622

`C(A045698(n), 2*A365261(n))`
-/

namespace A282317.P16013270103198102622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A045698 n).toNat (2 * A365261 n).toNat

end

end A282317.P16013270103198102622

/-! ## A282317.P15826966794675219894

`C(A068907(n), 11*A365261(n))`
-/

namespace A282317.P15826966794675219894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A068907 n).toNat (11 * A365261 n).toNat

end

end A282317.P15826966794675219894

/-! ## A282317.P2489426225379535683

`C(n, A001753(n)*A365261(n))`
-/

namespace A282317.P2489426225379535683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A001753 n * A365261 n).toNat

end

end A282317.P2489426225379535683

/-! ## A282317.P8218329205058361954

`(A365261(n)+A030460(n+1))%2`
-/

namespace A282317.P8218329205058361954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365261 n + A030460 (n + 1)) 2

end

end A282317.P8218329205058361954

/-! ## A282317.P17674460381717748244

`C(2, A006037(n+1)*A365261(n))`
-/

namespace A282317.P17674460381717748244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A006037 (n + 1) * A365261 n).toNat

end

end A282317.P17674460381717748244

/-! ## A282317.P770366840247362759

`(A365296(2*n+1)+A365261(n))%2`
-/

namespace A282317.P770366840247362759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365296 (2 * n + 1) + A365261 n) 2

end

end A282317.P770366840247362759

/-! ## A282317.P6384292138228265167

`A000122(A127880(n+1)*A365261(n))`
-/

namespace A282317.P6384292138228265167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A127880 (n + 1) * A365261 n).toNat

end

end A282317.P6384292138228265167

/-! ## A282317.P16494671088163977416

`A045534(A127880(n+1)*A365261(n))`
-/

namespace A282317.P16494671088163977416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 (A127880 (n + 1) * A365261 n).toNat

end

end A282317.P16494671088163977416

/-! ## A282317.P9380217176232179809

`A045534(A286261(n+4)*A365261(n))`
-/

namespace A282317.P9380217176232179809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 (A286261 (n + 4) * A365261 n).toNat

end

end A282317.P9380217176232179809

/-! ## A282317.P13461633482833036140

`A089013(A365261(n)+A286100(2*(n+1)))`
-/

namespace A282317.P13461633482833036140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089013 (A365261 n + A286100 (2 * (n + 1))).toNat

end

end A282317.P13461633482833036140

/-! ## A282317.P4976420880045931974

`A109247(A365261(n)+A286100(2*(n+1)))`
-/

namespace A282317.P4976420880045931974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109247 (A365261 n + A286100 (2 * (n + 1))).toNat

end

end A282317.P4976420880045931974

/-! ## A282317.P4497158277317798194

`A109247(A287393(2*(n+2))*A365261(n))`
-/

namespace A282317.P4497158277317798194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109247 (A287393 (2 * (n + 2)) * A365261 n).toNat

end

end A282317.P4497158277317798194

/-!
# A282318: Number of ways of writing n as a sum of a prime and a nonprime squarefree number.

The programs for A282318, there is no canonical definition to state claims against.
-/

/-! ## A282318.P11416147481590770433

`A098983(n)-A073610(C(n, n²)+n)`
-/

namespace A282318.P11416147481590770433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098983 n - A073610 (Nat.choose n (n ^ 2) + n)

end

end A282318.P11416147481590770433

/-! ## A282318.P2861818286989733077

`A098983(n)-A073610(A028310(n))`
-/

namespace A282318.P2861818286989733077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098983 n - A073610 (A028310 n).toNat

end

end A282318.P2861818286989733077

/-! ## A282318.P17804221671248844365

`A098983(n)-A073610(A000007(n)+n)`
-/

namespace A282318.P17804221671248844365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098983 n - A073610 (A000007 n + (n : ℤ)).toNat

end

end A282318.P17804221671248844365

/-! ## A282318.P11253439546879973002

`A098983(n)-A073610(xor(n, A000007(n)))`
-/

namespace A282318.P11253439546879973002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098983 n - A073610 (Int.xor (n : ℤ) (A000007 n)).toNat

end

end A282318.P11253439546879973002

/-! ## A282318.P6300611093229812109

`A098983(n)-A073610(A233583(n+1))`
-/

namespace A282318.P6300611093229812109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098983 n - A073610 (A233583 (n + 1)).toNat

end

end A282318.P6300611093229812109

/-!
# A282321: Lesser of twin primes congruent to 11 (mod 30).

The programs for A282321, the canonical program `A282321.P10473487783987751182` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282321 has offset 1).

The definition of A282321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6482 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282321.P207002839373263560

`A282322(n+1)-2`
-/

namespace A282321.P207002839373263560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282322 (n + 1) - 2

end

end A282321.P207002839373263560

namespace A282321

/-- `A282322(n+1)-2` -/
def P207002839373263560.Spec : Prop :=
  ∀ n, P207002839373263560.a n = A282321 (n + 1)

end A282321

/-! ## A282321.P12939529368255408431

`A181604(n+2)-2`
-/

namespace A282321.P12939529368255408431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181604 (n + 2) - 2

end

end A282321.P12939529368255408431

namespace A282321

/-- `A181604(n+2)-2` -/
def P12939529368255408431.Spec : Prop :=
  ∀ n, P12939529368255408431.a n = A282321 (n + 1)

end A282321

/-! ## A282321.P10473487783987751182

`∩[A001359(n+1), A030430(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A282321

/-- `∩[A001359(n+1), A030430(n+1)]` -/
def P10473487783987751182.Spec : Prop :=
  ∀ n, (P10473487783987751182.a n : ℤ) = A282321 (n + 1)

theorem P10473487783987751182.correct : P10473487783987751182.Spec := by
  intro n
  simp only [A282321, Nat.add_sub_cancel]

end A282321

/-! ## A282321.P2844280440236115620

`∩[A001359(n+1), A132232(n+1)]`
-/

namespace A282321.P2844280440236115620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282321.P2844280440236115620

namespace A282321

/-- `∩[A001359(n+1), A132232(n+1)]` -/
def P2844280440236115620.Spec : Prop :=
  ∀ n, (P2844280440236115620.a n : ℤ) = A282321 (n + 1)

end A282321

/-! ## A282321.P16018642008818107557

`∩[A006512(n+1), A132233(n+1)]-2`
-/

namespace A282321.P16018642008818107557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A282321.P16018642008818107557

namespace A282321

/-- `∩[A006512(n+1), A132233(n+1)]-2` -/
def P16018642008818107557.Spec : Prop :=
  ∀ n, P16018642008818107557.a n = A282321 (n + 1)

end A282321

/-! ## A282321.P10131433549073929341

`∩[A067829(n+1), A132233(n+1)]-2`
-/

namespace A282321.P10131433549073929341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A282321.P10131433549073929341

namespace A282321

/-- `∩[A067829(n+1), A132233(n+1)]-2` -/
def P10131433549073929341.Spec : Prop :=
  ∀ n, P10131433549073929341.a n = A282321 (n + 1)

end A282321

/-! ## A282321.P16050047261852842464

`p?[A030431(n+1)-2]`
-/

namespace A282321.P16050047261852842464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A282321.P16050047261852842464

namespace A282321

/-- `p?[A030431(n+1)-2]` -/
def P16050047261852842464.Spec : Prop :=
  ∀ n, P16050047261852842464.a n = A282321 (n + 1)

end A282321

/-! ## A282321.P18072988812350925065

`∩[A132232(n+1), A132247(n+1)]`
-/

namespace A282321.P18072988812350925065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282321.P18072988812350925065

namespace A282321

/-- `∩[A132232(n+1), A132247(n+1)]` -/
def P18072988812350925065.Spec : Prop :=
  ∀ n, (P18072988812350925065.a n : ℤ) = A282321 (n + 1)

end A282321

/-! ## A282321.P707154861192735504

`∩[A132233(n+1), A132247(n+1)]-2`
-/

namespace A282321.P707154861192735504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A282321.P707154861192735504

namespace A282321

/-- `∩[A132233(n+1), A132247(n+1)]-2` -/
def P707154861192735504.Spec : Prop :=
  ∀ n, P707154861192735504.a n = A282321 (n + 1)

end A282321

/-! ## A282321.P4330209230179980877

`∩[A001097(n+1), A132232(n+1)]`
-/

namespace A282321.P4330209230179980877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282321.P4330209230179980877

namespace A282321

/-- `∩[A001097(n+1), A132232(n+1)]` -/
def P4330209230179980877.Spec : Prop :=
  ∀ n, (P4330209230179980877.a n : ℤ) = A282321 (n + 1)

end A282321

/-! ## A282321.P1017548850930762190

`∩[A132232(n+1), A171688(n+1)]`
-/

namespace A282321.P1017548850930762190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282321.P1017548850930762190

namespace A282321

/-- `∩[A132232(n+1), A171688(n+1)]` -/
def P1017548850930762190.Spec : Prop :=
  ∀ n, (P1017548850930762190.a n : ℤ) = A282321 (n + 1)

end A282321

/-! ## A282321.P3367102308953058236

`∩[A132232(n+1), A171821(n+1)]`
-/

namespace A282321.P3367102308953058236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282321.P3367102308953058236

namespace A282321

/-- `∩[A132232(n+1), A171821(n+1)]` -/
def P3367102308953058236.Spec : Prop :=
  ∀ n, (P3367102308953058236.a n : ℤ) = A282321 (n + 1)

end A282321

/-! ## A282321.P7195458244417293765

`∩[A132232(n+1), A265760(n+1)]`
-/

namespace A282321.P7195458244417293765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282321.P7195458244417293765

namespace A282321

/-- `∩[A132232(n+1), A265760(n+1)]` -/
def P7195458244417293765.Spec : Prop :=
  ∀ n, (P7195458244417293765.a n : ℤ) = A282321 (n + 1)

end A282321

/-! ## A282321.P5602130316891240730

`∩[A001097(n+1), A132233(n+1)-2]`
-/

namespace A282321.P5602130316891240730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282321.P5602130316891240730

namespace A282321

/-- `∩[A001097(n+1), A132233(n+1)-2]` -/
def P5602130316891240730.Spec : Prop :=
  ∀ n, (P5602130316891240730.a n : ℤ) = A282321 (n + 1)

end A282321

/-! ## A282321.P11801694337502151265

`∩[A132233(n+1), A171688(n+1)]-2`
-/

namespace A282321.P11801694337502151265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A282321.P11801694337502151265

namespace A282321

/-- `∩[A132233(n+1), A171688(n+1)]-2` -/
def P11801694337502151265.Spec : Prop :=
  ∀ n, P11801694337502151265.a n = A282321 (n + 1)

end A282321

/-! ## A282321.P12288423838751626921

`∩[A006512(n+1)-2, A140506(n+1)]`
-/

namespace A282321.P12288423838751626921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282321.P12288423838751626921

namespace A282321

/-- `∩[A006512(n+1)-2, A140506(n+1)]` -/
def P12288423838751626921.Spec : Prop :=
  ∀ n, (P12288423838751626921.a n : ℤ) = A282321 (n + 1)

end A282321

/-! ## A282321.P10276369689091813454

`p?[p?[a(n-1)+5]-2]` with `a(0)=3`
-/

namespace A282321.P10276369689091813454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A282321.P10276369689091813454

namespace A282321

/-- `p?[p?[a(n-1)+5]-2]` -/
def P10276369689091813454.Spec : Prop :=
  ∀ n, P10276369689091813454.a n = A282321 (n + 1)

end A282321

/-! ## A282321.P4407536414048826220

`∩[A001097(n+1), A030431(n+1)-2]`
-/

namespace A282321.P4407536414048826220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282321.P4407536414048826220

namespace A282321

/-- `∩[A001097(n+1), A030431(n+1)-2]` -/
def P4407536414048826220.Spec : Prop :=
  ∀ n, (P4407536414048826220.a n : ℤ) = A282321 (n + 1)

end A282321

/-! ## A282321.P18393848173825334668

`∩[A006512(n+1), A030431(n+1)]-2`
-/

namespace A282321.P18393848173825334668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A282321.P18393848173825334668

namespace A282321

/-- `∩[A006512(n+1), A030431(n+1)]-2` -/
def P18393848173825334668.Spec : Prop :=
  ∀ n, P18393848173825334668.a n = A282321 (n + 1)

end A282321

/-! ## A282321.P14425513780501941060

`∩[A030431(n+1)-2, A132247(n+1)]`
-/

namespace A282321.P14425513780501941060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282321.P14425513780501941060

namespace A282321

/-- `∩[A030431(n+1)-2, A132247(n+1)]` -/
def P14425513780501941060.Spec : Prop :=
  ∀ n, (P14425513780501941060.a n : ℤ) = A282321 (n + 1)

end A282321

/-!
# A282322: Greater of twin primes congruent to 13 (mod 30).

The programs for A282322, the canonical program `A282322.P3045035046457869279` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282322 has offset 1).

The definition of A282322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282322.P3045035046457869279

`A282321(n+1)+2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A282322

/-- `A282321(n+1)+2` -/
def P3045035046457869279.Spec : Prop :=
  ∀ n, P3045035046457869279.a n = A282322 (n + 1)

theorem P3045035046457869279.correct : P3045035046457869279.Spec := by
  intro n
  simp only [A282322, Nat.add_sub_cancel]

end A282322

/-! ## A282322.P5739976920828393170

`A181604(n+2)`
-/

namespace A282322.P5739976920828393170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181604 (n + 2)

end

end A282322.P5739976920828393170

namespace A282322

/-- `A181604(n+2)` -/
def P5739976920828393170.Spec : Prop :=
  ∀ n, P5739976920828393170.a n = A282322 (n + 1)

end A282322

/-! ## A282322.P465017872692920275

`∩[A001359(n+1), A030430(n+1)]+2`
-/

namespace A282322.P465017872692920275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A282322.P465017872692920275

namespace A282322

/-- `∩[A001359(n+1), A030430(n+1)]+2` -/
def P465017872692920275.Spec : Prop :=
  ∀ n, (P465017872692920275.a n : ℤ) = A282322 (n + 1)

end A282322

/-! ## A282322.P15558523756176355940

`∩[A001359(n+1), A132232(n+1)]+2`
-/

namespace A282322.P15558523756176355940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A282322.P15558523756176355940

namespace A282322

/-- `∩[A001359(n+1), A132232(n+1)]+2` -/
def P15558523756176355940.Spec : Prop :=
  ∀ n, (P15558523756176355940.a n : ℤ) = A282322 (n + 1)

end A282322

/-! ## A282322.P1267384565587030054

`∩[A006512(n+1), A132233(n+1)]`
-/

namespace A282322.P1267384565587030054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282322.P1267384565587030054

namespace A282322

/-- `∩[A006512(n+1), A132233(n+1)]` -/
def P1267384565587030054.Spec : Prop :=
  ∀ n, (P1267384565587030054.a n : ℤ) = A282322 (n + 1)

end A282322

/-! ## A282322.P2542722984730787503

`∩[A067829(n+1), A132233(n+1)]`
-/

namespace A282322.P2542722984730787503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282322.P2542722984730787503

namespace A282322

/-- `∩[A067829(n+1), A132233(n+1)]` -/
def P2542722984730787503.Spec : Prop :=
  ∀ n, (P2542722984730787503.a n : ℤ) = A282322 (n + 1)

end A282322

/-! ## A282322.P7586507296970659379

`p?[A030430(n+1)+2]`
-/

namespace A282322.P7586507296970659379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A282322.P7586507296970659379

namespace A282322

/-- `p?[A030430(n+1)+2]` -/
def P7586507296970659379.Spec : Prop :=
  ∀ n, P7586507296970659379.a n = A282322 (n + 1)

end A282322

/-! ## A282322.P2610036912701224256

`p?[A132232(n+1)+2]`
-/

namespace A282322.P2610036912701224256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A282322.P2610036912701224256

namespace A282322

/-- `p?[A132232(n+1)+2]` -/
def P2610036912701224256.Spec : Prop :=
  ∀ n, P2610036912701224256.a n = A282322 (n + 1)

end A282322

/-! ## A282322.P16932999018185665277

`p?[A030431(n+1)-2]+2`
-/

namespace A282322.P16932999018185665277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A282322.P16932999018185665277

namespace A282322

/-- `p?[A030431(n+1)-2]+2` -/
def P16932999018185665277.Spec : Prop :=
  ∀ n, P16932999018185665277.a n = A282322 (n + 1)

end A282322

/-! ## A282322.P13605145812616116592

`∩[A132233(n+1), A132247(n+1)]`
-/

namespace A282322.P13605145812616116592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282322.P13605145812616116592

namespace A282322

/-- `∩[A132233(n+1), A132247(n+1)]` -/
def P13605145812616116592.Spec : Prop :=
  ∀ n, (P13605145812616116592.a n : ℤ) = A282322 (n + 1)

end A282322

/-! ## A282322.P5951687822930501554

`∩[A001097(n+1), A132233(n+1)]`
-/

namespace A282322.P5951687822930501554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282322.P5951687822930501554

namespace A282322

/-- `∩[A001097(n+1), A132233(n+1)]` -/
def P5951687822930501554.Spec : Prop :=
  ∀ n, (P5951687822930501554.a n : ℤ) = A282322 (n + 1)

end A282322

/-! ## A282322.P15887757890350727886

`∩[A132233(n+1), A171688(n+1)]`
-/

namespace A282322.P15887757890350727886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282322.P15887757890350727886

namespace A282322

/-- `∩[A132233(n+1), A171688(n+1)]` -/
def P15887757890350727886.Spec : Prop :=
  ∀ n, (P15887757890350727886.a n : ℤ) = A282322 (n + 1)

end A282322

/-! ## A282322.P17441258262216211121

`∩[A132233(n+1), A171821(n+1)]`
-/

namespace A282322.P17441258262216211121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282322.P17441258262216211121

namespace A282322

/-- `∩[A132233(n+1), A171821(n+1)]` -/
def P17441258262216211121.Spec : Prop :=
  ∀ n, (P17441258262216211121.a n : ℤ) = A282322 (n + 1)

end A282322

/-! ## A282322.P7965574183000382804

`∩[A132233(n+1), A265760(n+1)]`
-/

namespace A282322.P7965574183000382804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282322.P7965574183000382804

namespace A282322

/-- `∩[A132233(n+1), A265760(n+1)]` -/
def P7965574183000382804.Spec : Prop :=
  ∀ n, (P7965574183000382804.a n : ℤ) = A282322 (n + 1)

end A282322

/-! ## A282322.P2551497052439403920

`∩[A001097(n+1), A132232(n+1)+2]`
-/

namespace A282322.P2551497052439403920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282322.P2551497052439403920

namespace A282322

/-- `∩[A001097(n+1), A132232(n+1)+2]` -/
def P2551497052439403920.Spec : Prop :=
  ∀ n, (P2551497052439403920.a n : ℤ) = A282322 (n + 1)

end A282322

/-! ## A282322.P2587810319049731715

`∩[A006512(n+1), A140506(n+1)+2]`
-/

namespace A282322.P2587810319049731715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282322.P2587810319049731715

namespace A282322

/-- `∩[A006512(n+1), A140506(n+1)+2]` -/
def P2587810319049731715.Spec : Prop :=
  ∀ n, (P2587810319049731715.a n : ℤ) = A282322 (n + 1)

end A282322

/-! ## A282322.P13786996003752389578

`∩[A006512(n+1), A030431(n+1)]`
-/

namespace A282322.P13786996003752389578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282322.P13786996003752389578

namespace A282322

/-- `∩[A006512(n+1), A030431(n+1)]` -/
def P13786996003752389578.Spec : Prop :=
  ∀ n, (P13786996003752389578.a n : ℤ) = A282322 (n + 1)

end A282322

/-! ## A282322.P16293045587549478389

`∩[A030431(n+1), A132247(n+1)]`
-/

namespace A282322.P16293045587549478389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282322.P16293045587549478389

namespace A282322

/-- `∩[A030431(n+1), A132247(n+1)]` -/
def P16293045587549478389.Spec : Prop :=
  ∀ n, (P16293045587549478389.a n : ℤ) = A282322 (n + 1)

end A282322

/-! ## A282322.P6862639663282217338

`∩[A045414(n+1), A132247(n+1)]`
-/

namespace A282322.P6862639663282217338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282322.P6862639663282217338

namespace A282322

/-- `∩[A045414(n+1), A132247(n+1)]` -/
def P6862639663282217338.Spec : Prop :=
  ∀ n, (P6862639663282217338.a n : ℤ) = A282322 (n + 1)

end A282322

/-! ## A282322.P13630555325207614112

`∩[A030431(n+1), A171688(n+1)]`
-/

namespace A282322.P13630555325207614112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282322.P13630555325207614112

namespace A282322

/-- `∩[A030431(n+1), A171688(n+1)]` -/
def P13630555325207614112.Spec : Prop :=
  ∀ n, (P13630555325207614112.a n : ℤ) = A282322 (n + 1)

end A282322

/-!
# A282323: Lesser of twin primes congruent to 17 (mod 30).

The programs for A282323, the canonical program `A282323.P15721145604606359382` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282323 has offset 1).

The definition of A282323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6494 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282323.P5969265519363471021

`A181605(n+2)`
-/

namespace A282323.P5969265519363471021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181605 (n + 2)

end

end A282323.P5969265519363471021

namespace A282323

/-- `A181605(n+2)` -/
def P5969265519363471021.Spec : Prop :=
  ∀ n, P5969265519363471021.a n = A282323 (n + 1)

end A282323

/-! ## A282323.P15721145604606359382

`∩[A001359(n+1), A030433(n+1)-2]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A282323

/-- `∩[A001359(n+1), A030433(n+1)-2]` -/
def P15721145604606359382.Spec : Prop :=
  ∀ n, (P15721145604606359382.a n : ℤ) = A282323 (n + 1)

theorem P15721145604606359382.correct : P15721145604606359382.Spec := by
  intro n
  simp only [A282323, Nat.add_sub_cancel]

end A282323

/-! ## A282323.P12468612796914562144

`∩[A001359(n+1), A030432(n+1)]`
-/

namespace A282323.P12468612796914562144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282323.P12468612796914562144

namespace A282323

/-- `∩[A001359(n+1), A030432(n+1)]` -/
def P12468612796914562144.Spec : Prop :=
  ∀ n, (P12468612796914562144.a n : ℤ) = A282323 (n + 1)

end A282323

/-! ## A282323.P7326506238250186540

`∩[A006512(n+1), A181606(n+1)]-2`
-/

namespace A282323.P7326506238250186540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181606 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A282323.P7326506238250186540

namespace A282323

/-- `∩[A006512(n+1), A181606(n+1)]-2` -/
def P7326506238250186540.Spec : Prop :=
  ∀ n, P7326506238250186540.a n = A282323 (n + 1)

end A282323

/-! ## A282323.P3956411138021547069

`∩[A006512(n+1), A132234(n+1)]-2`
-/

namespace A282323.P3956411138021547069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A282323.P3956411138021547069

namespace A282323

/-- `∩[A006512(n+1), A132234(n+1)]-2` -/
def P3956411138021547069.Spec : Prop :=
  ∀ n, P3956411138021547069.a n = A282323 (n + 1)

end A282323

/-! ## A282323.P930543557134068904

`∩[A067829(n+1), A132234(n+1)]-2`
-/

namespace A282323.P930543557134068904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A282323.P930543557134068904

namespace A282323

/-- `∩[A067829(n+1), A132234(n+1)]-2` -/
def P930543557134068904.Spec : Prop :=
  ∀ n, P930543557134068904.a n = A282323 (n + 1)

end A282323

/-! ## A282323.P13436505136144111173

`∩[A001359(n+1), A039949(n+1)]`
-/

namespace A282323.P13436505136144111173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282323.P13436505136144111173

namespace A282323

/-- `∩[A001359(n+1), A039949(n+1)]` -/
def P13436505136144111173.Spec : Prop :=
  ∀ n, (P13436505136144111173.a n : ℤ) = A282323 (n + 1)

end A282323

/-! ## A282323.P10661876249129316873

`∩[A141860(n+1), A001359(n+1)]`
-/

namespace A282323.P10661876249129316873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282323.P10661876249129316873

namespace A282323

/-- `∩[A141860(n+1), A001359(n+1)]` -/
def P10661876249129316873.Spec : Prop :=
  ∀ n, (P10661876249129316873.a n : ℤ) = A282323 (n + 1)

end A282323

/-! ## A282323.P14478369542154319563

`∩[A030432(n+1), A378983(n+1)]`
-/

namespace A282323.P14478369542154319563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282323.P14478369542154319563

namespace A282323

/-- `∩[A030432(n+1), A378983(n+1)]` -/
def P14478369542154319563.Spec : Prop :=
  ∀ n, (P14478369542154319563.a n : ℤ) = A282323 (n + 1)

end A282323

/-! ## A282323.P4023669825579193569

`p?[p?[a(n-1)+15]-2]` with `a(0)=1, a(1)=4`
-/

namespace A282323.P4023669825579193569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  f2 (n - 1) + 15

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A282323.P4023669825579193569

namespace A282323

/-- `p?[p?[a(n-1)+15]-2]` -/
def P4023669825579193569.Spec : Prop :=
  ∀ n, P4023669825579193569.a n = A282323 (n + 1)

end A282323

/-! ## A282323.P6349526574005282170

`p?[A030433(n+1)-2]`
-/

namespace A282323.P6349526574005282170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A282323.P6349526574005282170

namespace A282323

/-- `p?[A030433(n+1)-2]` -/
def P6349526574005282170.Spec : Prop :=
  ∀ n, P6349526574005282170.a n = A282323 (n + 1)

end A282323

/-! ## A282323.P9002077460323968764

`p?[A092340(n+1)+2]-2`
-/

namespace A282323.P9002077460323968764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092340 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A282323.P9002077460323968764

namespace A282323

/-- `p?[A092340(n+1)+2]-2` -/
def P9002077460323968764.Spec : Prop :=
  ∀ n, P9002077460323968764.a n = A282323 (n + 1)

end A282323

/-! ## A282323.P13748742763004311510

`∩[A001838(n+1), A039949(n+1)]`
-/

namespace A282323.P13748742763004311510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282323.P13748742763004311510

namespace A282323

/-- `∩[A001838(n+1), A039949(n+1)]` -/
def P13748742763004311510.Spec : Prop :=
  ∀ n, (P13748742763004311510.a n : ℤ) = A282323 (n + 1)

end A282323

/-! ## A282323.P3828148344251542732

`∩[A001838(n+1), A141860(n+1)]`
-/

namespace A282323.P3828148344251542732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282323.P3828148344251542732

namespace A282323

/-- `∩[A001838(n+1), A141860(n+1)]` -/
def P3828148344251542732.Spec : Prop :=
  ∀ n, (P3828148344251542732.a n : ℤ) = A282323 (n + 1)

end A282323

/-! ## A282323.P13314574308485771618

`∩[A039949(n+1), A141830(n+1)]`
-/

namespace A282323.P13314574308485771618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282323.P13314574308485771618

namespace A282323

/-- `∩[A039949(n+1), A141830(n+1)]` -/
def P13314574308485771618.Spec : Prop :=
  ∀ n, (P13314574308485771618.a n : ℤ) = A282323 (n + 1)

end A282323

/-! ## A282323.P2298646956389115235

`A282324(n+1)-2`
-/

namespace A282323.P2298646956389115235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282324 (n + 1) - 2

end

end A282323.P2298646956389115235

namespace A282323

/-- `A282324(n+1)-2` -/
def P2298646956389115235.Spec : Prop :=
  ∀ n, P2298646956389115235.a n = A282323 (n + 1)

end A282323

/-! ## A282323.P15403204862569474116

`∩[A001097(n+1), A039949(n+1)]`
-/

namespace A282323.P15403204862569474116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282323.P15403204862569474116

namespace A282323

/-- `∩[A001097(n+1), A039949(n+1)]` -/
def P15403204862569474116.Spec : Prop :=
  ∀ n, (P15403204862569474116.a n : ℤ) = A282323 (n + 1)

end A282323

/-! ## A282323.P3481672720337659888

`∩[A001097(n+1), A141860(n+1)]`
-/

namespace A282323.P3481672720337659888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282323.P3481672720337659888

namespace A282323

/-- `∩[A001097(n+1), A141860(n+1)]` -/
def P3481672720337659888.Spec : Prop :=
  ∀ n, (P3481672720337659888.a n : ℤ) = A282323 (n + 1)

end A282323

/-! ## A282323.P3086136269249567482

`∩[A039949(n+1), A132247(n+1)]`
-/

namespace A282323.P3086136269249567482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282323.P3086136269249567482

namespace A282323

/-- `∩[A039949(n+1), A132247(n+1)]` -/
def P3086136269249567482.Spec : Prop :=
  ∀ n, (P3086136269249567482.a n : ℤ) = A282323 (n + 1)

end A282323

/-! ## A282323.P15789102838220210931

`∩[A171688(n+1), A039949(n+1)]`
-/

namespace A282323.P15789102838220210931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282323.P15789102838220210931

namespace A282323

/-- `∩[A171688(n+1), A039949(n+1)]` -/
def P15789102838220210931.Spec : Prop :=
  ∀ n, (P15789102838220210931.a n : ℤ) = A282323 (n + 1)

end A282323

/-!
# A282324: Greater of twin primes congruent to 19 (mod 30).

The programs for A282324, the canonical program `A282324.P8074953035641554398` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282324 has offset 1).

The definition of A282324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282324.P689360360234369941

`A282323(n+1)+2`
-/

namespace A282324.P689360360234369941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282323 (n + 1) + 2

end

end A282324.P689360360234369941

namespace A282324

/-- `A282323(n+1)+2` -/
def P689360360234369941.Spec : Prop :=
  ∀ n, P689360360234369941.a n = A282324 (n + 1)

end A282324

/-! ## A282324.P14716036647995805804

`A181605(n+2)+2`
-/

namespace A282324.P14716036647995805804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181605 (n + 2) + 2

end

end A282324.P14716036647995805804

namespace A282324

/-- `A181605(n+2)+2` -/
def P14716036647995805804.Spec : Prop :=
  ∀ n, P14716036647995805804.a n = A282324 (n + 1)

end A282324

/-! ## A282324.P8074953035641554398

`p?[A030432(n+1)+2]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A282324

/-- `p?[A030432(n+1)+2]` -/
def P8074953035641554398.Spec : Prop :=
  ∀ n, P8074953035641554398.a n = A282324 (n + 1)

theorem P8074953035641554398.correct : P8074953035641554398.Spec := by
  intro n
  simp only [A282324, Nat.add_sub_cancel]

end A282324

/-! ## A282324.P15151782873789561249

`p?[A039949(n+1)+2]`
-/

namespace A282324.P15151782873789561249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A282324.P15151782873789561249

namespace A282324

/-- `p?[A039949(n+1)+2]` -/
def P15151782873789561249.Spec : Prop :=
  ∀ n, P15151782873789561249.a n = A282324 (n + 1)

end A282324

/-! ## A282324.P6642741402746653762

`p?[A092340(n+1)+2]`
-/

namespace A282324.P6642741402746653762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092340 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A282324.P6642741402746653762

namespace A282324

/-- `p?[A092340(n+1)+2]` -/
def P6642741402746653762.Spec : Prop :=
  ∀ n, P6642741402746653762.a n = A282324 (n + 1)

end A282324

/-! ## A282324.P3166500615920252857

`p?[A141860(n+1)+2]`
-/

namespace A282324.P3166500615920252857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141860 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A282324.P3166500615920252857

namespace A282324

/-- `p?[A141860(n+1)+2]` -/
def P3166500615920252857.Spec : Prop :=
  ∀ n, P3166500615920252857.a n = A282324 (n + 1)

end A282324

/-! ## A282324.P6448040042775859345

`p?[A030433(n+1)-2]+2`
-/

namespace A282324.P6448040042775859345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A282324.P6448040042775859345

namespace A282324

/-- `p?[A030433(n+1)-2]+2` -/
def P6448040042775859345.Spec : Prop :=
  ∀ n, P6448040042775859345.a n = A282324 (n + 1)

end A282324

/-! ## A282324.P13665626427905634639

`∩[A006512(n+1), A132234(n+1)]`
-/

namespace A282324.P13665626427905634639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282324.P13665626427905634639

namespace A282324

/-- `∩[A006512(n+1), A132234(n+1)]` -/
def P13665626427905634639.Spec : Prop :=
  ∀ n, (P13665626427905634639.a n : ℤ) = A282324 (n + 1)

end A282324

/-! ## A282324.P5236207260247839976

`∩[A006512(n+1), A181606(n+1)]`
-/

namespace A282324.P5236207260247839976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282324.P5236207260247839976

namespace A282324

/-- `∩[A006512(n+1), A181606(n+1)]` -/
def P5236207260247839976.Spec : Prop :=
  ∀ n, (P5236207260247839976.a n : ℤ) = A282324 (n + 1)

end A282324

/-! ## A282324.P2232910208406334823

`∩[A067829(n+1), A132234(n+1)]`
-/

namespace A282324.P2232910208406334823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282324.P2232910208406334823

namespace A282324

/-- `∩[A067829(n+1), A132234(n+1)]` -/
def P2232910208406334823.Spec : Prop :=
  ∀ n, (P2232910208406334823.a n : ℤ) = A282324 (n + 1)

end A282324

/-! ## A282324.P5224678756893146511

`∩[A067829(n+1), A181606(n+1)]`
-/

namespace A282324.P5224678756893146511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282324.P5224678756893146511

namespace A282324

/-- `∩[A067829(n+1), A181606(n+1)]` -/
def P5224678756893146511.Spec : Prop :=
  ∀ n, (P5224678756893146511.a n : ℤ) = A282324 (n + 1)

end A282324

/-! ## A282324.P6048290429073963594

`∩[A132234(n+1), A391049(n+1)]`
-/

namespace A282324.P6048290429073963594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282324.P6048290429073963594

namespace A282324

/-- `∩[A132234(n+1), A391049(n+1)]` -/
def P6048290429073963594.Spec : Prop :=
  ∀ n, (P6048290429073963594.a n : ℤ) = A282324 (n + 1)

end A282324

/-! ## A282324.P4539452499980384198

`∩[A001359(n+1)+2, A030433(n+1)]`
-/

namespace A282324.P4539452499980384198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282324.P4539452499980384198

namespace A282324

/-- `∩[A001359(n+1)+2, A030433(n+1)]` -/
def P4539452499980384198.Spec : Prop :=
  ∀ n, (P4539452499980384198.a n : ℤ) = A282324 (n + 1)

end A282324

/-! ## A282324.P14186102816844034726

`∩[A001359(n+1), A030432(n+1)]+2`
-/

namespace A282324.P14186102816844034726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A282324.P14186102816844034726

namespace A282324

/-- `∩[A001359(n+1), A030432(n+1)]+2` -/
def P14186102816844034726.Spec : Prop :=
  ∀ n, (P14186102816844034726.a n : ℤ) = A282324 (n + 1)

end A282324

/-! ## A282324.P3691450658597666987

`∩[A039949(n+1), A141830(n+1)]+2`
-/

namespace A282324.P3691450658597666987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A282324.P3691450658597666987

namespace A282324

/-- `∩[A039949(n+1), A141830(n+1)]+2` -/
def P3691450658597666987.Spec : Prop :=
  ∀ n, (P3691450658597666987.a n : ℤ) = A282324 (n + 1)

end A282324

/-! ## A282324.P18200021436159162092

`∩[A001097(n+1), A132234(n+1)]`
-/

namespace A282324.P18200021436159162092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282324.P18200021436159162092

namespace A282324

/-- `∩[A001097(n+1), A132234(n+1)]` -/
def P18200021436159162092.Spec : Prop :=
  ∀ n, (P18200021436159162092.a n : ℤ) = A282324 (n + 1)

end A282324

/-! ## A282324.P7614772800239475495

`∩[A132234(n+1), A132247(n+1)]`
-/

namespace A282324.P7614772800239475495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282324.P7614772800239475495

namespace A282324

/-- `∩[A132234(n+1), A132247(n+1)]` -/
def P7614772800239475495.Spec : Prop :=
  ∀ n, (P7614772800239475495.a n : ℤ) = A282324 (n + 1)

end A282324

/-! ## A282324.P3072126809862663167

`∩[A132234(n+1), A171688(n+1)]`
-/

namespace A282324.P3072126809862663167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282324.P3072126809862663167

namespace A282324

/-- `∩[A132234(n+1), A171688(n+1)]` -/
def P3072126809862663167.Spec : Prop :=
  ∀ n, (P3072126809862663167.a n : ℤ) = A282324 (n + 1)

end A282324

/-! ## A282324.P7937680829579060164

`∩[A132234(n+1), A171821(n+1)]`
-/

namespace A282324.P7937680829579060164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282324.P7937680829579060164

namespace A282324

/-- `∩[A132234(n+1), A171821(n+1)]` -/
def P7937680829579060164.Spec : Prop :=
  ∀ n, (P7937680829579060164.a n : ℤ) = A282324 (n + 1)

end A282324

/-! ## A282324.P2809368205780025592

`∩[A132234(n+1), A265760(n+1)]`
-/

namespace A282324.P2809368205780025592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282324.P2809368205780025592

namespace A282324

/-- `∩[A132234(n+1), A265760(n+1)]` -/
def P2809368205780025592.Spec : Prop :=
  ∀ n, (P2809368205780025592.a n : ℤ) = A282324 (n + 1)

end A282324

/-!
# A282325: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 485", based on the 5-celled von Neumann neighborhood.

The programs for A282325, there is no canonical definition to state claims against.
-/

/-! ## A282325.P10446439100587274827

`A007088(A282553(n))`
-/

namespace A282325.P10446439100587274827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282553 n).toNat

end

end A282325.P10446439100587274827

/-! ## A282325.P5027740591733368400

`A185544(2*A282553(n))`
-/

namespace A282325.P5027740591733368400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282553 n).toNat

end

end A282325.P5027740591733368400

/-! ## A282325.P9868988921196225956

`A007088(or(A099040(n)², A279825(n)%A000040(n!)))`
-/

namespace A282325.P9868988921196225956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A099040 n ^ 2) (Int.tmod (A279825 n) (A000040 (Nat.factorial n)))).toNat

end

end A282325.P9868988921196225956

/-! ## A282325.P5298961370497396318

`A007088(or(A099040(n)², A279962(n)%A000040(n!)))`
-/

namespace A282325.P5298961370497396318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A099040 n ^ 2) (Int.tmod (A279962 n) (A000040 (Nat.factorial n)))).toNat

end

end A282325.P5298961370497396318

/-!
# A282326: Greater of twin primes congruent to 1 (mod 30).

The programs for A282326, the canonical program `A282326.P5010439827126536252` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282326 has offset 1).

The definition of A282326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282326.P5010439827126536252

`A060229(n+1)+2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A282326

/-- `A060229(n+1)+2` -/
def P5010439827126536252.Spec : Prop :=
  ∀ n, P5010439827126536252.a n = A282326 (n + 1)

theorem P5010439827126536252.correct : P5010439827126536252.Spec := by
  intro n
  simp only [A282326, Nat.add_sub_cancel]

end A282326

/-! ## A282326.P9313441592785736631

`10*A124518(n+1)+1`
-/

namespace A282326.P9313441592785736631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A124518 (n + 1) + 1

end

end A282326.P9313441592785736631

namespace A282326

/-- `10*A124518(n+1)+1` -/
def P9313441592785736631.Spec : Prop :=
  ∀ n, P9313441592785736631.a n = A282326 (n + 1)

end A282326

/-! ## A282326.P8469319446135639994

`∩[A001359(n+1), A030433(n+1)]+2`
-/

namespace A282326.P8469319446135639994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A282326.P8469319446135639994

namespace A282326

/-- `∩[A001359(n+1), A030433(n+1)]+2` -/
def P8469319446135639994.Spec : Prop :=
  ∀ n, (P8469319446135639994.a n : ℤ) = A282326 (n + 1)

end A282326

/-! ## A282326.P18069607629260077729

`∩[A001359(n+1)+2, A030430(n+1)]`
-/

namespace A282326.P18069607629260077729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282326.P18069607629260077729

namespace A282326

/-- `∩[A001359(n+1)+2, A030430(n+1)]` -/
def P18069607629260077729.Spec : Prop :=
  ∀ n, (P18069607629260077729.a n : ℤ) = A282326 (n + 1)

end A282326

/-! ## A282326.P9622216730556658680

`∩[A006512(n+1), A181603(n+1)]`
-/

namespace A282326.P9622216730556658680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282326.P9622216730556658680

namespace A282326

/-- `∩[A006512(n+1), A181603(n+1)]` -/
def P9622216730556658680.Spec : Prop :=
  ∀ n, (P9622216730556658680.a n : ℤ) = A282326 (n + 1)

end A282326

/-! ## A282326.P6540835444849667540

`∩[A006512(n+1), A132230(n+1)]`
-/

namespace A282326.P6540835444849667540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282326.P6540835444849667540

namespace A282326

/-- `∩[A006512(n+1), A132230(n+1)]` -/
def P6540835444849667540.Spec : Prop :=
  ∀ n, (P6540835444849667540.a n : ℤ) = A282326 (n + 1)

end A282326

/-! ## A282326.P12630344575784996544

`∩[A067829(n+1), A132230(n+1)]`
-/

namespace A282326.P12630344575784996544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282326.P12630344575784996544

namespace A282326

/-- `∩[A067829(n+1), A132230(n+1)]` -/
def P12630344575784996544.Spec : Prop :=
  ∀ n, (P12630344575784996544.a n : ℤ) = A282326 (n + 1)

end A282326

/-! ## A282326.P6466513071198643503

`∩[A339692(n+1), A132230(n+1)]`
-/

namespace A282326.P6466513071198643503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282326.P6466513071198643503

namespace A282326

/-- `∩[A339692(n+1), A132230(n+1)]` -/
def P6466513071198643503.Spec : Prop :=
  ∀ n, (P6466513071198643503.a n : ℤ) = A282326 (n + 1)

end A282326

/-! ## A282326.P17800252445338421005

`∩[A001359(n+1), A132236(n+1)]+2`
-/

namespace A282326.P17800252445338421005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A282326.P17800252445338421005

namespace A282326

/-- `∩[A001359(n+1), A132236(n+1)]+2` -/
def P17800252445338421005.Spec : Prop :=
  ∀ n, (P17800252445338421005.a n : ℤ) = A282326 (n + 1)

end A282326

/-! ## A282326.P9398982540531074852

`p?[A030433(n+1)+2]`
-/

namespace A282326.P9398982540531074852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A282326.P9398982540531074852

namespace A282326

/-- `p?[A030433(n+1)+2]` -/
def P9398982540531074852.Spec : Prop :=
  ∀ n, P9398982540531074852.a n = A282326 (n + 1)

end A282326

/-! ## A282326.P5510707109905279482

`p?[A132236(n+1)+2]`
-/

namespace A282326.P5510707109905279482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A282326.P5510707109905279482

namespace A282326

/-- `p?[A132236(n+1)+2]` -/
def P5510707109905279482.Spec : Prop :=
  ∀ n, P5510707109905279482.a n = A282326 (n + 1)

end A282326

/-! ## A282326.P1161486727369998982

`p?[A030430(n+1)-2]+2`
-/

namespace A282326.P1161486727369998982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A282326.P1161486727369998982

namespace A282326

/-- `p?[A030430(n+1)-2]+2` -/
def P1161486727369998982.Spec : Prop :=
  ∀ n, P1161486727369998982.a n = A282326 (n + 1)

end A282326

/-! ## A282326.P14166425647246712948

`∩[A132230(n+1), A132247(n+1)]`
-/

namespace A282326.P14166425647246712948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282326.P14166425647246712948

namespace A282326

/-- `∩[A132230(n+1), A132247(n+1)]` -/
def P14166425647246712948.Spec : Prop :=
  ∀ n, (P14166425647246712948.a n : ℤ) = A282326 (n + 1)

end A282326

/-! ## A282326.P25309446647267023

`∩[A132230(n+1), A171688(n+1)]`
-/

namespace A282326.P25309446647267023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282326.P25309446647267023

namespace A282326

/-- `∩[A132230(n+1), A171688(n+1)]` -/
def P25309446647267023.Spec : Prop :=
  ∀ n, (P25309446647267023.a n : ℤ) = A282326 (n + 1)

end A282326

/-! ## A282326.P8954447259195237885

`∩[A001097(n+1), A132236(n+1)]+2`
-/

namespace A282326.P8954447259195237885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A282326.P8954447259195237885

namespace A282326

/-- `∩[A001097(n+1), A132236(n+1)]+2` -/
def P8954447259195237885.Spec : Prop :=
  ∀ n, (P8954447259195237885.a n : ℤ) = A282326 (n + 1)

end A282326

/-! ## A282326.P3266468111924813741

`∩[A132236(n+1)+2, A132247(n+1)]`
-/

namespace A282326.P3266468111924813741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282326.P3266468111924813741

namespace A282326

/-- `∩[A132236(n+1)+2, A132247(n+1)]` -/
def P3266468111924813741.Spec : Prop :=
  ∀ n, (P3266468111924813741.a n : ℤ) = A282326 (n + 1)

end A282326

/-! ## A282326.P6757629550172138912

`∩[A001097(n+1), A132230(n+1)]`
-/

namespace A282326.P6757629550172138912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282326.P6757629550172138912

namespace A282326

/-- `∩[A001097(n+1), A132230(n+1)]` -/
def P6757629550172138912.Spec : Prop :=
  ∀ n, (P6757629550172138912.a n : ℤ) = A282326 (n + 1)

end A282326

/-! ## A282326.P6185858374438206967

`∩[A132230(n+1), A171821(n+1)]`
-/

namespace A282326.P6185858374438206967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282326.P6185858374438206967

namespace A282326

/-- `∩[A132230(n+1), A171821(n+1)]` -/
def P6185858374438206967.Spec : Prop :=
  ∀ n, (P6185858374438206967.a n : ℤ) = A282326 (n + 1)

end A282326

/-! ## A282326.P14288251702599257227

`∩[A132230(n+1), A265760(n+1)]`
-/

namespace A282326.P14288251702599257227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282326.P14288251702599257227

namespace A282326

/-- `∩[A132230(n+1), A265760(n+1)]` -/
def P14288251702599257227.Spec : Prop :=
  ∀ n, (P14288251702599257227.a n : ℤ) = A282326 (n + 1)

end A282326

/-! ## A282326.P9110726503926690113

`p?[p?[5*n-1]+2]`
-/

namespace A282326.P9110726503926690113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A282326.P9110726503926690113

namespace A282326

/-- `p?[p?[5*n-1]+2]` -/
def P9110726503926690113.Spec : Prop :=
  ∀ n, P9110726503926690113.a n = A282326 (n + 1)

end A282326

/-!
# A282329: Start with 2, then successively subtract the primes 3, 5, 7, ...

The programs for A282329, there is no canonical definition to state claims against.
-/

/-! ## A282329.P4837187525557701979

`4-∑[p?[abs(xor(n, -2))]]`
-/

namespace A282329.P4837187525557701979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282329.P4837187525557701979

/-! ## A282329.P13734934265508840777

`4-∑[p?[xor(1, n)+1]]`
-/

namespace A282329.P13734934265508840777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A282329.P13734934265508840777

/-! ## A282329.P9121748202901543968

`4-∑[p?[n%3+n]]`
-/

namespace A282329.P9121748202901543968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A282329.P9121748202901543968

/-! ## A282329.P3040039042947817958

`4-∑[p?[floor(n*sin(2))]]`
-/

namespace A282329.P3040039042947817958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sin (2 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282329.P3040039042947817958

/-! ## A282329.P4588490043734478715

`4-∑[p?[ceil(2/acot(n))]]`
-/

namespace A282329.P4588490043734478715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282329.P4588490043734478715

/-!
# A282333: Number of nX3 0..1 arrays with no 1 equal to more than four of its king-move neighbors, with the exception of exactly one element.

The programs for A282333, there is no canonical definition to state claims against.
-/

/-! ## A282333.P1448332897153052721

`A282338(∑[n+2]+4)`
-/

namespace A282333.P1448332897153052721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282338 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A282333.P1448332897153052721

/-! ## A282333.P10249455049601548914

`lcm(2, A282338(A167614(n+1)))`
-/

namespace A282333.P10249455049601548914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A282338 (A167614 (n + 1)).toNat)

end

end A282333.P10249455049601548914

/-! ## A282333.P13912875483242771318

`A282338(A167614(n+1))+A185255(n)`
-/

namespace A282333.P13912875483242771318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282338 (A167614 (n + 1)).toNat + A185255 n

end

end A282333.P13912875483242771318

/-! ## A282333.P6891334700628148216

`A326545(n)+A282338(A167614(n+1))`
-/

namespace A282333.P6891334700628148216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326545 n + A282338 (A167614 (n + 1)).toNat

end

end A282333.P6891334700628148216

/-! ## A282333.P9917298991176490470

`A057427(n)*A282338(A167614(n+1))`
-/

namespace A282333.P9917298991176490470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A282338 (A167614 (n + 1)).toNat

end

end A282333.P9917298991176490470

/-!
# A282334: Number of nX4 0..1 arrays with no 1 equal to more than four of its king-move neighbors, with the exception of exactly one element.

The programs for A282334, there is no canonical definition to state claims against.
-/

/-! ## A282334.P17333251888938201135

`A282338(A374004(n+1))`
-/

namespace A282334.P17333251888938201135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282338 (A374004 (n + 1)).toNat

end

end A282334.P17333251888938201135

/-! ## A282334.P13856485487426640779

`A282338(A141214(n)+7)`
-/

namespace A282334.P13856485487426640779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282338 (A141214 n + 7).toNat

end

end A282334.P13856485487426640779

/-! ## A282334.P8479149948632038806

`A282338(A052905(n)+9)`
-/

namespace A282334.P8479149948632038806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282338 (A052905 n + 9).toNat

end

end A282334.P8479149948632038806

/-! ## A282334.P6392648156541944983

`A282338(A167614(n+2)+1)`
-/

namespace A282334.P6392648156541944983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282338 (A167614 (n + 2) + 1).toNat

end

end A282334.P6392648156541944983

/-! ## A282334.P14259020620334932349

`A282338(A167487(n+2)-3)`
-/

namespace A282334.P14259020620334932349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282338 (A167487 (n + 2) - 3).toNat

end

end A282334.P14259020620334932349

/-!
# A282335: Number of nX5 0..1 arrays with no 1 equal to more than four of its king-move neighbors, with the exception of exactly one element.

The programs for A282335, there is no canonical definition to state claims against.
-/

/-! ## A282335.P9179861438133666395

`A282338(A374005(n+1))`
-/

namespace A282335.P9179861438133666395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282338 (A374005 (n + 1)).toNat

end

end A282335.P9179861438133666395

/-! ## A282335.P1188385028666273317

`A282338(A167499(n+3))`
-/

namespace A282335.P1188385028666273317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282338 (A167499 (n + 3)).toNat

end

end A282335.P1188385028666273317

/-! ## A282335.P9462123369580128872

`A282338(A000217(n+4)+5)`
-/

namespace A282335.P9462123369580128872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282338 (A000217 (n + 4) + 5).toNat

end

end A282335.P9462123369580128872

/-! ## A282335.P9684301665172421558

`A282338(eq[6, A131818(n+1)])`
-/

namespace A282335.P9684301665172421558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282335.P9684301665172421558

/-! ## A282335.P9498714296215276403

`A282338(eq[4, A193592(n)])`
-/

namespace A282335.P9498714296215276403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282335.P9498714296215276403

/-!
# A282336: Number of nX6 0..1 arrays with no 1 equal to more than four of its king-move neighbors, with the exception of exactly one element.

The programs for A282336, there is no canonical definition to state claims against.
-/

/-! ## A282336.P16018596014746269594

`A282338(A374007(n+1))`
-/

namespace A282336.P16018596014746269594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282338 (A374007 (n + 1)).toNat

end

end A282336.P16018596014746269594

/-! ## A282336.P1063445734943738418

`A282338(eq[7, A131818(n+1)])`
-/

namespace A282336.P1063445734943738418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282336.P1063445734943738418

/-! ## A282336.P8091042693062509521

`A282338(A052905(n+3))`
-/

namespace A282336.P8091042693062509521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282338 (A052905 (n + 3)).toNat

end

end A282336.P8091042693062509521

/-! ## A282336.P11286053684448225664

`A282338(eq[3, A219347(n)])`
-/

namespace A282336.P11286053684448225664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282336.P11286053684448225664

/-! ## A282336.P15345495292525483989

`A282338(eq[5, A193592(n)])`
-/

namespace A282336.P15345495292525483989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282336.P15345495292525483989

/-!
# A282337: Number of nX7 0..1 arrays with no 1 equal to more than four of its king-move neighbors, with the exception of exactly one element.

The programs for A282337, there is no canonical definition to state claims against.
-/

/-! ## A282337.P2703269924142925792

`A282338(A374008(n+1))`
-/

namespace A282337.P2703269924142925792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282338 (A374008 (n + 1)).toNat

end

end A282337.P2703269924142925792

/-! ## A282337.P14035361265947257423

`A282338(eq[8, A131818(n+1)])`
-/

namespace A282337.P14035361265947257423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282337.P14035361265947257423

/-! ## A282337.P8528121581334619091

`A282338(eq[4, A219347(n)])`
-/

namespace A282337.P8528121581334619091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282337.P8528121581334619091

/-! ## A282337.P3351243504848009488

`A282338(eq[6, A193592(n)])`
-/

namespace A282337.P3351243504848009488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282337.P3351243504848009488

/-! ## A282337.P16930319447928880451

`A282338(eq[7, A152157(n)])`
-/

namespace A282337.P16930319447928880451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282337.P16930319447928880451

/-!
# A282338: T(n,k)=Number of nXk 0..1 arrays with no 1 equal to more than four of its king-move neighbors, with the exception of exactly one element.

The programs for A282338, there is no canonical definition to state claims against.
-/

/-! ## A282338.P7551016358431916883

`A042950(n)%A274105(A071945(n))`
-/

namespace A282338.P7551016358431916883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042950 n) (A274105 (A071945 n).toNat)

end

end A282338.P7551016358431916883

/-! ## A282338.P6181271507699816323

`A281888(n+1)+A185255(A068670(n))`
-/

namespace A282338.P6181271507699816323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281888 (n + 1) + A185255 (A068670 n).toNat

end

end A282338.P6181271507699816323

/-! ## A282338.P289723136914088206

`A089870(A249741(n+1))*A299905(n)`
-/

namespace A282338.P289723136914088206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (A249741 (n + 1)).toNat * A299905 n

end

end A282338.P289723136914088206

/-! ## A282338.P11875555973642517362

`A222234(A274105(n)*A281888(n+1))`
-/

namespace A282338.P11875555973642517362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A274105 n * A281888 (n + 1)).toNat

end

end A282338.P11875555973642517362

/-! ## A282338.P3435046899836561869

`A222234(A281888(n+1)^A064693(n))`
-/

namespace A282338.P3435046899836561869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (SequenceMachineLib.roundAway ((A281888 (n + 1) : ℚ) ^ (A064693 n : ℤ))).toNat

end

end A282338.P3435046899836561869

/-!
# A282339: A pseudorandom binary sequence with minimum variance of the absolute values of its discrete Fourier transform.

The programs for A282339, there is no canonical definition to state claims against.
-/

/-! ## A282339.P5631899346227810629

`A322217(2*(A034683(n+1)-1))`
-/

namespace A282339.P5631899346227810629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322217 (2 * (A034683 (n + 1) - 1)).toNat

end

end A282339.P5631899346227810629

/-! ## A282339.P8588118516908354001

`A322217(A005408(A034683(n+1))-3)`
-/

namespace A282339.P8588118516908354001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322217 (A005408 (A034683 (n + 1)).toNat - 3).toNat

end

end A282339.P8588118516908354001

/-! ## A282339.P10730806367271280781

`A322217(A034683(n+1)+A034683(n+1)-2)`
-/

namespace A282339.P10730806367271280781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322217 (A034683 (n + 1) + (A034683 (n + 1) - 2)).toNat

end

end A282339.P10730806367271280781

/-! ## A282339.P2976414553220261621

`A063524(gcd(A050058(n+1), A067572(n+1)))`
-/

namespace A282339.P2976414553220261621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (Int.gcd (A050058 (n + 1)) (A067572 (n + 1)))

end

end A282339.P2976414553220261621

/-! ## A282339.P14026337173241457162

`A140080(A286999(3*n+4)+A268448(n+1))`
-/

namespace A282339.P14026337173241457162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 (A286999 (3 * n + 4) + A268448 (n + 1)).toNat

end

end A282339.P14026337173241457162

/-!
# A282343: A pseudorandom binary sequence with minimum peak to peak distance of the absolute values of its discrete Fourier transform.

The programs for A282343, there is no canonical definition to state claims against.
-/

/-! ## A282343.P3849090913445051634

`A010060(A327333(n+1)*A332059(n+1))`
-/

namespace A282343.P3849090913445051634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A327333 (n + 1) * A332059 (n + 1)).toNat

end

end A282343.P3849090913445051634

/-! ## A282343.P13389632515632290583

`A320655(A347361(2*n+3)+A001414(n+3))`
-/

namespace A282343.P13389632515632290583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (A347361 (2 * n + 3) + A001414 (n + 3)).toNat

end

end A282343.P13389632515632290583

/-! ## A282343.P14234839846211233003

`A007862(A134862(2*n+3))%2`
-/

namespace A282343.P14234839846211233003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007862 (A134862 (2 * n + 3)).toNat) 2

end

end A282343.P14234839846211233003

/-! ## A282343.P18238314127116985721

`A188433(A130656(n+2))`
-/

namespace A282343.P18238314127116985721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188433 (A130656 (n + 2)).toNat

end

end A282343.P18238314127116985721

/-! ## A282343.P9304097467572575667

`A059841(A311058(n)+A100852(n))`
-/

namespace A282343.P9304097467572575667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A311058 n + A100852 n).toNat

end

end A282343.P9304097467572575667

/-!
# A282344: The smallest square referenced in A086982 (Numbers n such that 10^n+1 is not squarefree).

The programs for A282344, there is no canonical definition to state claims against.
-/

/-! ## A282344.P13882778880183807562

`A282345(n+1)²`
-/

namespace A282344.P13882778880183807562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282345 (n + 1) ^ 2

end

end A282344.P13882778880183807562

/-! ## A282344.P17891939373337187378

`A282345(abs(xor(n, -1)))^2`
-/

namespace A282344.P17891939373337187378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282345 |Int.xor (n : ℤ) (-1)|.toNat ^ 2

end

end A282344.P17891939373337187378

/-! ## A282344.P65522832331396650

`A282345(-xor(n, -1))^2`
-/

namespace A282344.P65522832331396650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282345 (-Int.xor (n : ℤ) (-1)).toNat ^ 2

end

end A282344.P65522832331396650

/-! ## A282344.P15120421090371849842

`A282345(1-(n-2*n))^2`
-/

namespace A282344.P15120421090371849842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282345 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat ^ 2

end

end A282344.P15120421090371849842

/-! ## A282344.P14250658156130714132

`A000290(p?[A282345(n+1)])`
-/

namespace A282344.P14250658156130714132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A282344.P14250658156130714132

/-! ## A282344.P11130011390990479552

`A000463(2*A282345(n+1))`
-/

namespace A282344.P11130011390990479552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A282345 (n + 1)).toNat

end

end A282344.P11130011390990479552

/-! ## A282344.P15700305209068320156

`A000290(or(1, A282345(n+1)))`
-/

namespace A282344.P15700305209068320156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.lor 1 (A282345 (n + 1))).toNat

end

end A282344.P15700305209068320156

/-! ## A282344.P6097525353395414022

`A020639(∑{p}[A282345(n+1), #])^2`
-/

namespace A282344.P6097525353395414022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p) ^ 2

end

end A282344.P6097525353395414022

/-! ## A282344.P5398721593405124406

`∑{p}[A282345(n+1), #*A020639(#)]`
-/

namespace A282344.P5398721593405124406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℤ) * A020639 p

end

end A282344.P5398721593405124406

/-! ## A282344.P5132104257975980959

`p?[A282345(n+1)]^A020639(2*(n+1))`
-/

namespace A282344.P5132104257975980959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282345 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A282344.P5132104257975980959

/-!
# A282345: Square root of the smallest square referenced in A086982 (Numbers n such that 10^n+1 is not squarefree).

The programs for A282345, there is no canonical definition to state claims against.
-/

/-! ## A282345.P16943832193930524435

`sqrt(A282344(n+1))`
-/

namespace A282345.P16943832193930524435
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A282344 (n + 1) : ℝ)

end

end A282345.P16943832193930524435

/-! ## A282345.P1080263326152275311

`root(A282344(C(n, 90)+n+1), 2)`
-/

namespace A282345.P1080263326152275311
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A282344 (Nat.choose n 90 + n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A282345.P1080263326152275311

/-! ## A282345.P184922096606874452

`root(A282344((n%2+n)%2+n+1), 2)`
-/

namespace A282345.P184922096606874452
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A282344 ((n % 2 + n) % 2 + n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A282345.P184922096606874452

/-! ## A282345.P18137839216753265746

`A001414(root(A282344(n+1), 2))`
-/

namespace A282345.P18137839216753265746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((A282344 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282345.P18137839216753265746

/-! ## A282345.P6591947704728059390

`A006530(root(A282344(n+1), 2))`
-/

namespace A282345.P6591947704728059390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A282344 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282345.P6591947704728059390

/-! ## A282345.P13427055256958700036

`A007922(root(A282344(n+1), 2))`
-/

namespace A282345.P13427055256958700036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007922 (SequenceMachineLib.roundAway ((A282344 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282345.P13427055256958700036

/-! ## A282345.P7099958091219588679

`A007947(root(A282344(n+1), 2))`
-/

namespace A282345.P7099958091219588679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A282344 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282345.P7099958091219588679

/-! ## A282345.P14240931174371663276

`A014963(root(A282344(n+1), 2))`
-/

namespace A282345.P14240931174371663276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A282344 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282345.P14240931174371663276

/-! ## A282345.P7032238178744272556

`A017666(root(A282344(n+1), 2))`
-/

namespace A282345.P7032238178744272556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (SequenceMachineLib.roundAway ((A282344 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282345.P7032238178744272556

/-! ## A282345.P9400435018002395273

`A020639(root(A282344(n+1), 2))`
-/

namespace A282345.P9400435018002395273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A282344 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282345.P9400435018002395273

/-!
# A282352: Smallest value of x + y such that x^(2^k) + y^(2^k) is prime for every k = 0..n, where x > y are nonnegative integers.

The programs for A282352, there is no canonical definition to state claims against.
-/

/-! ## A282352.P11450544151536425521

`p?[A077269(A033799(n))]`
-/

namespace A282352.P11450544151536425521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077269 (A033799 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A282352.P11450544151536425521

/-! ## A282352.P1893769842959042947

`A231208(abs(n-A107239(n)))+1`
-/

namespace A282352.P1893769842959042947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231208 |(n : ℤ) - A107239 n|.toNat + 1

end

end A282352.P1893769842959042947

/-!
# A282353: Primes p = x^2 + y^2 such that x + y is a perfect square.

The programs for A282353, there is no canonical definition to state claims against.
-/

/-! ## A282353.P8791606155656328251

`p?[A379925(n+1)]`
-/

namespace A282353.P8791606155656328251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A282353.P8791606155656328251

/-! ## A282353.P3198046060429964344

`∩[A279392(n+1), A379925(n+1)]`
-/

namespace A282353.P3198046060429964344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282353.P3198046060429964344

/-! ## A282353.P15154940570166135105

`∩[A002144(n+1), A379925(n+1)]`
-/

namespace A282353.P15154940570166135105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282353.P15154940570166135105

/-! ## A282353.P6251706677852196446

`∩[A002313(n+1), A379925(n+1)]`
-/

namespace A282353.P6251706677852196446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282353.P6251706677852196446

/-! ## A282353.P10369187883223409794

`∩[A055025(n+1), A379925(n+1)]`
-/

namespace A282353.P10369187883223409794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282353.P10369187883223409794

/-! ## A282353.P13523376702335256599

`∩[A172480(n+1), A379925(n+1)]`
-/

namespace A282353.P13523376702335256599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282353.P13523376702335256599

/-! ## A282353.P14113451729363709667

`∩[A175768(n+1), A379925(n+1)]`
-/

namespace A282353.P14113451729363709667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282353.P14113451729363709667

/-! ## A282353.P9399235746448793031

`∩[A109515(n+1), A379925(n+1)]`
-/

namespace A282353.P9399235746448793031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282353.P9399235746448793031

/-! ## A282353.P14210762140308901218

`∩[A079348(n+1), A379925(n+1)]`
-/

namespace A282353.P14210762140308901218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282353.P14210762140308901218

/-! ## A282353.P15108817896755021994

`∩[A266987(n+1), A379925(n+1)]`
-/

namespace A282353.P15108817896755021994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282353.P15108817896755021994

/-! ## A282353.P12692423940530536481

`∩[A049092(n+1), A379925(n+1)]`
-/

namespace A282353.P12692423940530536481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282353.P12692423940530536481

/-! ## A282353.P13357879501053240685

`∩[A095283(n+1), A379925(n+1)]`
-/

namespace A282353.P13357879501053240685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282353.P13357879501053240685

/-! ## A282353.P156927896954768131

`∩[A045352(n+1), A379925(n+1)]`
-/

namespace A282353.P156927896954768131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282353.P156927896954768131

/-! ## A282353.P11290696785469848476

`∩[A045442(n+1), A379925(n+1)]`
-/

namespace A282353.P11290696785469848476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282353.P11290696785469848476

/-! ## A282353.P2148451971648228976

`∩[A042998(n+1), A379925(n+1)]`
-/

namespace A282353.P2148451971648228976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282353.P2148451971648228976

/-! ## A282353.P10554480233196836818

`∩[A045403(n+1), A379925(n+1)]`
-/

namespace A282353.P10554480233196836818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282353.P10554480233196836818

/-! ## A282353.P9421825731262591006

`∩[A085317(n+1), A379925(n+1)]`
-/

namespace A282353.P9421825731262591006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282353.P9421825731262591006

/-! ## A282353.P875813664449645596

`∩[A042986(n+1), A379925(n+1)]`
-/

namespace A282353.P875813664449645596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282353.P875813664449645596

/-! ## A282353.P6582940683629681545

`∩[A045321(n+1), A379925(n+1)]`
-/

namespace A282353.P6582940683629681545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282353.P6582940683629681545

/-! ## A282353.P9693490627813582253

`∩[A080115(n+1), A379925(n+1)]`
-/

namespace A282353.P9693490627813582253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282353.P9693490627813582253

/-!
# A282355: Expansion of (Sum_{i>=1} x^prime(prime(i)))*(Sum_{j = p*q, p prime, q prime} x^j).

The programs for A282355, there is no canonical definition to state claims against.
-/

/-! ## A282355.P16324889618439613527

`A083912(A167480(3*n+1)+A140997(2*(n+1)))`
-/

namespace A282355.P16324889618439613527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (A167480 (3 * n + 1) + A140997 (2 * (n + 1))).toNat

end

end A282355.P16324889618439613527

/-! ## A282355.P8600516533414240216

`A116361(A185234(n)%(A342640(3*n+2)-1))`
-/

namespace A282355.P8600516533414240216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116361 (Int.tmod (A185234 n) (A342640 (3 * n + 2) - 1)).toNat

end

end A282355.P8600516533414240216

/-! ## A282355.P14165578571698165552

`A320005(A246596(3*(n+1))*A293214(n+1))`
-/

namespace A282355.P14165578571698165552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320005 (A246596 (3 * (n + 1)) * A293214 (n + 1)).toNat

end

end A282355.P14165578571698165552

/-! ## A282355.P7168277122221864426

`A001221(A328603(n+5)^A276183(3*n+1))`
-/

namespace A282355.P7168277122221864426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A328603 (n + 5) : ℚ) ^ (A276183 (3 * n + 1) : ℤ))).toNat

end

end A282355.P7168277122221864426

/-! ## A282355.P16964918849929775665

`A269246(or(A000389(n), A000961(n+1))-(n+1))`
-/

namespace A282355.P16964918849929775665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269246 (Int.lor (A000389 n) (A000961 (n + 1)) - (n + 1 : ℤ)).toNat

end

end A282355.P16964918849929775665

/-!
# A282358: Numbers k such that (182*10^k + 1)/3 is prime.

The programs for A282358, there is no canonical definition to state claims against.
-/

/-! ## A282358.P14713739708192216232

`lt[A340260(A092671(n+1)), 3]`
-/

namespace A282358.P14713739708192216232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340260 (A092671 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A282358.P14713739708192216232

/-!
# A282359: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 457", based on the 5-celled von Neumann neighborhood.

The programs for A282359, there is no canonical definition to state claims against.
-/

/-! ## A282359.P15642337617358121824

`A007088(A282361(n))`
-/

namespace A282359.P15642337617358121824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282361 n).toNat

end

end A282359.P15642337617358121824

/-! ## A282359.P16706288279500974822

`A185544(2*A282361(n))`
-/

namespace A282359.P16706288279500974822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282361 n).toNat

end

end A282359.P16706288279500974822

/-! ## A282359.P17065076065439184721

`A007088(A282608(n)^C(n, 6)!-A108497(n+1))`
-/

namespace A282359.P17065076065439184721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282608 n ^ Nat.factorial (Nat.choose n 6) - A108497 (n + 1)).toNat

end

end A282359.P17065076065439184721

/-!
# A282360: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 457", based on the 5-celled von Neumann neighborhood.

The programs for A282360, there is no canonical definition to state claims against.
-/

/-! ## A282360.P15724169932768797161

`A007088(A282362(n))`
-/

namespace A282360.P15724169932768797161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282362 n).toNat

end

end A282360.P15724169932768797161

/-! ## A282360.P4833188964069464800

`A185544(2*A282362(n))`
-/

namespace A282360.P4833188964069464800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282362 n).toNat

end

end A282360.P4833188964069464800

/-!
# A282361: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 457", based on the 5-celled von Neumann neighborhood.

The programs for A282361, there is no canonical definition to state claims against.
-/

/-! ## A282361.P10159950514411051244

`A282608(n)^C(n, 6)!-A108497(n+1)`
-/

namespace A282361.P10159950514411051244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282608 n ^ Nat.factorial (Nat.choose n 6) - A108497 (n + 1)

end

end A282361.P10159950514411051244

/-! ## A282361.P3419975067539382262

`A282449(n)-A372603(A321911(n+1))`
-/

namespace A282361.P3419975067539382262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282449 n - A372603 (A321911 (n + 1)).toNat

end

end A282361.P3419975067539382262

/-! ## A282361.P15416783873960463235

`A282449(n)-A002324(A221846(3*(n+1)))`
-/

namespace A282361.P15416783873960463235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282449 n - A002324 (A221846 (3 * (n + 1))).toNat

end

end A282361.P15416783873960463235

/-!
# A282362: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 457", based on the 5-celled von Neumann neighborhood.

The programs for A282362, there is no canonical definition to state claims against.
-/

/-! ## A282362.P18171446210143590783

`A282450(n)-A324067(A174919(n))`
-/

namespace A282362.P18171446210143590783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282450 n - A324067 (A174919 n).toNat

end

end A282362.P18171446210143590783

/-! ## A282362.P15501928763449173515

`A282450(n)-A004018(A356017(3*n+5))`
-/

namespace A282362.P15501928763449173515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282450 n - A004018 (A356017 (3 * n + 5)).toNat

end

end A282362.P15501928763449173515

/-!
# A282363: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 459", based on the 5-celled von Neumann neighborhood.

The programs for A282363, there is no canonical definition to state claims against.
-/

/-! ## A282363.P16485044720597329890

`A007088(A282365(n))`
-/

namespace A282363.P16485044720597329890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282365 n).toNat

end

end A282363.P16485044720597329890

/-! ## A282363.P6883102713397080608

`A185544(2*A282365(n))`
-/

namespace A282363.P6883102713397080608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282365 n).toNat

end

end A282363.P6883102713397080608

/-!
# A282364: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 459", based on the 5-celled von Neumann neighborhood.

The programs for A282364, there is no canonical definition to state claims against.
-/

/-! ## A282364.P17750968708273144664

`A007088(A282366(n))`
-/

namespace A282364.P17750968708273144664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282366 n).toNat

end

end A282364.P17750968708273144664

/-! ## A282364.P12037755333262927137

`A185544(2*A282366(n))`
-/

namespace A282364.P12037755333262927137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282366 n).toNat

end

end A282364.P12037755333262927137

/-!
# A282365: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 459", based on the 5-celled von Neumann neighborhood.

The programs for A282365, there is no canonical definition to state claims against.
-/

/-! ## A282365.P9314917241399890663

`A285007(A177794(n+1))+A281750(n)`
-/

namespace A282365.P9314917241399890663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (A177794 (n + 1)).toNat + A281750 n

end

end A282365.P9314917241399890663

/-!
# A282367: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 461", based on the 5-celled von Neumann neighborhood.

The programs for A282367, there is no canonical definition to state claims against.
-/

/-! ## A282367.P9096971496784505184

`A007088(A282369(n))`
-/

namespace A282367.P9096971496784505184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282369 n).toNat

end

end A282367.P9096971496784505184

/-! ## A282367.P10059801443504377919

`A185544(2*A282369(n))`
-/

namespace A282367.P10059801443504377919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282369 n).toNat

end

end A282367.P10059801443504377919

/-!
# A282368: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 461", based on the 5-celled von Neumann neighborhood.

The programs for A282368, there is no canonical definition to state claims against.
-/

/-! ## A282368.P5056439828401801848

`A007088(A282370(n))`
-/

namespace A282368.P5056439828401801848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282370 n).toNat

end

end A282368.P5056439828401801848

/-! ## A282368.P3461031930542370810

`A185544(2*A282370(n))`
-/

namespace A282368.P3461031930542370810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282370 n).toNat

end

end A282368.P3461031930542370810

/-!
# A282369: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 461", based on the 5-celled von Neumann neighborhood.

The programs for A282369, there is no canonical definition to state claims against.
-/

/-! ## A282369.P10081745279975219173

`A282004(n)-A184945(A072706(n))`
-/

namespace A282369.P10081745279975219173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282004 n - A184945 (A072706 n).toNat

end

end A282369.P10081745279975219173

/-! ## A282369.P14606045102346857882

`A282658(n)-A326016(A058187(n))`
-/

namespace A282369.P14606045102346857882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282658 n - A326016 (A058187 n).toNat

end

end A282369.P14606045102346857882

/-!
# A282371: Number of n X 2 0..1 arrays with no 1 equal to more than four of its king-move neighbors, with the exception of exactly two elements.

The programs for A282371, there is no canonical definition to state claims against.
-/

/-! ## A282371.P11255270623312449803

`A282377(∑[n+1]+2)`
-/

namespace A282371.P11255270623312449803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A282371.P11255270623312449803

/-! ## A282371.P7382354161999211928

`lcm(∑{e}[n+1, #], A282377(A133263(n+1)))`
-/

namespace A282371.P7382354161999211928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A282377 (A133263 (n + 1)).toNat)

end

end A282371.P7382354161999211928

/-! ## A282371.P8101840588591785831

`A282377(A133263(n+1))%A016159(n)`
-/

namespace A282371.P8101840588591785831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282377 (A133263 (n + 1)).toNat) (A016159 n)

end

end A282371.P8101840588591785831

/-! ## A282371.P17583662645415482777

`A267870(n²)*A282377(A133263(n+1))`
-/

namespace A282371.P17583662645415482777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267870 (n ^ 2) * A282377 (A133263 (n + 1)).toNat

end

end A282371.P17583662645415482777

/-! ## A282371.P9651152955125270647

`lcm(A006519(n+3), A282377(A133263(n+1)))`
-/

namespace A282371.P9651152955125270647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (n + 3)) (A282377 (A133263 (n + 1)).toNat)

end

end A282371.P9651152955125270647

/-!
# A282372: Number of n X 3 0..1 arrays with no 1 equal to more than four of its king-move neighbors, with the exception of exactly two elements.

The programs for A282372, there is no canonical definition to state claims against.
-/

/-! ## A282372.P14824863036304614810

`A282377(∑[n+2]+4)`
-/

namespace A282372.P14824863036304614810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A282372.P14824863036304614810

/-! ## A282372.P13836062223941414585

`A282377(A167614(n+1))+A137579(n)`
-/

namespace A282372.P13836062223941414585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (A167614 (n + 1)).toNat + A137579 n

end

end A282372.P13836062223941414585

/-! ## A282372.P12813145335228769232

`A282377(A167614(n+1))+A184955(n)`
-/

namespace A282372.P12813145335228769232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (A167614 (n + 1)).toNat + A184955 n

end

end A282372.P12813145335228769232

/-! ## A282372.P15562007443239196627

`A282377(A167614(n+1))+A185037(n)`
-/

namespace A282372.P15562007443239196627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (A167614 (n + 1)).toNat + A185037 n

end

end A282372.P15562007443239196627

/-! ## A282372.P4928587829710497157

`A282377(A167614(n+1))%A033507(n)`
-/

namespace A282372.P4928587829710497157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282377 (A167614 (n + 1)).toNat) (A033507 n)

end

end A282372.P4928587829710497157

/-!
# A282373: Number of nX4 0..1 arrays with no 1 equal to more than four of its king-move neighbors, with the exception of exactly two elements.

The programs for A282373, there is no canonical definition to state claims against.
-/

/-! ## A282373.P2902415598336686281

`A282377(A374004(n+1))`
-/

namespace A282373.P2902415598336686281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (A374004 (n + 1)).toNat

end

end A282373.P2902415598336686281

/-! ## A282373.P10094434161283003383

`A282377(A141214(n)+7)`
-/

namespace A282373.P10094434161283003383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (A141214 n + 7).toNat

end

end A282373.P10094434161283003383

/-! ## A282373.P13483630032709582121

`A282377(A052905(n)+9)`
-/

namespace A282373.P13483630032709582121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (A052905 n + 9).toNat

end

end A282373.P13483630032709582121

/-! ## A282373.P1699934063509763281

`A282377(A167614(n+2)+1)`
-/

namespace A282373.P1699934063509763281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (A167614 (n + 2) + 1).toNat

end

end A282373.P1699934063509763281

/-! ## A282373.P6704634398944732352

`A282377(Δ[A023545(n+1)-n²])`
-/

namespace A282373.P6704634398944732352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (f1 (n + 1) - f1 n).toNat

end

end A282373.P6704634398944732352

/-!
# A282374: Number of nX5 0..1 arrays with no 1 equal to more than four of its king-move neighbors, with the exception of exactly two elements.

The programs for A282374, there is no canonical definition to state claims against.
-/

/-! ## A282374.P7578786953147884010

`A282377(A374005(n+1))`
-/

namespace A282374.P7578786953147884010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (A374005 (n + 1)).toNat

end

end A282374.P7578786953147884010

/-! ## A282374.P5100238346157880455

`A282377(A167499(n+3))`
-/

namespace A282374.P5100238346157880455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (A167499 (n + 3)).toNat

end

end A282374.P5100238346157880455

/-! ## A282374.P727240746969945678

`A282377(A046691(n+3))`
-/

namespace A282374.P727240746969945678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (A046691 (n + 3)).toNat

end

end A282374.P727240746969945678

/-! ## A282374.P5168633351431690205

`A282377(eq[2, A092921(n)])`
-/

namespace A282374.P5168633351431690205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282374.P5168633351431690205

/-! ## A282374.P16686618396185493069

`A282377(eq[3, A152157(n)])`
-/

namespace A282374.P16686618396185493069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282374.P16686618396185493069

/-!
# A282375: Number of nX6 0..1 arrays with no 1 equal to more than four of its king-move neighbors, with the exception of exactly two elements.

The programs for A282375, there is no canonical definition to state claims against.
-/

/-! ## A282375.P4799973627773621817

`A282377(A374007(n+1))`
-/

namespace A282375.P4799973627773621817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (A374007 (n + 1)).toNat

end

end A282375.P4799973627773621817

/-! ## A282375.P294542924033597415

`A282377(eq[7, A131818(n+1)])`
-/

namespace A282375.P294542924033597415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282375.P294542924033597415

/-! ## A282375.P13786924427534523716

`A282377(A052905(n+3))`
-/

namespace A282375.P13786924427534523716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (A052905 (n + 3)).toNat

end

end A282375.P13786924427534523716

/-! ## A282375.P4870584937398654336

`A282377(eq[3, A219347(n)])`
-/

namespace A282375.P4870584937398654336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282375.P4870584937398654336

/-! ## A282375.P5589729925158945453

`A282377(eq[5, A152157(n)])`
-/

namespace A282375.P5589729925158945453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282375.P5589729925158945453

/-!
# A282376: Number of nX7 0..1 arrays with no 1 equal to more than four of its king-move neighbors, with the exception of exactly two elements.

The programs for A282376, there is no canonical definition to state claims against.
-/

/-! ## A282376.P11367551563346359249

`A282377(A374008(n+1))`
-/

namespace A282376.P11367551563346359249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (A374008 (n + 1)).toNat

end

end A282376.P11367551563346359249

/-! ## A282376.P1465306148799117230

`A282377(A167499(n+5)+2)`
-/

namespace A282376.P1465306148799117230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (A167499 (n + 5) + 2).toNat

end

end A282376.P1465306148799117230

/-! ## A282376.P14978463405262265660

`A282377(eq[8, A131818(n+1)])`
-/

namespace A282376.P14978463405262265660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282376.P14978463405262265660

/-! ## A282376.P9367220028693707982

`A282377(eq[4, A219347(n)])`
-/

namespace A282376.P9367220028693707982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282376.P9367220028693707982

/-! ## A282376.P10436059949877719832

`A282377(eq[6, A193592(n)])`
-/

namespace A282376.P10436059949877719832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282376.P10436059949877719832

/-!
# A282378: Primes of the form (p^2 + q^2)/2 such that (p^4 + q^4)/2 is prime, where p and q are primes.

The programs for A282378, there is no canonical definition to state claims against.
-/

/-! ## A282378.P2626344897261961395

`p?[A029333(n)*A103739(n+1)]`
-/

namespace A282378.P2626344897261961395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029333 n * A103739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A282378.P2626344897261961395

/-! ## A282378.P9360389182275828236

`p?[p?[A143850(n+1)]*A029333(n)]`
-/

namespace A282378.P9360389182275828236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143850 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A029333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A282378.P9360389182275828236

/-! ## A282378.P9840727588428482935

`A143850(eq[A048766(n), A143966(n)])`
-/

namespace A282378.P9840727588428482935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143850 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A282378.P9840727588428482935

/-!
# A282380: Number of ways to write n as a sum of two unordered nonsquarefree numbers.

The programs for A282380, there is no canonical definition to state claims against.
-/

/-! ## A282380.P15565906695702415123

`A110654(n)-A351833(n+1)`
-/

namespace A282380.P15565906695702415123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A351833 (n + 1)

end

end A282380.P15565906695702415123

/-! ## A282380.P8702655880154578019

`A294100(n+1)-A071068(n+1)`
-/

namespace A282380.P8702655880154578019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294100 (n + 1) - A071068 (n + 1)

end

end A282380.P8702655880154578019

/-! ## A282380.P13309056456387917966

`A294235(n+1)-A294232(n+1)`
-/

namespace A282380.P13309056456387917966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294235 (n + 1) - A294232 (n + 1)

end

end A282380.P13309056456387917966

/-! ## A282380.P13483898328925916766

`n%(A351833(n+1)+A123108(n))`
-/

namespace A282380.P13483898328925916766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A351833 (n + 1) + A123108 n)

end

end A282380.P13483898328925916766

/-! ## A282380.P12239230225075490367

`∑[(A007431(n)+n)%2]-A294232(n+1)`
-/

namespace A282380.P12239230225075490367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007431 n + (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A294232 (n + 1)

end

end A282380.P12239230225075490367

/-! ## A282380.P2460251603934659602

`ceil(n/2-A262868(n+1))-A294232(n+1)`
-/

namespace A282380.P2460251603934659602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 - (A262868 (n + 1) : ℚ)⌉ - A294232 (n + 1)

end

end A282380.P2460251603934659602

/-! ## A282380.P14270202605679761300

`abs(A001057(n))-A294101(n+1)-A071068(n+1)`
-/

namespace A282380.P14270202605679761300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 n| - A294101 (n + 1) - A071068 (n + 1)

end

end A282380.P14270202605679761300

/-! ## A282380.P10383135073520077107

`∑[A000035(n)]-(A294232(n+1)+A262868(n+1))`
-/

namespace A282380.P10383135073520077107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A294232 (n + 1) + A262868 (n + 1))

end

end A282380.P10383135073520077107

/-! ## A282380.P15247268765762582856

`A123108(n+1)-A351833(n+1)`
-/

namespace A282380.P15247268765762582856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n + 1) - A351833 (n + 1)

end

end A282380.P15247268765762582856

/-! ## A282380.P7203972198693079877

`∑[A000035(A007431(n)+n)]-A294232(n+1)`
-/

namespace A282380.P7203972198693079877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A007431 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A294232 (n + 1)

end

end A282380.P7203972198693079877

/-! ## A282380.P17263236123031022705

`∑[A000035(n)]-(A013928(n+1)-A098236(n+1))`
-/

namespace A282380.P17263236123031022705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A013928 (n + 1) - A098236 (n + 1))

end

end A282380.P17263236123031022705

/-!
# A282384: Numbers n such that the decimal expansion of n^2 contains n+1.

The programs for A282384, there is no canonical definition to state claims against.
-/

/-! ## A282384.P8278517074999858838

`A233455(n+3)+A122510(A181997(n))`
-/

namespace A282384.P8278517074999858838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233455 (n + 3) + A122510 (A181997 n).toNat

end

end A282384.P8278517074999858838

/-!
# A282385: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 462", based on the 5-celled von Neumann neighborhood.

The programs for A282385, there is no canonical definition to state claims against.
-/

/-! ## A282385.P12703982257657950749

`A288805(Δ[n²])`
-/

namespace A282385.P12703982257657950749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288805 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A282385.P12703982257657950749

/-! ## A282385.P16184775783814635000

`record[A288805(n*n%2)]`
-/

namespace A282385.P16184775783814635000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288805 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282385.P16184775783814635000

/-! ## A282385.P14299032237749287319

`e^log(A288805(2*n+1))`
-/

namespace A282385.P14299032237749287319
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 ^ (Real.log (A288805 (2 * n + 1) : ℝ))

end

end A282385.P14299032237749287319

/-! ## A282385.P17837667374852900254

`record[A288805(A006257(n))]`
-/

namespace A282385.P17837667374852900254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288805 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282385.P17837667374852900254

/-! ## A282385.P8285931377267113211

`record[A288805(A026741(n))]`
-/

namespace A282385.P8285931377267113211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288805 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282385.P8285931377267113211

/-! ## A282385.P13814712152408290047

`record[A288805(A093178(n))]`
-/

namespace A282385.P13814712152408290047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288805 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282385.P13814712152408290047

/-! ## A282385.P12140787814963446096

`record[A288805(A099375(n))]`
-/

namespace A282385.P12140787814963446096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288805 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282385.P12140787814963446096

/-! ## A282385.P12737124261542921730

`record[A288805(A000265(n+1))]`
-/

namespace A282385.P12737124261542921730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288805 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282385.P12737124261542921730

/-! ## A282385.P3079210741817956906

`record[A288805(A033999(n)+n)]`
-/

namespace A282385.P3079210741817956906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288805 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282385.P3079210741817956906

/-! ## A282385.P144571491879834505

`record[A105812(n)*A288805(n)]`
-/

namespace A282385.P144571491879834505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 n * A288805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282385.P144571491879834505

/-! ## A282385.P6107321693536086971

`record[A288805(and(n, A033999(n)))]`
-/

namespace A282385.P6107321693536086971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288805 (Int.land (n : ℤ) (A033999 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282385.P6107321693536086971

/-! ## A282385.P16893270199913956566

`or(record[A285477(n)], A036987(n))`
-/

namespace A282385.P16893270199913956566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285477 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A036987 n)

end

end A282385.P16893270199913956566

/-! ## A282385.P1982423087130692871

`or(record[A285941(n)], A036987(n))`
-/

namespace A282385.P1982423087130692871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A036987 n)

end

end A282385.P1982423087130692871

/-! ## A282385.P14051484459996608115

`or(A036987(n), A285477(2*n))`
-/

namespace A282385.P14051484459996608115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 n) (A285477 (2 * n))

end

end A282385.P14051484459996608115

/-! ## A282385.P15437833967229618453

`or(A036987(n), A285941(2*n))`
-/

namespace A282385.P15437833967229618453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 n) (A285941 (2 * n))

end

end A282385.P15437833967229618453

/-! ## A282385.P13187262535339850920

`record[A288805(ceil(n/A040929(n)))]`
-/

namespace A282385.P13187262535339850920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288805 ⌈(n : ℚ) / (A040929 n : ℚ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282385.P13187262535339850920

/-! ## A282385.P4592776080181110540

`A036987(n)+record[A285477(n+1)]`
-/

namespace A282385.P4592776080181110540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282385.P4592776080181110540

/-! ## A282385.P247469735612395915

`record[A288805(A105812(n+1)+n)]`
-/

namespace A282385.P247469735612395915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288805 (A105812 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282385.P247469735612395915

/-! ## A282385.P15964728709347001721

`record[A288805(n+1)/A040929(n+1)]`
-/

namespace A282385.P15964728709347001721
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288805 (n + 1) : ℚ) / (A040929 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282385.P15964728709347001721

/-! ## A282385.P4819589093313070778

`A001222(A151800(n))*A288805(A005408(n))`
-/

namespace A282385.P4819589093313070778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A151800 n).toNat * A288805 (A005408 n).toNat

end

end A282385.P4819589093313070778

/-!
# A282386: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 462", based on the 5-celled von Neumann neighborhood.

The programs for A282386, the canonical program `A282386.P16956700879093564152` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282386 has offset 0).

The definition of A282386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282386.P16956700879093564152

`A006943(A006257(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A282386

/-- `A006943(A006257(n))` -/
def P16956700879093564152.Spec : Prop :=
  ∀ n, P16956700879093564152.a n = A282386 n

theorem P16956700879093564152.correct : P16956700879093564152.Spec := by
  intro n
  simp only [A282386]

end A282386

/-! ## A282386.P7642054178415571434

`A006943(floor(log2(A282388(n))))`
-/

namespace A282386.P7642054178415571434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 (Nat.log 2 (A282388 n).toNat)

end

end A282386.P7642054178415571434

namespace A282386

/-- `A006943(floor(log2(A282388(n))))` -/
def P7642054178415571434.Spec : Prop :=
  ∀ n, P7642054178415571434.a n = A282386 n

end A282386

/-! ## A282386.P3916397420584547624

`A006943(A164089(4*n+2))`
-/

namespace A282386.P3916397420584547624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 (A164089 (4 * n + 2)).toNat

end

end A282386.P3916397420584547624

namespace A282386

/-- `A006943(A164089(4*n+2))` -/
def P3916397420584547624.Spec : Prop :=
  ∀ n, P3916397420584547624.a n = A282386 n

end A282386

/-! ## A282386.P7594502796836429919

`A006943(2*n-A003817(n))`
-/

namespace A282386.P7594502796836429919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 ((2 * n : ℤ) - A003817 n).toNat

end

end A282386.P7594502796836429919

namespace A282386

/-- `A006943(2*n-A003817(n))` -/
def P7594502796836429919.Spec : Prop :=
  ∀ n, P7594502796836429919.a n = A282386 n

end A282386

/-! ## A282386.P7180771921185447997

`A006943(n-A003817(n)+n)`
-/

namespace A282386.P7180771921185447997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 ((n : ℤ) - A003817 n + (n : ℤ)).toNat

end

end A282386.P7180771921185447997

namespace A282386

/-- `A006943(n-A003817(n)+n)` -/
def P7180771921185447997.Spec : Prop :=
  ∀ n, P7180771921185447997.a n = A282386 n

end A282386

/-! ## A282386.P7316803012083626872

`A006943(n-(A003817(n)-n))`
-/

namespace A282386.P7316803012083626872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 ((n : ℤ) - (A003817 n - (n : ℤ))).toNat

end

end A282386.P7316803012083626872

namespace A282386

/-- `A006943(n-(A003817(n)-n))` -/
def P7316803012083626872.Spec : Prop :=
  ∀ n, P7316803012083626872.a n = A282386 n

end A282386

/-! ## A282386.P281931875283197158

`A006943(A005408(n)-A062383(n))`
-/

namespace A282386.P281931875283197158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 (A005408 n - A062383 n).toNat

end

end A282386.P281931875283197158

namespace A282386

/-- `A006943(A005408(n)-A062383(n))` -/
def P281931875283197158.Spec : Prop :=
  ∀ n, P281931875283197158.a n = A282386 n

end A282386

/-! ## A282386.P900873413072764477

`A006943(A005408(n)%A062383(n))`
-/

namespace A282386.P900873413072764477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 (Int.tmod (A005408 n) (A062383 n)).toNat

end

end A282386.P900873413072764477

namespace A282386

/-- `A006943(A005408(n)%A062383(n))` -/
def P900873413072764477.Spec : Prop :=
  ∀ n, P900873413072764477.a n = A282386 n

end A282386

/-! ## A282386.P4024505336249775067

`A006943(xor(A005408(n), A062383(n)))`
-/

namespace A282386.P4024505336249775067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 (Int.xor (A005408 n) (A062383 n)).toNat

end

end A282386.P4024505336249775067

namespace A282386

/-- `A006943(xor(A005408(n), A062383(n)))` -/
def P4024505336249775067.Spec : Prop :=
  ∀ n, P4024505336249775067.a n = A282386 n

end A282386

/-! ## A282386.P11212819387297711975

`A006943(A005843(n)+1-A062383(n))`
-/

namespace A282386.P11212819387297711975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 (A005843 n + (1 - A062383 n)).toNat

end

end A282386.P11212819387297711975

namespace A282386

/-- `A006943(A005843(n)+1-A062383(n))` -/
def P11212819387297711975.Spec : Prop :=
  ∀ n, P11212819387297711975.a n = A282386 n

end A282386

/-! ## A282386.P9093444067802830018

`A006943(1-(A062383(n)-A005843(n)))`
-/

namespace A282386.P9093444067802830018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 (1 - (A062383 n - A005843 n)).toNat

end

end A282386.P9093444067802830018

namespace A282386

/-- `A006943(1-(A062383(n)-A005843(n)))` -/
def P9093444067802830018.Spec : Prop :=
  ∀ n, P9093444067802830018.a n = A282386 n

end A282386

/-!
# A282388: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 462", based on the 5-celled von Neumann neighborhood.

The programs for A282388, the canonical program `A282388.P15003936815126334606` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282388 has offset 0).

The definition of A282388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 422 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282388.P15003936815126334606

`A133179(Δ[n²])`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A282388

/-- `A133179(Δ[n²])` -/
def P15003936815126334606.Spec : Prop :=
  ∀ n, P15003936815126334606.a n = A282388 n

theorem P15003936815126334606.correct : P15003936815126334606.Spec := by
  intro n
  simp only [A282388]

end A282388

/-! ## A282388.P17366103510098825602

`A001317(A006257(n))`
-/

namespace A282388.P17366103510098825602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (A006257 n).toNat

end

end A282388.P17366103510098825602

namespace A282388

/-- `A001317(A006257(n))` -/
def P17366103510098825602.Spec : Prop :=
  ∀ n, P17366103510098825602.a n = A282388 n

end A282388

/-! ## A282388.P8488133615977958097

`A087745(2*A006257(n))`
-/

namespace A282388.P8488133615977958097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087745 (2 * A006257 n).toNat

end

end A282388.P8488133615977958097

namespace A282388

/-- `A087745(2*A006257(n))` -/
def P8488133615977958097.Spec : Prop :=
  ∀ n, P8488133615977958097.a n = A282388 n

end A282388

/-! ## A282388.P6484973385481134329

`A001317(A053645(2*n+1))`
-/

namespace A282388.P6484973385481134329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (A053645 (2 * n + 1)).toNat

end

end A282388.P6484973385481134329

namespace A282388

/-- `A001317(A053645(2*n+1))` -/
def P6484973385481134329.Spec : Prop :=
  ∀ n, P6484973385481134329.a n = A282388 n

end A282388

/-! ## A282388.P5484235208334799536

`A001317(2*n+1-A062383(n))`
-/

namespace A282388.P5484235208334799536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 ((2 * n + 1 : ℤ) - A062383 n).toNat

end

end A282388.P5484235208334799536

namespace A282388

/-- `A001317(2*n+1-A062383(n))` -/
def P5484235208334799536.Spec : Prop :=
  ∀ n, P5484235208334799536.a n = A282388 n

end A282388

/-! ## A282388.P14543626726520386007

`A059841(2*n)*A133179(2*n+1)`
-/

namespace A282388.P14543626726520386007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n) * A133179 (2 * n + 1)

end

end A282388.P14543626726520386007

namespace A282388

/-- `A059841(2*n)*A133179(2*n+1)` -/
def P14543626726520386007.Spec : Prop :=
  ∀ n, P14543626726520386007.a n = A282388 n

end A282388

/-! ## A282388.P282050177223238264

`A135416(2*(n+1))+A133179(2*n+1)`
-/

namespace A282388.P282050177223238264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (2 * (n + 1)) + A133179 (2 * n + 1)

end

end A282388.P282050177223238264

namespace A282388

/-- `A135416(2*(n+1))+A133179(2*n+1)` -/
def P282050177223238264.Spec : Prop :=
  ∀ n, P282050177223238264.a n = A282388 n

end A282388

/-! ## A282388.P14084828069211600547

`A001317(A005408(n)%A062383(n))`
-/

namespace A282388.P14084828069211600547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (Int.tmod (A005408 n) (A062383 n)).toNat

end

end A282388.P14084828069211600547

namespace A282388

/-- `A001317(A005408(n)%A062383(n))` -/
def P14084828069211600547.Spec : Prop :=
  ∀ n, P14084828069211600547.a n = A282388 n

end A282388

/-! ## A282388.P13714542383070259346

`A087745(A006257(n)+A006257(n)+1)`
-/

namespace A282388.P13714542383070259346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087745 (A006257 n + (A006257 n + 1)).toNat

end

end A282388.P13714542383070259346

namespace A282388

/-- `A087745(A006257(n)+A006257(n)+1)` -/
def P13714542383070259346.Spec : Prop :=
  ∀ n, P13714542383070259346.a n = A282388 n

end A282388

/-! ## A282388.P12499084364763272885

`A133179(A117973(2*n+1))*A133179(2*n+1)`
-/

namespace A282388.P12499084364763272885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 (A117973 (2 * n + 1)).toNat * A133179 (2 * n + 1)

end

end A282388.P12499084364763272885

namespace A282388

/-- `A133179(A117973(2*n+1))*A133179(2*n+1)` -/
def P12499084364763272885.Spec : Prop :=
  ∀ n, P12499084364763272885.a n = A282388 n

end A282388

/-! ## A282388.P14566408878028077476

`A288808(2*n+1)/A000079(n+1)`
-/

namespace A282388.P14566408878028077476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288808 (2 * n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A282388.P14566408878028077476

namespace A282388

/-- `A288808(2*n+1)/A000079(n+1)` -/
def P14566408878028077476.Spec : Prop :=
  ∀ n, P14566408878028077476.a n = (A282388 n : ℚ)

end A282388

/-! ## A282388.P7991296274158841031

`A288808(2*n+1)/A060546(2*(n+1))`
-/

namespace A282388.P7991296274158841031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288808 (2 * n + 1) : ℚ) / (A060546 (2 * (n + 1)) : ℚ)

end

end A282388.P7991296274158841031

namespace A282388

/-- `A288808(2*n+1)/A060546(2*(n+1))` -/
def P7991296274158841031.Spec : Prop :=
  ∀ n, P7991296274158841031.a n = (A282388 n : ℚ)

end A282388

/-! ## A282388.P5955075483635865909

`lcm(A000079(n+1), A288807(2*n+1))/A000079(n+1)`
-/

namespace A282388.P5955075483635865909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000079 (n + 1)) (A288807 (2 * n + 1)) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A282388.P5955075483635865909

namespace A282388

/-- `lcm(A000079(n+1), A288807(2*n+1))/A000079(n+1)` -/
def P5955075483635865909.Spec : Prop :=
  ∀ n, P5955075483635865909.a n = (A282388 n : ℚ)

end A282388

/-! ## A282388.P15544077940376945863

`lcm(A077957(2*n), A133179(2*n+1))/A077957(2*n)`
-/

namespace A282388.P15544077940376945863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A077957 (2 * n)) (A133179 (2 * n + 1)) : ℚ) / (A077957 (2 * n) : ℚ)

end

end A282388.P15544077940376945863

namespace A282388

/-- `lcm(A077957(2*n), A133179(2*n+1))/A077957(2*n)` -/
def P15544077940376945863.Spec : Prop :=
  ∀ n, P15544077940376945863.a n = (A282388 n : ℚ)

end A282388

/-! ## A282388.P4869001411049193556

`gcd(A062878(n), A100737(n))`
-/

namespace A282388.P4869001411049193556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062878 n) (A100737 n)

end

end A282388.P4869001411049193556

namespace A282388

/-- `gcd(A062878(n), A100737(n))` -/
def P4869001411049193556.Spec : Prop :=
  ∀ n, (P4869001411049193556.a n : ℤ) = A282388 n

end A282388

/-! ## A282388.P13986399067975070889

`A267365(n)%A198633(n)`
-/

namespace A282388.P13986399067975070889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267365 n) (A198633 n)

end

end A282388.P13986399067975070889

namespace A282388

/-- `A267365(n)%A198633(n)` -/
def P13986399067975070889.Spec : Prop :=
  ∀ n, P13986399067975070889.a n = A282388 n

end A282388

/-! ## A282388.P15005286771384669613

`and(A038192(n), A126646(n))`
-/

namespace A282388.P15005286771384669613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038192 n) (A126646 n)

end

end A282388.P15005286771384669613

namespace A282388

/-- `and(A038192(n), A126646(n))` -/
def P15005286771384669613.Spec : Prop :=
  ∀ n, P15005286771384669613.a n = A282388 n

end A282388

/-! ## A282388.P13012505994385336805

`and(A126646(n), A267365(n))`
-/

namespace A282388.P13012505994385336805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A267365 n)

end

end A282388.P13012505994385336805

namespace A282388

/-- `and(A126646(n), A267365(n))` -/
def P13012505994385336805.Spec : Prop :=
  ∀ n, P13012505994385336805.a n = A282388 n

end A282388

/-! ## A282388.P2934272758491179771

`and(A267365(n), A281482(n))`
-/

namespace A282388.P2934272758491179771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267365 n) (A281482 n)

end

end A282388.P2934272758491179771

namespace A282388

/-- `and(A267365(n), A281482(n))` -/
def P2934272758491179771.Spec : Prop :=
  ∀ n, P2934272758491179771.a n = A282388 n

end A282388

/-! ## A282388.P3066920517175420868

`gcd(A062878(n)², A038192(n))`
-/

namespace A282388.P3066920517175420868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062878 n ^ 2) (A038192 n)

end

end A282388.P3066920517175420868

namespace A282388

/-- `gcd(A062878(n)², A038192(n))` -/
def P3066920517175420868.Spec : Prop :=
  ∀ n, (P3066920517175420868.a n : ℤ) = A282388 n

end A282388

/-!
# A282389: Number of squares in triangle-shaped polyominoes obtained by adding three identical polyominoes to the previous one, starting with one L-tetromino.

The programs for A282389, there is no canonical definition to state claims against.
-/

/-! ## A282389.P13781293678766244298

`a(n-1)+3*(A282390(n)*A000051(n-1)-a(n-1))` with `a(0)=4`
-/

namespace A282389.P13781293678766244298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + 3 * (A282390 n * A000051 (n - 1) - a (n - 1))

end

end A282389.P13781293678766244298

/-! ## A282389.P7283437194297507899

`A233583(A294627(2*n+1)+A008574(n+1))`
-/

namespace A282389.P7283437194297507899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A294627 (2 * n + 1) + A008574 (n + 1)).toNat

end

end A282389.P7283437194297507899

/-!
# A282390: Width of polyominoes in A282389.

The programs for A282390, there is no canonical definition to state claims against.
-/

/-! ## A282390.P2356609912517344991

`A187188(A237500(n+3))+A000196(n+3)`
-/

namespace A282390.P2356609912517344991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A237500 (n + 3)).toNat + A000196 (n + 3)

end

end A282390.P2356609912517344991

/-! ## A282390.P3961833655124723505

`A194640(Δ[A295146(n)]+3)`
-/

namespace A282390.P3961833655124723505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (f1 (n + 1) - f1 n + 3).toNat

end

end A282390.P3961833655124723505

/-! ## A282390.P6325800121926564136

`A087888(A286892(n))+A077854(n)`
-/

namespace A282390.P6325800121926564136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087888 (A286892 n).toNat + A077854 n

end

end A282390.P6325800121926564136

/-! ## A282390.P8404192840467498142

`A077854(n)+A074293(A353225(n))`
-/

namespace A282390.P8404192840467498142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077854 n + A074293 (A353225 n).toNat

end

end A282390.P8404192840467498142

/-! ## A282390.P7043894259239959552

`A334465(A007909(n))+A262267(n+1)`
-/

namespace A282390.P7043894259239959552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334465 (A007909 n).toNat + A262267 (n + 1)

end

end A282390.P7043894259239959552

/-!
# A282391: Numbers j such that d(j) = d(j + 3*d(j)), where d(j) is the number of divisors of j.

The programs for A282391, there is no canonical definition to state claims against.
-/

/-! ## A282391.P7548928868904605373

`lt[A319411(A345917(2*(n+2))), A351031(n+1)]`
-/

namespace A282391.P7548928868904605373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319411 (A345917 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351031 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A282391.P7548928868904605373

/-! ## A282391.P12922184556644962969

`lt[6, n*A354578(3*(n+1))]`
-/

namespace A282391.P12922184556644962969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A354578 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A282391.P12922184556644962969

/-! ## A282391.P6991552674085081917

`lt[A008459(n), A162982(A100861(n))]`
-/

namespace A282391.P6991552674085081917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162982 (A100861 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A282391.P6991552674085081917

/-! ## A282391.P2305508104961928102

`lt[A271584(n), A059907(A124324(n))]`
-/

namespace A282391.P2305508104961928102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059907 (A124324 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A282391.P2305508104961928102

/-! ## A282391.P13552202263834941509

`lt[A256405(A308509(2*(n+1))), A078828(n)]`
-/

namespace A282391.P13552202263834941509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256405 (A308509 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A282391.P13552202263834941509

/-!
# A282392: Number of n X n 0..1 arrays with no 1 equal to more than three of its king-move neighbors.

The programs for A282392, there is no canonical definition to state claims against.
-/

/-! ## A282392.P3710481869470288274

`A282399(∑[4*n]+1)`
-/

namespace A282392.P3710481869470288274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A282392.P3710481869470288274

/-! ## A282392.P17739685588922751532

`record[gcd(A166040(n), A282399(n+1))]`
-/

namespace A282392.P17739685588922751532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166040 n) (A282399 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282392.P17739685588922751532

/-! ## A282392.P16490116469751436485

`A189006(n)*A282399(A001844(n))`
-/

namespace A282392.P16490116469751436485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 n * A282399 (A001844 n).toNat

end

end A282392.P16490116469751436485

/-! ## A282392.P4382566513030494470

`A282399(A001844(n))*A333733(n)`
-/

namespace A282392.P4382566513030494470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 (A001844 n).toNat * A333733 n

end

end A282392.P4382566513030494470

/-! ## A282392.P12594713658282125920

`∑[A343380(n)]*A282399(A001844(n))`
-/

namespace A282392.P12594713658282125920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A282399 (A001844 n).toNat

end

end A282392.P12594713658282125920

/-!
# A282393: Number of nX2 0..1 arrays with no 1 equal to more than three of its king-move neighbors.

The programs for A282393, there is no canonical definition to state claims against.
-/

/-! ## A282393.P17082819411473885013

`A282399(∑[n+1]+2)`
-/

namespace A282393.P17082819411473885013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A282393.P17082819411473885013

/-! ## A282393.P4519285589172200080

`record[A282399(abs(A201163(n)))]`
-/

namespace A282393.P4519285589172200080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282393.P4519285589172200080

/-! ## A282393.P3707126436053216188

`record[A282399(A000096(∑{e}[n+1, #]+1))]`
-/

namespace A282393.P3707126436053216188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 (A000096 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282393.P3707126436053216188

/-!
# A282394: Number of nX3 0..1 arrays with no 1 equal to more than three of its king-move neighbors.

The programs for A282394, there is no canonical definition to state claims against.
-/

/-! ## A282394.P18348810950144439701

`A282399(∑[n+2]+4)`
-/

namespace A282394.P18348810950144439701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A282394.P18348810950144439701

/-! ## A282394.P11573511273577211807

`A282399(A167614(n+1))-A185284(n)`
-/

namespace A282394.P11573511273577211807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 (A167614 (n + 1)).toNat - A185284 n

end

end A282394.P11573511273577211807

/-! ## A282394.P814891215240475030

`lcm(A152848(n), A282399(A167614(n+1)))`
-/

namespace A282394.P814891215240475030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A152848 n) (A282399 (A167614 (n + 1)).toNat)

end

end A282394.P814891215240475030

/-! ## A282394.P5670440564419881326

`A282399(A167614(n+1))%A218285(n+1)`
-/

namespace A282394.P5670440564419881326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282399 (A167614 (n + 1)).toNat) (A218285 (n + 1))

end

end A282394.P5670440564419881326

/-! ## A282394.P8871012740630341728

`xor(A185284(n+2), A282399(A167614(n+1)))`
-/

namespace A282394.P8871012740630341728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (n + 2)) (A282399 (A167614 (n + 1)).toNat)

end

end A282394.P8871012740630341728

/-!
# A282395: Number of nX4 0..1 arrays with no 1 equal to more than three of its king-move neighbors.

The programs for A282395, there is no canonical definition to state claims against.
-/

/-! ## A282395.P13780088266433238955

`A282399(A374004(n+1))`
-/

namespace A282395.P13780088266433238955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 (A374004 (n + 1)).toNat

end

end A282395.P13780088266433238955

/-! ## A282395.P1601784546051931651

`A282399(A141214(n)+7)`
-/

namespace A282395.P1601784546051931651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 (A141214 n + 7).toNat

end

end A282395.P1601784546051931651

/-! ## A282395.P769736296588239074

`A282399(A052905(n)+9)`
-/

namespace A282395.P769736296588239074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 (A052905 n + 9).toNat

end

end A282395.P769736296588239074

/-! ## A282395.P17403907959719116050

`A282399(A055999(n)+10)`
-/

namespace A282395.P17403907959719116050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 (A055999 n + 10).toNat

end

end A282395.P17403907959719116050

/-! ## A282395.P15775845065044085609

`A282399(A167614(n+2)+1)`
-/

namespace A282395.P15775845065044085609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 (A167614 (n + 2) + 1).toNat

end

end A282395.P15775845065044085609

/-!
# A282396: Number of n X 5 0..1 arrays with no 1 equal to more than three of its king-move neighbors.

The programs for A282396, there is no canonical definition to state claims against.
-/

/-! ## A282396.P5846049121681204436

`A282399(A374005(n+1))`
-/

namespace A282396.P5846049121681204436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 (A374005 (n + 1)).toNat

end

end A282396.P5846049121681204436

/-! ## A282396.P10321117813378255742

`A282399(A155212(n)+13)`
-/

namespace A282396.P10321117813378255742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 (A155212 n + 13).toNat

end

end A282396.P10321117813378255742

/-! ## A282396.P17979737944899145954

`A282399(A056000(n)+15)`
-/

namespace A282396.P17979737944899145954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 (A056000 n + 15).toNat

end

end A282396.P17979737944899145954

/-! ## A282396.P1231347221132279553

`A282399(eq[6, A131818(n+1)])`
-/

namespace A282396.P1231347221132279553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282396.P1231347221132279553

/-! ## A282396.P17096698984632053311

`A282399(Δ[A264443(n)])`
-/

namespace A282396.P17096698984632053311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 (f1 (n + 1) - f1 n).toNat

end

end A282396.P17096698984632053311

/-!
# A282397: Number of nX6 0..1 arrays with no 1 equal to more than three of its king-move neighbors.

The programs for A282397, there is no canonical definition to state claims against.
-/

/-! ## A282397.P3804916928212187827

`A282399(A374007(n+1))`
-/

namespace A282397.P3804916928212187827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 (A374007 (n + 1)).toNat

end

end A282397.P3804916928212187827

/-! ## A282397.P8223615946382663182

`A282399(A056115(n)+21)`
-/

namespace A282397.P8223615946382663182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 (A056115 n + 21).toNat

end

end A282397.P8223615946382663182

/-! ## A282397.P17650008405901116990

`A282399(eq[7, A131818(n+1)])`
-/

namespace A282397.P17650008405901116990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282397.P17650008405901116990

/-! ## A282397.P16066263245138151203

`A282399(A052905(n+3))`
-/

namespace A282397.P16066263245138151203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 (A052905 (n + 3)).toNat

end

end A282397.P16066263245138151203

/-! ## A282397.P2878628737855921851

`A282399(eq[3, A219347(n)])`
-/

namespace A282397.P2878628737855921851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282397.P2878628737855921851

/-!
# A282398: Number of nX7 0..1 arrays with no 1 equal to more than three of its king-move neighbors.

The programs for A282398, there is no canonical definition to state claims against.
-/

/-! ## A282398.P13727876078801584981

`A282399(A374008(n+1))`
-/

namespace A282398.P13727876078801584981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 (A374008 (n + 1)).toNat

end

end A282398.P13727876078801584981

/-! ## A282398.P15551432971747391518

`A282399(eq[8, A131818(n+1)])`
-/

namespace A282398.P15551432971747391518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282398.P15551432971747391518

/-! ## A282398.P15655273606357760757

`A282399(eq[4, A219347(n)])`
-/

namespace A282398.P15655273606357760757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282398.P15655273606357760757

/-! ## A282398.P9581524692570331295

`A282399(eq[6, A193592(n)])`
-/

namespace A282398.P9581524692570331295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282398.P9581524692570331295

/-! ## A282398.P9462062014542387901

`A282399(eq[7, A200370(n+1)])`
-/

namespace A282398.P9462062014542387901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282399 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282398.P9462062014542387901

/-!
# A282399: T(n,k)=Number of nXk 0..1 arrays with no 1 equal to more than three of its king-move neighbors.

The programs for A282399, there is no canonical definition to state claims against.
-/

/-! ## A282399.P5359086221958928184

`A283130(n+1)+A058348(A173887(n))`
-/

namespace A282399.P5359086221958928184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283130 (n + 1) + A058348 (A173887 n).toNat

end

end A282399.P5359086221958928184

/-! ## A282399.P5541271231293650375

`A295716(n+1)+A058348(A173887(n))`
-/

namespace A282399.P5541271231293650375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (n + 1) + A058348 (A173887 n).toNat

end

end A282399.P5541271231293650375

/-! ## A282399.P17161917087974280123

`or(A010450(A172351(n)), A283130(n+1))`
-/

namespace A282399.P17161917087974280123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010450 (A172351 n).toNat) (A283130 (n + 1))

end

end A282399.P17161917087974280123

/-! ## A282399.P9538846355405694782

`A295716(n+1)+A217153(A055107(n+2))`
-/

namespace A282399.P9538846355405694782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (n + 1) + A217153 (A055107 (n + 2)).toNat

end

end A282399.P9538846355405694782

/-! ## A282399.P4221795008236897741

`A299661(n+1)+A299942(n+1)%A080970(A000129(n))`
-/

namespace A282399.P4221795008236897741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299661 (n + 1) + Int.tmod (A299942 (n + 1)) (A080970 (A000129 n).toNat)

end

end A282399.P4221795008236897741

