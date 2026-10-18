import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A159547: Smallest number b such that the number whose digits are n in base b is a skinny number.

The programs for A159547, there is no canonical definition to state claims against.
-/

/-! ## A159547.P1818646634687286603

`A352598(n+1)+A208879(A079218(n))`
-/

namespace A159547.P1818646634687286603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352598 (n + 1) + A208879 (A079218 n).toNat

end

end A159547.P1818646634687286603

/-! ## A159547.P15689972787854755954

`A352598(n+1)+A175685(A215136(n+1))`
-/

namespace A159547.P15689972787854755954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352598 (n + 1) + A175685 (A215136 (n + 1)).toNat

end

end A159547.P15689972787854755954

/-! ## A159547.P7953436518545557013

`A352598(n+1)+A030598((n+1)*Δ[n^3])`
-/

namespace A159547.P7953436518545557013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352598 (n + 1) + A030598 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A159547.P7953436518545557013

/-! ## A159547.P13390964435706734851

`A010054(A000220(n+1))+A003132(n+1)`
-/

namespace A159547.P13390964435706734851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A000220 (n + 1)).toNat + A003132 (n + 1)

end

end A159547.P13390964435706734851

/-! ## A159547.P17266818636111585523

`A352598(n+1)+A325988(A190167(2*(n+2)))`
-/

namespace A159547.P17266818636111585523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352598 (n + 1) + A325988 (A190167 (2 * (n + 2))).toNat

end

end A159547.P17266818636111585523

/-!
# A159551: a(n) = 101*n + 10.

The programs for A159551, the canonical program `A159551.P10438509804483078032` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159551 has offset 0).

The definition of A159551 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `101*n+10` (program `A159551.P10438509804483078032`, by `A159551.P10438509804483078032.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159551.P10438509804483078032

`101*n+10`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A159551

/-- `101*n+10` -/
def P10438509804483078032.Spec : Prop :=
  ∀ n, (P10438509804483078032.a n : ℤ) = A159551 n

theorem P10438509804483078032.correct : P10438509804483078032.Spec := by
  intro n
  simp only [A159551]

end A159551

/-!
# A159553: a(n) = Sum_{k=0..n} binomial(n,k) * gcd(n,k).

The programs for A159553, there is no canonical definition to state claims against.
-/

/-! ## A159553.P1613638877878603596

`A159068(n+1)+n+1`
-/

namespace A159553.P1613638877878603596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159068 (n + 1) + (n + 1 : ℤ)

end

end A159553.P1613638877878603596

/-! ## A159553.P14866981679700840297

`(n+1)*A159554(n+1)`
-/

namespace A159553.P14866981679700840297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A159554 (n + 1)

end

end A159553.P14866981679700840297

/-! ## A159553.P14018362974875180912

`(n+1)*(A159069(n+1)+1)`
-/

namespace A159553.P14018362974875180912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A159069 (n + 1) + 1)

end

end A159553.P14018362974875180912

/-! ## A159553.P3212172458664735057

`(n+1)*A020725(A159069(n+1))`
-/

namespace A159553.P3212172458664735057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A020725 (A159069 (n + 1)).toNat

end

end A159553.P3212172458664735057

/-!
# A159554: a(n) = A159553(n)/n.

The programs for A159554, there is no canonical definition to state claims against.
-/

/-! ## A159554.P17486129621723674390

`A159553(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A159554.P17486129621723674390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159553 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A159554.P17486129621723674390

/-! ## A159554.P17289574134505742982

`A159069(n+1)+1`
-/

namespace A159554.P17289574134505742982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159069 (n + 1) + 1

end

end A159554.P17289574134505742982

/-! ## A159554.P13160774853742600938

`A159068(n+1)/(n+1)+1`
-/

namespace A159554.P13160774853742600938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159068 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A159554.P13160774853742600938

/-! ## A159554.P12800328268310089974

`(n+1)^A033880(Δ[A130568(n)])*A159068(n+1)+1`
-/

namespace A159554.P12800328268310089974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130568 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A033880 (f1 (n + 1) - f1 n).toNat : ℤ) * (A159068 (n + 1) : ℚ) + 1

end

end A159554.P12800328268310089974

/-! ## A159554.P16011257445146923820

`A020725(A159069(n+1))`
-/

namespace A159554.P16011257445146923820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A159069 (n + 1)).toNat

end

end A159554.P16011257445146923820

/-!
# A159555: Numbers m where m^2 divides A159553(m), where A159553(m) = Sum_{k=0..m} binomial(m,k) * gcd(m,k).

The programs for A159555, there is no canonical definition to state claims against.
-/

/-! ## A159555.P12625567111653359916

`A078173(A205968(n))`
-/

namespace A159555.P12625567111653359916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078173 (A205968 n).toNat

end

end A159555.P12625567111653359916

/-!
# A159556: Numbers that are the sum of distinct Fibonacci primes.

The programs for A159556, there is no canonical definition to state claims against.
-/

/-! ## A159556.P14807972261337891338

`lt[A323186(∑[3*(n+1)+2]), 1]+1`
-/

namespace A159556.P14807972261337891338
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323186 (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A159556.P14807972261337891338

/-! ## A159556.P10537205263035200812

`A351831(A188015(n+2))`
-/

namespace A159556.P10537205263035200812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351831 (A188015 (n + 2)).toNat

end

end A159556.P10537205263035200812

/-! ## A159556.P1230018331452638774

`∑[A230643(A060611(n+2))]`
-/

namespace A159556.P1230018331452638774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230643 (A060611 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159556.P1230018331452638774

/-! ## A159556.P3913979555301360762

`∑[A374998(A100484(n+2))]`
-/

namespace A159556.P3913979555301360762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374998 (A100484 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159556.P3913979555301360762

/-! ## A159556.P16267848341087157676

`record[A078908(A050291(n+1))]`
-/

namespace A159556.P16267848341087157676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078908 (A050291 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159556.P16267848341087157676

/-!
# A159557: Number of elements in the mutation class of a quiver of type D_n.

The programs for A159557, there is no canonical definition to state claims against.
-/

/-! ## A159557.P7775432084482952508

`A003239(n+3)-A049084(A161201(n))`
-/

namespace A159557.P7775432084482952508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003239 (n + 3) - A049084 (A161201 n).toNat

end

end A159557.P7775432084482952508

/-! ## A159557.P8995198427955344733

`A003239(n+3)-A105570(A187054(2*n+1))`
-/

namespace A159557.P8995198427955344733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003239 (n + 3) - A105570 (A187054 (2 * n + 1)).toNat

end

end A159557.P8995198427955344733

/-!
# A159558: a(n) = 2^(n^2+n) * C(n-1 + 1/2^n, n) = [x^n] 1/(1 - 2^(n+1)*x)^(1/2^n).

The programs for A159558, there is no canonical definition to state claims against.
-/

/-! ## A159558.P17675539909701493005

`A001316(n)*A134097(n)`
-/

namespace A159558.P17675539909701493005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A134097 n

end

end A159558.P17675539909701493005

/-! ## A159558.P4302536395882453365

`(A038573(n)+1)*A134097(n)`
-/

namespace A159558.P4302536395882453365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038573 n + 1) * A134097 n

end

end A159558.P4302536395882453365

/-! ## A159558.P15391405572433066791

`A048896(2*n)*A134097(n)`
-/

namespace A159558.P15391405572433066791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (2 * n) * A134097 n

end

end A159558.P15391405572433066791

/-! ## A159558.P17033051779662583048

`gcd(8, A106184(n))*A134097(n)`
-/

namespace A159558.P17033051779662583048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 8 (A106184 n) : ℤ) * A134097 n

end

end A159558.P17033051779662583048

/-! ## A159558.P6748810823500429179

`A106184(n)*A134097(n)/A268433(n)`
-/

namespace A159558.P6748810823500429179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106184 n * A134097 n : ℚ) / (A268433 n : ℚ)

end

end A159558.P6748810823500429179

/-!
# A159560: Minimal recursive sequence beginning with 3 such that A001221(a(n)) = A001221(n).

The programs for A159560, there is no canonical definition to state claims against.
-/

/-! ## A159560.P16278516167516310832

`record[A183024(n+5)+A027750(n+1)]`
-/

namespace A159560.P16278516167516310832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183024 (n + 5) + A027750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159560.P16278516167516310832

/-! ## A159560.P13607269679354448468

`lt[A135220(n+1), A224976(A118302(2*(n+2)))]`
-/

namespace A159560.P13607269679354448468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224976 (A118302 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A159560.P13607269679354448468

/-! ## A159560.P4980660686661073885

`∑[A090822((A155212(n)+12)*A098763(n))]`
-/

namespace A159560.P4980660686661073885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 ((A155212 n + 12) * A098763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159560.P4980660686661073885

/-! ## A159560.P11147600012160511194

`lt[A098508(A033185(3*n+5)), A098508(2*n+1)]`
-/

namespace A159560.P11147600012160511194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098508 (A033185 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098508 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A159560.P11147600012160511194

/-!
# A159571: Fifth diagonal in Table A159572; previous diagonals are A000012, A000217, A000330 and A086602.

The programs for A159571, there is no canonical definition to state claims against.
-/

/-! ## A159571.P3094831898068912556

`A159572(A155212(n)+13)`
-/

namespace A159571.P3094831898068912556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159572 (A155212 n + 13).toNat

end

end A159571.P3094831898068912556

/-!
# A159578: 

The programs for A159578, there is no canonical definition to state claims against.
-/

/-! ## A159578.P6723760524678057014

`A002110(A051838(n+1))`
-/

namespace A159578.P6723760524678057014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A051838 (n + 1)).toNat

end

end A159578.P6723760524678057014

/-! ## A159578.P5130110050072584890

`A067111(A051838(n+1))*A140763(n+1)`
-/

namespace A159578.P5130110050072584890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067111 (A051838 (n + 1)).toNat * A140763 (n + 1)

end

end A159578.P5130110050072584890

/-!
# A159580: Integral quotients occur consecutively this many times (in sequence associated with A051838 and A116536).

The programs for A159580, there is no canonical definition to state claims against.
-/

/-! ## A159580.P7323454408624602660

`p?[lcm(A128920(n+1), A128920(n+4))%4]`
-/

namespace A159580.P7323454408624602660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A128920 (n + 1)) (A128920 (n + 4)) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A159580.P7323454408624602660

/-! ## A159580.P10003802802876026889

`A288106(A175789(3*n+5))+2`
-/

namespace A159580.P10003802802876026889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288106 (A175789 (3 * n + 5)).toNat + 2

end

end A159580.P10003802802876026889

/-! ## A159580.P817551889113946959

`p?[A069010(A164296(9*∑{d}[n+1, #]))]`
-/

namespace A159580.P817551889113946959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A164296 (9 * (∑ d ∈ Nat.divisors (f2 n), d))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159580.P817551889113946959

/-! ## A159580.P4538917071102205579

`gcd(n+1, A194598(A236936(n+9)))+1`
-/

namespace A159580.P4538917071102205579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A194598 (A236936 (n + 9)).toNat) + 1

end

end A159580.P4538917071102205579

/-! ## A159580.P7247271428637215761

`A143182(gcd(A130556(n+1), A156368(n)))`
-/

namespace A159580.P7247271428637215761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143182 (Int.gcd (A130556 (n + 1)) (A156368 n))

end

end A159580.P7247271428637215761

/-!
# A159582: Expansion of (1+6*x+x^2-2*x^3)/((x^2+2*x-1)*(x^2-2*x-1)), bisection is NSW numbers.

The programs for A159582, the canonical program `A159582.P6226825804534915431` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159582 has offset 0).

The definition of A159582 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+6x+x^2-2x^3)/(1-6x^2+x^4))` (program `A159582.P6226825804534915431`, by `A159582.P6226825804534915431.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159582.P6226825804534915431

`ogf((1+6x+x^2-2x^3)/(1-6x^2+x^4))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A159582

/-- `ogf((1+6x+x^2-2x^3)/(1-6x^2+x^4))` -/
def P6226825804534915431.Spec : Prop :=
  ∀ n, P6226825804534915431.a n = A159582 n

theorem P6226825804534915431.correct : P6226825804534915431.Spec := by
  intro n
  simp only [A159582]

end A159582

/-! ## A159582.P3032679351292986317

`6*a(n-2)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=7, a(3)=34`
-/

namespace A159582.P3032679351292986317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 7, 34] fun n a =>
  6 * a (n - 2) - a (n - 4)

end

end A159582.P3032679351292986317

namespace A159582

/-- `6*a(n-2)-a(n-4)` -/
def P3032679351292986317.Spec : Prop :=
  ∀ n, P3032679351292986317.a n = A159582 n

end A159582

/-! ## A159582.P6772771212734251629

`A002203(n+1)/gcd(2, n)`
-/

namespace A159582.P6772771212734251629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002203 (n + 1) : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A159582.P6772771212734251629

namespace A159582

/-- `A002203(n+1)/gcd(2, n)` -/
def P6772771212734251629.Spec : Prop :=
  ∀ n, P6772771212734251629.a n = (A159582 n : ℚ)

end A159582

/-! ## A159582.P8580026430915184274

`Δ[comp[3*n]]*A078057(n)`
-/

namespace A159582.P8580026430915184274
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A078057 n

end

end A159582.P8580026430915184274

namespace A159582

/-- `Δ[comp[3*n]]*A078057(n)` -/
def P8580026430915184274.Spec : Prop :=
  ∀ n, P8580026430915184274.a n = A159582 n

end A159582

/-! ## A159582.P4706313541902635350

`lcm(A000034(n), A078057(n))`
-/

namespace A159582.P4706313541902635350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A078057 n)

end

end A159582.P4706313541902635350

namespace A159582

/-- `lcm(A000034(n), A078057(n))` -/
def P4706313541902635350.Spec : Prop :=
  ∀ n, (P4706313541902635350.a n : ℤ) = A159582 n

end A159582

/-! ## A159582.P18278921621697971127

`∑[A052542(n)]*A000034(n)`
-/

namespace A159582.P18278921621697971127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000034 n

end

end A159582.P18278921621697971127

namespace A159582

/-- `∑[A052542(n)]*A000034(n)` -/
def P18278921621697971127.Spec : Prop :=
  ∀ n, P18278921621697971127.a n = A159582 n

end A159582

/-! ## A159582.P16598025524269452731

`A001333(n+1)*A000034(n)`
-/

namespace A159582.P16598025524269452731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) * A000034 n

end

end A159582.P16598025524269452731

namespace A159582

/-- `A001333(n+1)*A000034(n)` -/
def P16598025524269452731.Spec : Prop :=
  ∀ n, P16598025524269452731.a n = A159582 n

end A159582

/-! ## A159582.P15856018828507742757

`(A182780(n)-1)*A000034(n)`
-/

namespace A159582.P15856018828507742757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A182780 n - 1) * A000034 n

end

end A159582.P15856018828507742757

namespace A159582

/-- `(A182780(n)-1)*A000034(n)` -/
def P15856018828507742757.Spec : Prop :=
  ∀ n, P15856018828507742757.a n = A159582 n

end A159582

/-! ## A159582.P11233302348461683341

`Δ[A000129(n+1)]*A000034(n)`
-/

namespace A159582.P11233302348461683341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000034 n

end

end A159582.P11233302348461683341

namespace A159582

/-- `Δ[A000129(n+1)]*A000034(n)` -/
def P11233302348461683341.Spec : Prop :=
  ∀ n, P11233302348461683341.a n = A159582 n

end A159582

/-! ## A159582.P10893956050277848020

`∑[A052542(n)]*A176895(2*n)`
-/

namespace A159582.P10893956050277848020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A176895 (2 * n)

end

end A159582.P10893956050277848020

namespace A159582

/-- `∑[A052542(n)]*A176895(2*n)` -/
def P10893956050277848020.Spec : Prop :=
  ∀ n, P10893956050277848020.a n = A159582 n

end A159582

/-! ## A159582.P12708316740856429679

`A077985(n)+Δ[lcm(2, A077985(n))]`
-/

namespace A159582.P12708316740856429679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A077985 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A159582.P12708316740856429679

namespace A159582

/-- `A077985(n)+Δ[lcm(2, A077985(n))]` -/
def P12708316740856429679.Spec : Prop :=
  ∀ n, P12708316740856429679.a n = A159582 n

end A159582

/-! ## A159582.P8385521651451389572

`(A000035(n)+1)*A001333(n+1)`
-/

namespace A159582.P8385521651451389572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A001333 (n + 1)

end

end A159582.P8385521651451389572

namespace A159582

/-- `(A000035(n)+1)*A001333(n+1)` -/
def P8385521651451389572.Spec : Prop :=
  ∀ n, P8385521651451389572.a n = A159582 n

end A159582

/-! ## A159582.P1460266588935017772

`A001333(n+1)*A040001(n+1)`
-/

namespace A159582.P1460266588935017772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) * A040001 (n + 1)

end

end A159582.P1460266588935017772

namespace A159582

/-- `A001333(n+1)*A040001(n+1)` -/
def P1460266588935017772.Spec : Prop :=
  ∀ n, P1460266588935017772.a n = A159582 n

end A159582

/-! ## A159582.P7460162118753133627

`A001333(n+1)*A134451(n+1)`
-/

namespace A159582.P7460162118753133627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) * A134451 (n + 1)

end

end A159582.P7460162118753133627

namespace A159582

/-- `A001333(n+1)*A134451(n+1)` -/
def P7460162118753133627.Spec : Prop :=
  ∀ n, P7460162118753133627.a n = A159582 n

end A159582

/-! ## A159582.P9594789485384443037

`A002203(n+1)/A000034(n+1)`
-/

namespace A159582.P9594789485384443037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002203 (n + 1) : ℚ) / (A000034 (n + 1) : ℚ)

end

end A159582.P9594789485384443037

namespace A159582

/-- `A002203(n+1)/A000034(n+1)` -/
def P9594789485384443037.Spec : Prop :=
  ∀ n, P9594789485384443037.a n = (A159582 n : ℚ)

end A159582

/-! ## A159582.P6300882233877002561

`A002203(n+1)/(A059841(n)+1)`
-/

namespace A159582.P6300882233877002561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002203 (n + 1) : ℚ) / (A059841 n + 1 : ℚ)

end

end A159582.P6300882233877002561

namespace A159582

/-- `A002203(n+1)/(A059841(n)+1)` -/
def P6300882233877002561.Spec : Prop :=
  ∀ n, P6300882233877002561.a n = (A159582 n : ℚ)

end A159582

/-! ## A159582.P7865716240026163259

`A099425(n+1)/A000034(n+1)`
-/

namespace A159582.P7865716240026163259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099425 (n + 1) : ℚ) / (A000034 (n + 1) : ℚ)

end

end A159582.P7865716240026163259

namespace A159582

/-- `A099425(n+1)/A000034(n+1)` -/
def P7865716240026163259.Spec : Prop :=
  ∀ n, P7865716240026163259.a n = (A159582 n : ℚ)

end A159582

/-! ## A159582.P15796464105896651463

`A116558(2*n+1)+A000129(n)`
-/

namespace A159582.P15796464105896651463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116558 (2 * n + 1) + A000129 n

end

end A159582.P15796464105896651463

namespace A159582

/-- `A116558(2*n+1)+A000129(n)` -/
def P15796464105896651463.Spec : Prop :=
  ∀ n, P15796464105896651463.a n = A159582 n

end A159582

/-! ## A159582.P10734324069966460727

`A000034(n)*A002965(2*n+3)`
-/

namespace A159582.P10734324069966460727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A002965 (2 * n + 3)

end

end A159582.P10734324069966460727

namespace A159582

/-- `A000034(n)*A002965(2*n+3)` -/
def P10734324069966460727.Spec : Prop :=
  ∀ n, P10734324069966460727.a n = A159582 n

end A159582

/-! ## A159582.P8020594354510770334

`2*A041011(n+1)-A089499(n+1)`
-/

namespace A159582.P8020594354510770334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A041011 (n + 1) - A089499 (n + 1)

end

end A159582.P8020594354510770334

namespace A159582

/-- `2*A041011(n+1)-A089499(n+1)` -/
def P8020594354510770334.Spec : Prop :=
  ∀ n, P8020594354510770334.a n = A159582 n

end A159582

/-!
# A159583: Values of A110391(5n)/A110391(n).

The programs for A159583, the canonical program `A159583.P15546200439075153641` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159583 has offset 0).

The definition of A159583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159583.P15546200439075153641

`A110391(5*n)/A110391(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A159583

/-- `A110391(5*n)/A110391(n)` -/
def P15546200439075153641.Spec : Prop :=
  ∀ n, P15546200439075153641.a n = (A159583 n : ℚ)

end A159583

/-! ## A159583.P13769549846173561115

`A110391(A008587(n))/abs(3-A075150(n))`
-/

namespace A159583.P13769549846173561115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110391 (A008587 n).toNat : ℚ) / (|3 - A075150 n| : ℚ)

end

end A159583.P13769549846173561115

namespace A159583

/-- `A110391(A008587(n))/abs(3-A075150(n))` -/
def P13769549846173561115.Spec : Prop :=
  ∀ n, P13769549846173561115.a n = (A159583 n : ℚ)

end A159583

/-! ## A159583.P13805668620058065382

`A110391(A008587(n))/(A005248(n)-(-1)^n)`
-/

namespace A159583.P13805668620058065382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110391 (A008587 n).toNat : ℚ) / (A005248 n - (-1) ^ n : ℚ)

end

end A159583.P13805668620058065382

namespace A159583

/-- `A110391(A008587(n))/(A005248(n)-(-1)^n)` -/
def P13805668620058065382.Spec : Prop :=
  ∀ n, P13805668620058065382.a n = (A159583 n : ℚ)

end A159583

/-! ## A159583.P9159523629140385058

`A110391(A008587(n))/(A010684(n)+A004146(n))`
-/

namespace A159583.P9159523629140385058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110391 (A008587 n).toNat : ℚ) / (A010684 n + A004146 n : ℚ)

end

end A159583.P9159523629140385058

namespace A159583

/-- `A110391(A008587(n))/(A010684(n)+A004146(n))` -/
def P9159523629140385058.Spec : Prop :=
  ∀ n, P9159523629140385058.a n = (A159583 n : ℚ)

end A159583

/-! ## A159583.P17649958167189188649

`A110391(A008587(n))/(A081714(n)+A001519(n))`
-/

namespace A159583.P17649958167189188649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110391 (A008587 n).toNat : ℚ) / (A081714 n + A001519 n : ℚ)

end

end A159583.P17649958167189188649

namespace A159583

/-- `A110391(A008587(n))/(A081714(n)+A001519(n))` -/
def P17649958167189188649.Spec : Prop :=
  ∀ n, P17649958167189188649.a n = (A159583 n : ℚ)

end A159583

/-!
# A159584: Coefficients in expansion of eta(2z)^3*eta(6z)^3/theta(3z).

The programs for A159584, there is no canonical definition to state claims against.
-/

/-! ## A159584.P3877140710806767442

`A033999(A000129(n))*A257653(n)`
-/

namespace A159584.P3877140710806767442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A000129 n).toNat * A257653 n

end

end A159584.P3877140710806767442

/-! ## A159584.P4391810491401587307

`A011583(A135092(n))*A257653(n)`
-/

namespace A159584.P4391810491401587307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011583 (A135092 n).toNat * A257653 n

end

end A159584.P4391810491401587307

/-! ## A159584.P14453760589723008509

`A033999(A212134(n))*A257653(n)`
-/

namespace A159584.P14453760589723008509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A212134 n).toNat * A257653 n

end

end A159584.P14453760589723008509

/-! ## A159584.P13999402822277705150

`A257653(n)/A057077(A027187(3*n+2))`
-/

namespace A159584.P13999402822277705150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257653 n : ℚ) / (A057077 (A027187 (3 * n + 2)).toNat : ℚ)

end

end A159584.P13999402822277705150

/-!
# A159586: a(n) is the smallest number not yet used such that n*a(n) is a square, but n != a(n).

The programs for A159586, there is no canonical definition to state claims against.
-/

/-! ## A159586.P15468122210262131103

`A014681(A000188(n+1))²*A007913(n+1)`
-/

namespace A159586.P15468122210262131103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A000188 (n + 1)).toNat ^ 2 * A007913 (n + 1)

end

end A159586.P15468122210262131103

/-! ## A159586.P11943881208124326291

`gcd(A072905(n+1), A233583(A158071(n+1)))`
-/

namespace A159586.P11943881208124326291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072905 (n + 1)) (A233583 (A158071 (n + 1)).toNat)

end

end A159586.P11943881208124326291

/-! ## A159586.P11848049467553969797

`gcd(A072905(n+1), A304380(A077168(n)))`
-/

namespace A159586.P11848049467553969797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072905 (n + 1)) (A304380 (A077168 n).toNat)

end

end A159586.P11848049467553969797

/-! ## A159586.P8051021610367559501

`A072905(n+1)%A072905(A333652(2*(n+2)))`
-/

namespace A159586.P8051021610367559501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072905 (n + 1)) (A072905 (A333652 (2 * (n + 2))).toNat)

end

end A159586.P8051021610367559501

/-! ## A159586.P3627110695486461640

`gcd(A067722(n+1)+1+n, A000290(A000578(2*(n+1))))`
-/

namespace A159586.P3627110695486461640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067722 (n + 1) + 1 + (n : ℤ)) (A000290 (A000578 (2 * (n + 1))).toNat)

end

end A159586.P3627110695486461640

/-!
# A159592: G.f.: Sum_{n>=0} a(n)*x^n/2^(n(n-1)/2) = exp( Sum_{n>=1} A(x/2^n)^n*x^n/n ).

The programs for A159592, there is no canonical definition to state claims against.
-/

/-! ## A159592.P2740990791223982354

`xor(A028832(A001187(n)), A126443(n))`
-/

namespace A159592.P2740990791223982354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A028832 (A001187 n).toNat) (A126443 n)

end

end A159592.P2740990791223982354

/-! ## A159592.P52683409991686852

`xor(A126443(n), A196563(A120733(n)))`
-/

namespace A159592.P52683409991686852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A126443 n) (A196563 (A120733 n).toNat)

end

end A159592.P52683409991686852

/-!
# A159593: G.f.: A(x) = exp( Sum_{n>=1} A(3^n*x)^n * x^n/n ).

The programs for A159593, there is no canonical definition to state claims against.
-/

/-! ## A159593.P18300142194455581041

`A105107(∏[n!])-1`
-/

namespace A159593.P18300142194455581041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105107 (∏ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A159593.P18300142194455581041

/-!
# A159594: G.f.: A(x) = x*exp( Sum_{n>=1} [ D^n A(x) ]^n/n ), where differential operator D = x*d/dx.

The programs for A159594, there is no canonical definition to state claims against.
-/

/-! ## A159594.P15264236717249844946

`A306866((n+1)^(n-1))`
-/

namespace A159594.P15264236717249844946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306866 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A159594.P15264236717249844946

/-! ## A159594.P10261292243553006554

`A222251(or(n, A246527(n)))`
-/

namespace A159594.P10261292243553006554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (Int.lor (n : ℤ) (A246527 n)).toNat

end

end A159594.P10261292243553006554

/-!
# A159595: G.f.: A(x) = exp( Sum_{n>=1} [ Sum_{k>=1} sigma(k,n)*x^k ]^n/n ).

The programs for A159595, there is no canonical definition to state claims against.
-/

/-! ## A159595.P15429457179181453419

`floor(∏[log2(A240802(n+3))])`
-/

namespace A159595.P15429457179181453419
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A240802 (n + 3) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A159595.P15429457179181453419

/-! ## A159595.P7272578344110790849

`A157271(A076176(n))`
-/

namespace A159595.P7272578344110790849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A076176 n).toNat

end

end A159595.P7272578344110790849

/-!
# A159596: G.f.: A(x) = exp( Sum_{n>=1} [ D^n x/(1-x)^2 ]^n/n ), where differential operator D = x*d/dx.

The programs for A159596, there is no canonical definition to state claims against.
-/

/-! ## A159596.P13423309456359470217

`A279361(n)+A008616(A279358(n))`
-/

namespace A159596.P13423309456359470217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279361 n + A008616 (A279358 n).toNat

end

end A159596.P13423309456359470217

/-! ## A159596.P1637429926908230771

`A008619(A018080(n)*A293492(n))`
-/

namespace A159596.P1637429926908230771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A018080 n * A293492 n).toNat

end

end A159596.P1637429926908230771

/-!
# A159597: G.f.: A(x) = exp( Sum_{n>=1} [ D^n x/(1-x)^3 ]^n/n ), where differential operator D = x*d/dx.

The programs for A159597, there is no canonical definition to state claims against.
-/

/-! ## A159597.P17718374604894354246

`A329825(A091346(n)+A038499(n))`
-/

namespace A159597.P17718374604894354246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329825 (A091346 n + A038499 n).toNat

end

end A159597.P17718374604894354246

/-! ## A159597.P7623107744437728242

`A069321(n)+∑[A111894(A205596(n))]`
-/

namespace A159597.P7623107744437728242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111894 (A205596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069321 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159597.P7623107744437728242

/-!
# A159598: G.f.: A(x) = exp( Sum_{n>=1} [ D^n x(1+x)/(1-x)^3 ]^n/n ), where differential operator D = x*d/dx.

The programs for A159598, there is no canonical definition to state claims against.
-/

/-! ## A159598.P7004939454605249709

`A166098((n+1)^n)-n`
-/

namespace A159598.P7004939454605249709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166098 ((n + 1) ^ n) - (n : ℤ)

end

end A159598.P7004939454605249709

/-!
# A159599: E.g.f.: A(x) = exp( Sum_{n>=1} [ D^n exp(x) ]^n/n ), where differential operator D = x*d/dx.

The programs for A159599, there is no canonical definition to state claims against.
-/

/-! ## A159599.P9941286771142488947

`A136119(or(A005251(n), A230317(n)))`
-/

namespace A159599.P9941286771142488947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136119 (Int.lor (A005251 n) (A230317 n)).toNat

end

end A159599.P9941286771142488947

/-! ## A159599.P313260926353683141

`A136119(or(A089646(n+1), A230317(n)))`
-/

namespace A159599.P313260926353683141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136119 (Int.lor (A089646 (n + 1)) (A230317 n)).toNat

end

end A159599.P313260926353683141

