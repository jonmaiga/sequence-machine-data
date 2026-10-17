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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A266100: Number of nX7 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266100, there is no canonical definition to state claims against.
-/

/-! ## A266100.P3854331874406475591

`A266101(eq[4, A219347(n)])`
-/

namespace A266100.P3854331874406475591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266100.P3854331874406475591

/-! ## A266100.P12033980735248079645

`A266101(eq[5, A332954(n)])`
-/

namespace A266100.P12033980735248079645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266100.P12033980735248079645

/-! ## A266100.P9296997073722025523

`A266101(eq[6, A193592(n)])`
-/

namespace A266100.P9296997073722025523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266100.P9296997073722025523

/-! ## A266100.P1214254203813535328

`A266101(eq[7, A200370(n+1)])`
-/

namespace A266100.P1214254203813535328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266100.P1214254203813535328

/-! ## A266100.P7614987275343162361

`A266101(eq[10, A185782(n+1)])`
-/

namespace A266100.P7614987275343162361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266100.P7614987275343162361

/-!
# A266102: Number of 2Xn integer arrays with each element equal to the number of horizontal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266102, there is no canonical definition to state claims against.
-/

/-! ## A266102.P6019631065012851123

`A266101(∑[n+1]+2)`
-/

namespace A266102.P6019631065012851123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A266102.P6019631065012851123

/-! ## A266102.P9990520185467981374

`record[A266101(A286159(n+1)+2)]`
-/

namespace A266102.P9990520185467981374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (A286159 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266102.P9990520185467981374

/-! ## A266102.P16681572745962303714

`A266101(A000096(n)+3)%A027772(n)`
-/

namespace A266102.P16681572745962303714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266101 (A000096 n + 3).toNat) (A027772 (n + 11))

end

end A266102.P16681572745962303714

/-! ## A266102.P4838715719223410936

`lcm(A033999(n), A266101(A152950(n+2)-1))`
-/

namespace A266102.P4838715719223410936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A266101 (A152950 (n + 2) - 1).toNat)

end

end A266102.P4838715719223410936

/-! ## A266102.P6854770643918416315

`A001221(A045326(n+1))*A266101(A000096(n)+3)`
-/

namespace A266102.P6854770643918416315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A045326 (n + 1)).toNat * A266101 (A000096 n + 3).toNat

end

end A266102.P6854770643918416315

/-!
# A266103: Number of 3 X n integer arrays with each element equal to the number of horizontal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266103, there is no canonical definition to state claims against.
-/

/-! ## A266103.P12013357709231429620

`A266101(∑[n+2]+4)`
-/

namespace A266103.P12013357709231429620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A266103.P12013357709231429620

/-! ## A266103.P9058662393351109003

`A266101(A167614(n+1))^A178334(n)`
-/

namespace A266103.P9058662393351109003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266101 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A266103.P9058662393351109003

/-! ## A266103.P998495470214319761

`lcm(A033999(n), A266101(A152950(n+3)))`
-/

namespace A266103.P998495470214319761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A266101 (A152950 (n + 3)).toNat)

end

end A266103.P998495470214319761

/-! ## A266103.P16778009936464572658

`or(A000007(n), A266101(A167614(n+1)))`
-/

namespace A266103.P16778009936464572658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A266101 (A167614 (n + 1)).toNat)

end

end A266103.P16778009936464572658

/-! ## A266103.P3064241949876826955

`A266101(A167614(n+1))%A225137(n+1)`
-/

namespace A266103.P3064241949876826955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266101 (A167614 (n + 1)).toNat) (A225137 (n + 1))

end

end A266103.P3064241949876826955

/-!
# A266104: Number of 4Xn integer arrays with each element equal to the number of horizontal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266104, there is no canonical definition to state claims against.
-/

/-! ## A266104.P3474117893371283940

`A266101(A141214(n)+7)`
-/

namespace A266104.P3474117893371283940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (A141214 n + 7).toNat

end

end A266104.P3474117893371283940

/-! ## A266104.P17854175455893005549

`A266101(A052905(n)+9)`
-/

namespace A266104.P17854175455893005549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (A052905 n + 9).toNat

end

end A266104.P17854175455893005549

/-! ## A266104.P4673211899769228571

`A266101(A055999(n)+10)`
-/

namespace A266104.P4673211899769228571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (A055999 n + 10).toNat

end

end A266104.P4673211899769228571

/-! ## A266104.P7726521923071654232

`A266101(A167614(n+2)+1)`
-/

namespace A266104.P7726521923071654232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (A167614 (n + 2) + 1).toNat

end

end A266104.P7726521923071654232

/-! ## A266104.P14105332357177599062

`A266101(A166136(n+2)-2)`
-/

namespace A266104.P14105332357177599062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (A166136 (n + 2) - 2).toNat

end

end A266104.P14105332357177599062

/-!
# A266105: Number of 5Xn integer arrays with each element equal to the number of horizontal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266105, there is no canonical definition to state claims against.
-/

/-! ## A266105.P1093354611028468600

`A266101(A155212(n)+13)`
-/

namespace A266105.P1093354611028468600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (A155212 n + 13).toNat

end

end A266105.P1093354611028468600

/-! ## A266105.P10118093348864437387

`A266101(A056000(n)+15)`
-/

namespace A266105.P10118093348864437387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (A056000 n + 15).toNat

end

end A266105.P10118093348864437387

/-! ## A266105.P16352425636212658095

`A266101(eq[7, A066657(n)])`
-/

namespace A266105.P16352425636212658095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266105.P16352425636212658095

/-! ## A266105.P1071706410750149286

`A266101(eq[6, A131818(n+1)])`
-/

namespace A266105.P1071706410750149286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266105.P1071706410750149286

/-! ## A266105.P9498369410013854996

`A266101(eq[6, A135223(n+1)])`
-/

namespace A266105.P9498369410013854996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266105.P9498369410013854996

/-!
# A266106: Number of 6Xn integer arrays with each element equal to the number of horizontal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266106, there is no canonical definition to state claims against.
-/

/-! ## A266106.P16169685613149421640

`A266101(A166136(n+4))`
-/

namespace A266106.P16169685613149421640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (A166136 (n + 4)).toNat

end

end A266106.P16169685613149421640

/-! ## A266106.P16155331673546234700

`A266101(A056115(n)+21)`
-/

namespace A266106.P16155331673546234700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (A056115 n + 21).toNat

end

end A266106.P16155331673546234700

/-! ## A266106.P10954520967454483134

`A266101(A133263(n+5)+4)`
-/

namespace A266106.P10954520967454483134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (A133263 (n + 5) + 4).toNat

end

end A266106.P10954520967454483134

/-! ## A266106.P7069751312915859964

`A266101(eq[6, A130270(n+1)])`
-/

namespace A266106.P7069751312915859964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266106.P7069751312915859964

/-! ## A266106.P13177980991823391466

`A266101(eq[7, A131818(n+1)])`
-/

namespace A266106.P13177980991823391466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266106.P13177980991823391466

/-!
# A266107: Number of 7Xn integer arrays with each element equal to the number of horizontal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266107, there is no canonical definition to state claims against.
-/

/-! ## A266107.P10317879026827610844

`A266101(A056119(n)+28)`
-/

namespace A266107.P10317879026827610844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (A056119 n + 28).toNat

end

end A266107.P10317879026827610844

/-! ## A266107.P6788143399012954081

`A266101(eq[11, A066657(n)])`
-/

namespace A266107.P6788143399012954081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266107.P6788143399012954081

/-! ## A266107.P13237533931647907547

`A266101(A166136(n+5)+1)`
-/

namespace A266107.P13237533931647907547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (A166136 (n + 5) + 1).toNat

end

end A266107.P13237533931647907547

/-! ## A266107.P7401707532913948569

`A266101(A167499(n+5)+2)`
-/

namespace A266107.P7401707532913948569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (A167499 (n + 5) + 2).toNat

end

end A266107.P7401707532913948569

/-! ## A266107.P12909608311397117349

`A266101(eq[8, A131818(n+1)])`
-/

namespace A266107.P12909608311397117349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266107.P12909608311397117349

/-!
# A266108: Expansion of Product_{k>=1} (1 + (x + x^2)^k).

The programs for A266108, there is no canonical definition to state claims against.
-/

/-! ## A266108.P9291683186027308256

`A170961(A005246(n))+A011782(n)`
-/

namespace A266108.P9291683186027308256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170961 (A005246 n).toNat + A011782 n

end

end A266108.P9291683186027308256

/-! ## A266108.P1149879869323194536

`round(sqrt(A342085(4^n)))`
-/

namespace A266108.P1149879869323194536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A342085 (4 ^ n) : ℝ))

end

end A266108.P1149879869323194536

/-! ## A266108.P11998449408023759971

`floor(log(A083332(ceil(2^(n-1)))))`
-/

namespace A266108.P11998449408023759971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A083332 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat : ℝ)⌋

end

end A266108.P11998449408023759971

/-! ## A266108.P1948018371065255203

`A006670(A180717(n))`
-/

namespace A266108.P1948018371065255203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006670 (A180717 n).toNat

end

end A266108.P1948018371065255203

/-! ## A266108.P2839518734383659518

`A225687(A096971(n))`
-/

namespace A266108.P2839518734383659518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A096971 n).toNat

end

end A266108.P2839518734383659518

/-!
# A266109: a(n) = A087686(1+A188163(n)); second column of A265901, second row of A265903.

The programs for A266109, the canonical program `A266109.P11839070490572607826` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266109 has offset 1).

The definition of A266109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266109.P11839070490572607826

`A087686(n+2)+comp[A087686(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A266109

/-- `A087686(n+2)+comp[A087686(n+1)]` -/
def P11839070490572607826.Spec : Prop :=
  ∀ n, P11839070490572607826.a n = A266109 (n + 1)

theorem P11839070490572607826.correct : P11839070490572607826.Spec := by
  intro n
  simp only [A266109, Nat.add_sub_cancel]

end A266109

/-! ## A266109.P15358109036174488630

`A087686(A188163(n+1)+1)`
-/

namespace A266109.P15358109036174488630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (A188163 (n + 1) + 1).toNat

end

end A266109.P15358109036174488630

namespace A266109

/-- `A087686(A188163(n+1)+1)` -/
def P15358109036174488630.Spec : Prop :=
  ∀ n, P15358109036174488630.a n = A266109 (n + 1)

end A266109

/-! ## A266109.P11052845651234137950

`A266188(A188163(n+1)+1)+A188163(n+1)`
-/

namespace A266109.P11052845651234137950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266188 (A188163 (n + 1) + 1).toNat + A188163 (n + 1)

end

end A266109.P11052845651234137950

namespace A266109

/-- `A266188(A188163(n+1)+1)+A188163(n+1)` -/
def P11052845651234137950.Spec : Prop :=
  ∀ n, P11052845651234137950.a n = A266109 (n + 1)

end A266109

/-! ## A266109.P12350784988956641125

`A087686(A088359(n+1)+1-A051135(n+1))`
-/

namespace A266109.P12350784988956641125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (A088359 (n + 1) + (1 - A051135 (n + 1))).toNat

end

end A266109.P12350784988956641125

namespace A266109

/-- `A087686(A088359(n+1)+1-A051135(n+1))` -/
def P12350784988956641125.Spec : Prop :=
  ∀ n, P12350784988956641125.a n = A266109 (n + 1)

end A266109

/-! ## A266109.P17356655674386620313

`A266188(A088359(A188163(n+1)))`
-/

namespace A266109.P17356655674386620313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266188 (A088359 (A188163 (n + 1)).toNat).toNat

end

end A266109.P17356655674386620313

namespace A266109

/-- `A266188(A088359(A188163(n+1)))` -/
def P17356655674386620313.Spec : Prop :=
  ∀ n, P17356655674386620313.a n = A266109 (n + 1)

end A266109

/-! ## A266109.P12581801992100227985

`eq[2, A265332(n+1)]+1`
-/

namespace A266109.P12581801992100227985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A266109.P12581801992100227985

namespace A266109

/-- `eq[2, A265332(n+1)]+1` -/
def P12581801992100227985.Spec : Prop :=
  ∀ n, (P12581801992100227985.a n : ℤ) = A266109 (n + 1)

end A266109

/-! ## A266109.P6864040967174016207

`eq[2, A051135(n+2)]+2`
-/

namespace A266109.P6864040967174016207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051135 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A266109.P6864040967174016207

namespace A266109

/-- `eq[2, A051135(n+2)]+2` -/
def P6864040967174016207.Spec : Prop :=
  ∀ n, (P6864040967174016207.a n : ℤ) = A266109 (n + 1)

end A266109

/-! ## A266109.P15332020050453059027

`A080677(A267103(n+1)-1)`
-/

namespace A266109.P15332020050453059027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080677 (A267103 (n + 1) - 1).toNat

end

end A266109.P15332020050453059027

namespace A266109

/-- `A080677(A267103(n+1)-1)` -/
def P15332020050453059027.Spec : Prop :=
  ∀ n, P15332020050453059027.a n = A266109 (n + 1)

end A266109

/-! ## A266109.P15312892618205537818

`A267110(A267103(n+1))`
-/

namespace A266109.P15312892618205537818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267110 (A267103 (n + 1)).toNat

end

end A266109.P15312892618205537818

namespace A266109

/-- `A267110(A267103(n+1))` -/
def P15312892618205537818.Spec : Prop :=
  ∀ n, P15312892618205537818.a n = A266109 (n + 1)

end A266109

/-!
# A266110: If A082284(n) = 0, a(n) = 0, otherwise a(n) = 1 + a(A082284(n)), where A082284(n) = smallest number k such that k - d(k) = n, or 0 if no such number exists, and d(n) = the number of divisors of n (A000005).

The programs for A266110, there is no canonical definition to state claims against.
-/

/-! ## A266110.P12905315529668722733

`A266111(n)-1`
-/

namespace A266110.P12905315529668722733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266111 n - 1

end

end A266110.P12905315529668722733

/-! ## A266110.P6349295749020332320

`A023443(A266111(n))`
-/

namespace A266110.P6349295749020332320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A266111 n).toNat

end

end A266110.P6349295749020332320

/-! ## A266110.P17180509089310837492

`A065423(2*A266111(n))`
-/

namespace A266110.P17180509089310837492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A266111 n).toNat

end

end A266110.P17180509089310837492

/-! ## A266110.P9091165874022129168

`A155043(A266116(n))-A155043(n)`
-/

namespace A266110.P9091165874022129168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (A266116 n).toNat - A155043 n

end

end A266110.P9091165874022129168

/-! ## A266110.P16989114515915339022

`A266111(A082284(n))%A266111(n)`
-/

namespace A266110.P16989114515915339022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266111 (A082284 n).toNat) (A266111 n)

end

end A266110.P16989114515915339022

/-! ## A266110.P13261936021842593226

`A266139(A266111(n))%A152087(n+1)`
-/

namespace A266110.P13261936021842593226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266139 (A266111 n).toNat) (A152087 (n + 1))

end

end A266110.P13261936021842593226

/-!
# A266111: If A082284(n) = 0, a(n) = 1, otherwise a(n) = 1 + a(A082284(n)), where A082284(n) = smallest number k such that k - d(k) = n, or 0 if no such number exists, and d(n) = the number of divisors of n (A000005).

The programs for A266111, there is no canonical definition to state claims against.
-/

/-! ## A266111.P9582609216307594270

`1+A266110(n)`
-/

namespace A266111.P9582609216307594270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A266110 n

end

end A266111.P9582609216307594270

/-! ## A266111.P9250981043149726420

`A008619(2*A266110(n))`
-/

namespace A266111.P9250981043149726420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A266110 n).toNat

end

end A266111.P9250981043149726420

/-! ## A266111.P13551096629013789573

`A028242(2*A266110(n))`
-/

namespace A266111.P13551096629013789573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A266110 n).toNat

end

end A266111.P13551096629013789573

/-! ## A266111.P5565530166291309678

`A155043(A266116(n))+1-A155043(n)`
-/

namespace A266111.P5565530166291309678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (A266116 n).toNat + (1 - A155043 n)

end

end A266111.P5565530166291309678

/-! ## A266111.P424878710914788022

`1-(A060990(A266116(n))-A266110(n))`
-/

namespace A266111.P424878710914788022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A060990 (A266116 n).toNat - A266110 n)

end

end A266111.P424878710914788022

/-! ## A266111.P483656264015026563

`A001222(2*2^A266110(n))`
-/

namespace A266111.P483656264015026563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 * (2 : ℚ) ^ (A266110 n : ℤ))).toNat

end

end A266111.P483656264015026563

/-! ## A266111.P6610817966079323949

`A001222(A109044(2^A266110(n)))`
-/

namespace A266111.P6610817966079323949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A109044 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A266110 n : ℤ))).toNat).toNat

end

end A266111.P6610817966079323949

/-! ## A266111.P18328155985470874450

`1-(A289618(A059148(n))-A266110(n))`
-/

namespace A266111.P18328155985470874450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A289618 (A059148 n).toNat - A266110 n)

end

end A266111.P18328155985470874450

/-!
# A266112: Characteristic function for A266114 (numbers that are least siblings in A263267-tree).

The programs for A266112, there is no canonical definition to state claims against.
-/

/-! ## A266112.P3157809379127534693

`char[A082284(n)-1]`
-/

namespace A266112.P3157809379127534693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A266112.P3157809379127534693

/-! ## A266112.P1922746819328374857

`floor(1/A330738(n+1))`
-/

namespace A266112.P1922746819328374857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A330738 (n + 1) : ℚ)⌋

end

end A266112.P1922746819328374857

/-! ## A266112.P10089394470008189712

`char[A266114(n+1)-1]`
-/

namespace A266112.P10089394470008189712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266114 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A266112.P10089394470008189712

/-! ## A266112.P5591563214488633317

`round(A330738(n+1)^-A005563(n))`
-/

namespace A266112.P5591563214488633317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A330738 (n + 1) : ℚ) ^ (-A005563 n : ℤ))

end

end A266112.P5591563214488633317

/-! ## A266112.P10093226710617054221

`round(A330738(n+1)^-A110450(n))`
-/

namespace A266112.P10093226710617054221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A330738 (n + 1) : ℚ) ^ (-A110450 n : ℤ))

end

end A266112.P10093226710617054221

/-! ## A266112.P6479542817622123032

`A000007(n+1-A082284(A049820(n+1)))`
-/

namespace A266112.P6479542817622123032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n + 1 : ℤ) - A082284 (A049820 (n + 1)).toNat).toNat

end

end A266112.P6479542817622123032

/-! ## A266112.P17519510145542774641

`A000007(n+1-A266114(A266113(n+1)))`
-/

namespace A266112.P17519510145542774641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n + 1 : ℤ) - A266114 (A266113 (n + 1)).toNat).toNat

end

end A266112.P17519510145542774641

/-! ## A266112.P5921717787122434850

`A330738(n+1)^(1-A078329(A078329(n+1)+1))`
-/

namespace A266112.P5921717787122434850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330738 (n + 1) : ℚ) ^ (1 - A078329 (A078329 (n + 1) + 1).toNat : ℤ)

end

end A266112.P5921717787122434850

/-!
# A266113: a(n) = number of integers k <= n which are least siblings in A263267-tree (see A266114).

The programs for A266113, there is no canonical definition to state claims against.
-/

/-! ## A266113.P11697782753020088305

`∑[A266112(n+1)]`
-/

namespace A266113.P11697782753020088305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266113.P11697782753020088305

/-! ## A266113.P16631520599487009068

`∑[char[A082284(n)-1]]`
-/

namespace A266113.P16631520599487009068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266113.P16631520599487009068

/-! ## A266113.P9068393414369379496

`∑[floor(1/A330738(n+1))]`
-/

namespace A266113.P9068393414369379496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A330738 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266113.P9068393414369379496

/-! ## A266113.P18157159235441374463

`∑[char[A266114(n+1)-1]]`
-/

namespace A266113.P18157159235441374463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266114 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266113.P18157159235441374463

/-! ## A266113.P3612436124466079325

`∑[round(A330738(n+1)^-A005563(n))]`
-/

namespace A266113.P3612436124466079325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A330738 (n + 1) : ℚ) ^ (-A005563 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266113.P3612436124466079325

/-! ## A266113.P9774188210272109625

`∑[A000007(n+1-A082284(A049820(n+1)))]`
-/

namespace A266113.P9774188210272109625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n + 1 : ℤ) - A082284 (A049820 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266113.P9774188210272109625

/-!
# A266114: Least siblings in A263267-tree: numbers n for which there doesn't exist any k < n such that k - d(k) = n - d(n), where d(n) = A000005(n), the number of divisors of n.

The programs for A266114, there is no canonical definition to state claims against.
-/

/-! ## A266114.P10678801641377463611

`eq[1, A266112(n+1)]+1`
-/

namespace A266114.P10678801641377463611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266112 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A266114.P10678801641377463611

/-! ## A266114.P8611803935749572328

`eq[1, A330738(n+1)]+1`
-/

namespace A266114.P8611803935749572328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A266114.P8611803935749572328

/-! ## A266114.P14201471132191766535

`record[(n+1)*A266112(n+2)+1]`
-/

namespace A266114.P14201471132191766535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A266112 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266114.P14201471132191766535

/-! ## A266114.P2280298875597567314

`record[A082284(1-A000005(n+1)+n)]`
-/

namespace A266114.P2280298875597567314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (1 - A000005 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266114.P2280298875597567314

/-! ## A266114.P12595831243474804398

`filter[A319702(2*n+1), A266112(#)]`
-/

namespace A266114.P12595831243474804398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266112 (f1 j).toNat = 1) n)

end

end A266114.P12595831243474804398

/-! ## A266114.P5975727083612670656

`filter[A323161(2*n+1), A266112(#)]`
-/

namespace A266114.P5975727083612670656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266112 (f1 j).toNat = 1) n)

end

end A266114.P5975727083612670656

/-! ## A266114.P11012570202874257271

`filter[n+1, A266112(#)]`
-/

namespace A266114.P11012570202874257271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266112 (f1 j) = 1) n)

end

end A266114.P11012570202874257271

/-! ## A266114.P10787631294428600353

`record[A082284(A049820(n+1))]`
-/

namespace A266114.P10787631294428600353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (A049820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266114.P10787631294428600353

/-! ## A266114.P12545706371546625078

`eq[n, A028310(n)*A266112(A028310(n))]`
-/

namespace A266114.P12545706371546625078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A266112 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A266114.P12545706371546625078

/-!
# A266115: Numbers which have smaller siblings in A263267-tree: numbers n for which there exists some k < n such that k - d(k) = n - d(n), where d(n) = A000005(n), the number of divisors of n.

The programs for A266115, there is no canonical definition to state claims against.
-/

/-! ## A266115.P3487942323724428338

`comp[A082284(n)]`
-/

namespace A266115.P3487942323724428338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A266115.P3487942323724428338

/-! ## A266115.P17123606363112243679

`eq[0, A266112(n+1)]+1`
-/

namespace A266115.P17123606363112243679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266112 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A266115.P17123606363112243679

/-! ## A266115.P1617451451169884608

`lt[1, A330738(n+1)]+1`
-/

namespace A266115.P1617451451169884608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A266115.P1617451451169884608

/-! ## A266115.P7891650971210352329

`eq[0, A266112(A028310(n))]`
-/

namespace A266115.P7891650971210352329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266112 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A266115.P7891650971210352329

/-! ## A266115.P8785105238860554742

`A020725(eq[0, A266112(n+1)])`
-/

namespace A266115.P8785105238860554742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266115.P8785105238860554742

/-! ## A266115.P17480917780628882254

`lt[A082284(A049820(n+1)), n+1]+1`
-/

namespace A266115.P17480917780628882254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (A049820 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A266115.P17480917780628882254

/-!
# A266119: First differences of A265899.

The programs for A266119, there is no canonical definition to state claims against.
-/

/-! ## A266119.P15790622466305224458

`A265899(n+2)-A265899(n+1)`
-/

namespace A266119.P15790622466305224458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265899 (n + 2) - A265899 (n + 1)

end

end A266119.P15790622466305224458

/-! ## A266119.P17078782905912327990

`Δ[A265899(n+1)]`
-/

namespace A266119.P17078782905912327990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266119.P17078782905912327990

/-! ## A266119.P3845769543498738812

`Δ[record[A265899(A292266(n))]]`
-/

namespace A266119.P3845769543498738812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265899 (A292266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266119.P3845769543498738812

/-! ## A266119.P1109324964714530633

`A108971(A265899(n+2)%(A265899(n+1)+1)+1)`
-/

namespace A266119.P1109324964714530633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108971 (Int.tmod (A265899 (n + 2)) (A265899 (n + 1) + 1) + 1).toNat

end

end A266119.P1109324964714530633

/-! ## A266119.P7726313343987637070

`Δ[record[A265899(A134478(n))]]`
-/

namespace A266119.P7726313343987637070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265899 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266119.P7726313343987637070

/-!
# A266120: Local maxima of A265894 just before its descents: a(n) = A265894(A265899(n) - 1).

The programs for A266120, there is no canonical definition to state claims against.
-/

/-! ## A266120.P13142366272753809216

`A265894(A265899(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266120.P13142366272753809216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265894 (A265899 (n + 1) - 1).toNat

end

end A266120.P13142366272753809216

/-! ## A266120.P4316254016525755328

`A265894(∑[A266119(n+1)]-A266119(n+1))`
-/

namespace A266120.P4316254016525755328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265894 (∑ j ∈ Finset.range (n + 1), f1 j - A266119 (n + 1)).toNat

end

end A266120.P4316254016525755328

/-! ## A266120.P16689005746907473031

`A265894(lt[Δ[A265894(n)], 1])`
-/

namespace A266120.P16689005746907473031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265894 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265894 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A266120.P16689005746907473031

/-! ## A266120.P17419650484860293870

`A265894(∑[A196563((10*n)²)]-1)`
-/

namespace A266120.P17419650484860293870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 ((10 * n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265894 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A266120.P17419650484860293870

/-!
# A266123: Decrement by 1 all digits > 1 in factorial base representation of n and then shift it one digit right.

The programs for A266123, there is no canonical definition to state claims against.
-/

/-! ## A266123.P11169758467092523594

`A266193(n-A276008(A276009(n)))`
-/

namespace A266123.P11169758467092523594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266193 ((n : ℤ) - A276008 (A276009 n).toNat).toNat

end

end A266123.P11169758467092523594

/-! ## A266123.P3389803373874111745

`A276009(A257684(n))+A276008(A266193(n))`
-/

namespace A266123.P3389803373874111745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276009 (A257684 n).toNat + A276008 (A266193 n).toNat

end

end A266123.P3389803373874111745

/-! ## A266123.P17400176610351333941

`A225901(A266193(A225901(n)))`
-/

namespace A266123.P17400176610351333941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A266193 (A225901 n).toNat).toNat

end

end A266123.P17400176610351333941

/-! ## A266123.P7568616193781327306

`A273667(A275838(A266193(A273667(A275838(n)))))`
-/

namespace A266123.P7568616193781327306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273667 (A275838 (A266193 (A273667 (A275838 n).toNat).toNat).toNat).toNat

end

end A266123.P7568616193781327306

/-! ## A266123.P6826502588706078686

`A289831(floor(n/2)%A227590(n+1))`
-/

namespace A266123.P6826502588706078686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (Int.tmod ⌊(n : ℚ) / 2⌋ (A227590 (n + 1))).toNat

end

end A266123.P6826502588706078686

/-!
# A266124: Expansion of Product_{k>=1} (1 + (x+x^2)^k) / (1 - (x+x^2)^k).

The programs for A266124, there is no canonical definition to state claims against.
-/

/-! ## A266124.P6449202362290562602

`floor(sqrt(A255057(5^n)))`
-/

namespace A266124.P6449202362290562602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A255057 (5 ^ n))

end

end A266124.P6449202362290562602

/-! ## A266124.P16554459521837731184

`A102699(n+1)%p?[2^n-1]`
-/

namespace A266124.P16554459521837731184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102699 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A266124.P16554459521837731184

/-! ## A266124.P11378167632462386396

`A245473(A140320(n))`
-/

namespace A266124.P11378167632462386396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245473 (A140320 n).toNat

end

end A266124.P11378167632462386396

/-!
# A266125: Number of n X n integer arrays with each element equal to the number of horizontal, diagonal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266125, there is no canonical definition to state claims against.
-/

/-! ## A266125.P14184814068386730582

`A266131(∑[4*n]+1)`
-/

namespace A266125.P14184814068386730582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266125.P14184814068386730582

/-! ## A266125.P8929678819008802019

`record[A266131(A272267(n+1))]`
-/

namespace A266125.P8929678819008802019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266125.P8929678819008802019

/-! ## A266125.P1036527851193564851

`record[A266131(Δ[A079824(n+1)])]`
-/

namespace A266125.P1036527851193564851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266125.P1036527851193564851

/-!
# A266126: Number of n X 3 integer arrays with each element equal to the number of horizontal, diagonal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266126, there is no canonical definition to state claims against.
-/

/-! ## A266126.P1246904730004547427

`A266131(∑[n+3]+1)`
-/

namespace A266126.P1246904730004547427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266126.P1246904730004547427

/-! ## A266126.P15479263685074347995

`record[A266131(A198464(n+1))]`
-/

namespace A266126.P15479263685074347995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266126.P15479263685074347995

/-! ## A266126.P1760254973577100177

`A266131(Δ[A008778(n)])%A017152(n)`
-/

namespace A266126.P1760254973577100177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266131 (f1 (n + 1) - f1 n).toNat) (A017152 n)

end

end A266126.P1760254973577100177

/-! ## A266126.P16148383325927724352

`A266131(A034856(n+2))*A270061(n)`
-/

namespace A266126.P16148383325927724352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A034856 (n + 2)).toNat * A270061 n

end

end A266126.P16148383325927724352

/-! ## A266126.P15687764835537264321

`A266131(A034856(n+2))%A233339(n+1)`
-/

namespace A266126.P15687764835537264321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266131 (A034856 (n + 2)).toNat) (A233339 (n + 1))

end

end A266126.P15687764835537264321

/-!
# A266127: Number of n X 4 integer arrays with each element equal to the number of horizontal, diagonal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266127, there is no canonical definition to state claims against.
-/

/-! ## A266127.P16246880162230135953

`A266131(A141214(n+1))`
-/

namespace A266127.P16246880162230135953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A141214 (n + 1)).toNat

end

end A266127.P16246880162230135953

/-! ## A266127.P17389050110182860691

`A266131(A027379(n+2))`
-/

namespace A266127.P17389050110182860691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A027379 (n + 2)).toNat

end

end A266127.P17389050110182860691

/-! ## A266127.P12980191096106039420

`A266131(A055998(n+2))`
-/

namespace A266127.P12980191096106039420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A055998 (n + 2)).toNat

end

end A266127.P12980191096106039420

/-! ## A266127.P8886703032123565774

`A266131(A155212(n)+5)`
-/

namespace A266127.P8886703032123565774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A155212 n + 5).toNat

end

end A266127.P8886703032123565774

/-! ## A266127.P5177781165205227426

`A266131(A056000(n)+7)`
-/

namespace A266127.P5177781165205227426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A056000 n + 7).toNat

end

end A266127.P5177781165205227426

/-!
# A266128: Number of nX5 integer arrays with each element equal to the number of horizontal, diagonal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266128, there is no canonical definition to state claims against.
-/

/-! ## A266128.P3557491411121373192

`A266131(Δ[A264443(n)])`
-/

namespace A266128.P3557491411121373192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (f1 (n + 1) - f1 n).toNat

end

end A266128.P3557491411121373192

/-! ## A266128.P677028445472760388

`A266131(A046691(n+3))`
-/

namespace A266128.P677028445472760388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A046691 (n + 3)).toNat

end

end A266128.P677028445472760388

/-! ## A266128.P12704391267189578772

`A266131(A056115(n)+11)`
-/

namespace A266128.P12704391267189578772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A056115 n + 11).toNat

end

end A266128.P12704391267189578772

/-! ## A266128.P6378225688074198053

`A266131(eq[2, A092921(n)])`
-/

namespace A266128.P6378225688074198053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266128.P6378225688074198053

/-! ## A266128.P13396334825986470602

`A266131(eq[2, A098950(n)])`
-/

namespace A266128.P13396334825986470602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266128.P13396334825986470602

/-!
# A266129: Number of nX6 integer arrays with each element equal to the number of horizontal, diagonal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266129, there is no canonical definition to state claims against.
-/

/-! ## A266129.P8424603451617769668

`A266131(A052905(n+3))`
-/

namespace A266129.P8424603451617769668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A052905 (n + 3)).toNat

end

end A266129.P8424603451617769668

/-! ## A266129.P15720016019719701861

`A266131(A168105(n)-5)`
-/

namespace A266129.P15720016019719701861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A168105 n - 5).toNat

end

end A266129.P15720016019719701861

/-! ## A266129.P1692976292839164574

`A266131(A056119(n)+16)`
-/

namespace A266129.P1692976292839164574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A056119 n + 16).toNat

end

end A266129.P1692976292839164574

/-! ## A266129.P13908821564364184083

`A266131(eq[3, A219347(n)])`
-/

namespace A266129.P13908821564364184083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266129.P13908821564364184083

/-!
# A266130: Number of nX7 integer arrays with each element equal to the number of horizontal, diagonal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266130, there is no canonical definition to state claims against.
-/

/-! ## A266130.P3654816540556173835

`A266131(A055999(n+4))`
-/

namespace A266130.P3654816540556173835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A055999 (n + 4)).toNat

end

end A266130.P3654816540556173835

/-! ## A266130.P14162175317521256921

`A266131(eq[4, A219347(n)])`
-/

namespace A266130.P14162175317521256921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266130.P14162175317521256921

/-! ## A266130.P2549269260796966493

`A266131(eq[6, A193592(n)])`
-/

namespace A266130.P2549269260796966493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266130.P2549269260796966493

/-!
# A266132: Number of 2Xn integer arrays with each element equal to the number of horizontal, diagonal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266132, there is no canonical definition to state claims against.
-/

/-! ## A266132.P1340200146496898796

`A266131(∑[n+1]+2)`
-/

namespace A266132.P1340200146496898796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A266132.P1340200146496898796

/-! ## A266132.P1179169384967968811

`record[A266131(A278512(n+4))]`
-/

namespace A266132.P1179169384967968811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A278512 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266132.P1179169384967968811

/-! ## A266132.P11435355440050534054

`record[A132013(n)*A266131(n+3)]`
-/

namespace A266132.P11435355440050534054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132013 n * A266131 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266132.P11435355440050534054

/-! ## A266132.P6877597815661967525

`record[gcd(A097854(n), A266131(n+1))]`
-/

namespace A266132.P6877597815661967525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097854 n) (A266131 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266132.P6877597815661967525

/-! ## A266132.P16341642562654507277

`record[A266131(n+3)/A075501(n+1)]`
-/

namespace A266132.P16341642562654507277
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266131 (n + 3) : ℚ) / (A075501 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266132.P16341642562654507277

/-!
# A266133: Number of 3Xn integer arrays with each element equal to the number of horizontal, diagonal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266133, there is no canonical definition to state claims against.
-/

/-! ## A266133.P17422079532345244147

`A266131(∑[n+2]+4)`
-/

namespace A266133.P17422079532345244147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A266133.P17422079532345244147

/-! ## A266133.P16114160949396931851

`A266131(A167614(n+1))%((8*n+4)^4)`
-/

namespace A266133.P16114160949396931851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266131 (A167614 (n + 1)).toNat) ((8 * n + 4) ^ 4 : ℤ)

end

end A266133.P16114160949396931851

/-! ## A266133.P9766629232406466259

`A266131(A167614(n+1))+A011731(n)`
-/

namespace A266133.P9766629232406466259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A167614 (n + 1)).toNat + A011731 n

end

end A266133.P9766629232406466259

/-! ## A266133.P2576777637313311535

`A266131(A167614(n+1))+A011738(n)`
-/

namespace A266133.P2576777637313311535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A167614 (n + 1)).toNat + A011738 n

end

end A266133.P2576777637313311535

/-! ## A266133.P13517167614952669786

`A266131(A167614(n+1))+A025444(n)`
-/

namespace A266133.P13517167614952669786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A167614 (n + 1)).toNat + A025444 n

end

end A266133.P13517167614952669786

/-!
# A266134: Number of 4Xn integer arrays with each element equal to the number of horizontal, diagonal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266134, there is no canonical definition to state claims against.
-/

/-! ## A266134.P17081950480324749629

`A266131(∑[n+3]+7)`
-/

namespace A266134.P17081950480324749629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A266134.P17081950480324749629

/-! ## A266134.P17067019850377301230

`A266131(A167614(n+2)+1)+char[A030656(n+4)]`
-/

namespace A266134.P17067019850377301230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030656 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A266134.P17067019850377301230

/-! ## A266134.P4749967939689842853

`A266131(A167614(n+2)+1)+char[A000040(n+5)]`
-/

namespace A266134.P4749967939689842853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A266134.P4749967939689842853

/-! ## A266134.P3259316339922435609

`A266131(A167614(n+2)+1)+char[A005602(2*(n+2))]`
-/

namespace A266134.P3259316339922435609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005602 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A266134.P3259316339922435609

/-! ## A266134.P11681447200811077200

`A266131(A167614(n+2)+1)+char[A089658(2*(n+2))]`
-/

namespace A266134.P11681447200811077200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089658 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A266134.P11681447200811077200

/-!
# A266135: Number of 5Xn integer arrays with each element equal to the number of horizontal, diagonal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266135, there is no canonical definition to state claims against.
-/

/-! ## A266135.P1593289914551536652

`A266131(A167499(n+3))`
-/

namespace A266135.P1593289914551536652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A167499 (n + 3)).toNat

end

end A266135.P1593289914551536652

/-! ## A266135.P15668650401261587897

`A266131(A155212(n)+13)`
-/

namespace A266135.P15668650401261587897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A155212 n + 13).toNat

end

end A266135.P15668650401261587897

/-! ## A266135.P4778465547078141781

`A266131(A056000(n)+15)`
-/

namespace A266135.P4778465547078141781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A056000 n + 15).toNat

end

end A266135.P4778465547078141781

/-! ## A266135.P14921765755196427146

`A266131(eq[7, A066657(n)])`
-/

namespace A266135.P14921765755196427146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266135.P14921765755196427146

/-! ## A266135.P18295104317242148965

`A266131(A145018(n+5)+1)`
-/

namespace A266135.P18295104317242148965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A145018 (n + 5) + 1).toNat

end

end A266135.P18295104317242148965

/-!
# A266136: Number of 6Xn integer arrays with each element equal to the number of horizontal, diagonal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266136, there is no canonical definition to state claims against.
-/

/-! ## A266136.P10197229062356597209

`A266131(A166136(n+4))`
-/

namespace A266136.P10197229062356597209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A166136 (n + 4)).toNat

end

end A266136.P10197229062356597209

/-! ## A266136.P4903262835933980423

`A266131(A056115(n)+21)`
-/

namespace A266136.P4903262835933980423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A056115 n + 21).toNat

end

end A266136.P4903262835933980423

/-! ## A266136.P10151047414660912318

`A266131(A167487(n+4)-1)`
-/

namespace A266136.P10151047414660912318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A167487 (n + 4) - 1).toNat

end

end A266136.P10151047414660912318

/-! ## A266136.P7658838050834377010

`A266131(A167614(n+4)+3)`
-/

namespace A266136.P7658838050834377010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A167614 (n + 4) + 3).toNat

end

end A266136.P7658838050834377010

/-! ## A266136.P13867369650562690425

`A266131(A000217(n+5)+6)`
-/

namespace A266136.P13867369650562690425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266131 (A000217 (n + 5) + 6).toNat

end

end A266136.P13867369650562690425

/-!
# A266137: Expansion of Product_{k>=1} 1/(1 - k*(x^(2*k-1))).

The programs for A266137, there is no canonical definition to state claims against.
-/

/-! ## A266137.P4532078630886364184

`A338466(A300301(n))-A000065(A238708(n))`
-/

namespace A266137.P4532078630886364184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338466 (A300301 n).toNat - A000065 (A238708 n).toNat

end

end A266137.P4532078630886364184

/-! ## A266137.P5063340878773308647

`A230877(A261746(n+1))`
-/

namespace A266137.P5063340878773308647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 (A261746 (n + 1)).toNat

end

end A266137.P5063340878773308647

/-! ## A266137.P3304253649882080159

`A001462(A001462(A204858(n)²))`
-/

namespace A266137.P3304253649882080159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A001462 (A204858 n ^ 2).toNat).toNat

end

end A266137.P3304253649882080159

/-! ## A266137.P17096707204505594633

`A300300(n)+A294936(A041863(n))`
-/

namespace A266137.P17096707204505594633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300300 n + A294936 (A041863 n).toNat

end

end A266137.P17096707204505594633

/-! ## A266137.P12972163383909428004

`A338006(A206268(n))+A078134(A059531(n+1))`
-/

namespace A266137.P12972163383909428004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338006 (A206268 n).toNat + A078134 (A059531 (n + 1)).toNat

end

end A266137.P12972163383909428004

/-!
# A266138: Expansion of Product_{k>=1} 1/(1 - k*(x^(2*k+1))).

The programs for A266138, there is no canonical definition to state claims against.
-/

/-! ## A266138.P4179932162144935626

`or(A026816(A077168(n)), A263150(n))`
-/

namespace A266138.P4179932162144935626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026816 (A077168 n).toNat) (A263150 n)

end

end A266138.P4179932162144935626

/-! ## A266138.P6909581350015408836

`or(A005088(A285261(n+1)), A263150(n))`
-/

namespace A266138.P6909581350015408836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005088 (A285261 (n + 1)).toNat) (A263150 n)

end

end A266138.P6909581350015408836

/-! ## A266138.P2644125690119889232

`A263150(A085978(A215328(n))+n)`
-/

namespace A266138.P2644125690119889232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263150 (A085978 (A215328 n).toNat + (n : ℤ)).toNat

end

end A266138.P2644125690119889232

/-! ## A266138.P5183522657011612248

`or(A170956(A003714(n)), A263150(n))`
-/

namespace A266138.P5183522657011612248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A170956 (A003714 n).toNat) (A263150 n)

end

end A266138.P5183522657011612248

/-! ## A266138.P15413740897884647995

`or(A263150(n), A316869(A286224(n)²))`
-/

namespace A266138.P15413740897884647995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A263150 n) (A316869 (A286224 n ^ 2).toNat)

end

end A266138.P15413740897884647995

/-!
# A266139: Volcano palindromes: palindromes not in A110784 such that removing one digit will result in a term in A110784.

The programs for A266139, there is no canonical definition to state claims against.
-/

/-! ## A266139.P5848618428883759959

`∩[A056142(n), A084383(n)]`
-/

namespace A266139.P5848618428883759959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084383 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266139.P5848618428883759959

/-! ## A266139.P15906182474913313941

`filter[A393807(n+1), A136522(#)]`
-/

namespace A266139.P15906182474913313941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A266139.P15906182474913313941

/-! ## A266139.P7407083230476657432

`filter[A393807(n+1), A196368(#)]`
-/

namespace A266139.P7407083230476657432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A266139.P7407083230476657432

/-! ## A266139.P13249278193032981909

`∩[A032865(n+1), A056142(n)]`
-/

namespace A266139.P13249278193032981909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266139.P13249278193032981909

/-! ## A266139.P14801755772651368310

`∩[A050783(n+1), A084383(n)]`
-/

namespace A266139.P14801755772651368310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084383 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266139.P14801755772651368310

/-! ## A266139.P14309036903705728588

`∩[A393807(n+1), A084383(n)]`
-/

namespace A266139.P14309036903705728588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084383 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266139.P14309036903705728588

/-! ## A266139.P1503807784765418296

`∩[A032865(n+1), A393807(n+1)]`
-/

namespace A266139.P1503807784765418296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266139.P1503807784765418296

/-!
# A266141: Number of n-digit primes in which n-1 of the digits are 2's.

The programs for A266141, there is no canonical definition to state claims against.
-/

/-! ## A266141.P11026500612420548994

`A182425(Δ[A182410(n)+A001013(n+1)])`
-/

namespace A266141.P11026500612420548994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182410 n + A001013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182425 (f1 (n + 1) - f1 n).toNat

end

end A266141.P11026500612420548994

/-! ## A266141.P16737685339250859835

`A198954(A034008(n))+A080813(n+1)`
-/

namespace A266141.P16737685339250859835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (A034008 n).toNat + A080813 (n + 1)

end

end A266141.P16737685339250859835

/-! ## A266141.P10130632596795630469

`A065828(3*n+5)+A046145(A024450(n+1))`
-/

namespace A266141.P10130632596795630469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065828 (3 * n + 5) + A046145 (A024450 (n + 1)).toNat

end

end A266141.P10130632596795630469

/-!
# A266144: Number of n-digit primes in which n-1 of the digits are 5's.

The programs for A266144, there is no canonical definition to state claims against.
-/

/-! ## A266144.P12888209942180093760

`A038800(∑[n]*A328596(2*(n+1)))`
-/

namespace A266144.P12888209942180093760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A328596 (2 * (n + 1))).toNat

end

end A266144.P12888209942180093760

/-! ## A266144.P15422379412677502984

`val(A258694(n), A056608(A048578(n)))`
-/

namespace A266144.P15422379412677502984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A258694 n).toNat (A056608 (A048578 n).toNat).toNat

end

end A266144.P15422379412677502984

/-!
# A266147: Number of n-digit primes in which n-1 of the digits are 8's.

The programs for A266147, there is no canonical definition to state claims against.
-/

/-! ## A266147.P17763709581759242708

`A038800(A126646(n)-A055807(n))`
-/

namespace A266147.P17763709581759242708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (A126646 n - A055807 n).toNat

end

end A266147.P17763709581759242708

/-! ## A266147.P18090370387614829306

`A038800(xor(A055807(n), A126646(n)))`
-/

namespace A266147.P18090370387614829306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (Int.xor (A055807 n) (A126646 n)).toNat

end

end A266147.P18090370387614829306

/-! ## A266147.P14753674801144733852

`A038800(lcm(A123675(n+1), A289846(n)))`
-/

namespace A266147.P14753674801144733852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (Int.lcm (A123675 (n + 1)) (A289846 n))

end

end A266147.P14753674801144733852

/-!
# A266149: Number of n-digit primes that consist of at least n-1 copies of some decimal digit.

The programs for A266149, there is no canonical definition to state claims against.
-/

/-! ## A266149.P5596144618456016939

`A385280(n+1)+A010051(A025192(n))`
-/

namespace A266149.P5596144618456016939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385280 (n + 1) + A010051 (A025192 n).toNat

end

end A266149.P5596144618456016939

/-! ## A266149.P1140449598148485066

`A385280(n+1)+A307742(A385254(n+2))`
-/

namespace A266149.P1140449598148485066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385280 (n + 1) + A307742 (A385254 (n + 2)).toNat

end

end A266149.P1140449598148485066

/-! ## A266149.P4497700119384448127

`A385280(n+1)+A010051(A013989(n))`
-/

namespace A266149.P4497700119384448127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385280 (n + 1) + A010051 (A013989 n).toNat

end

end A266149.P4497700119384448127

/-! ## A266149.P17641695475119542157

`A385280(n+1)+A010051(A054119(n))`
-/

namespace A266149.P17641695475119542157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385280 (n + 1) + A010051 (A054119 n).toNat

end

end A266149.P17641695475119542157

/-!
# A266150: Take the binary representation of n, increase each run of 0's by one 0 if the length of run is odd, otherwise, if length of run is even, remove one 0. a(n) is the decimal equivalent of the result.

The programs for A266150, there is no canonical definition to state claims against.
-/

/-! ## A266150.P18214434248835336937

`A162853(A266151(n))`
-/

namespace A266150.P18214434248835336937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162853 (A266151 n).toNat

end

end A266150.P18214434248835336937

/-!
# A266151: Take the binary representation of n, increase each run of 1's by one 1 if the length of run is odd, otherwise, if length of run is even, remove one 1. a(n) is the decimal equivalent of the result.

The programs for A266151, there is no canonical definition to state claims against.
-/

/-! ## A266151.P15292966874000539967

`A162853(A266150(n))`
-/

namespace A266151.P15292966874000539967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162853 (A266150 n).toNat

end

end A266151.P15292966874000539967

/-!
# A266154: Inverse permutation to A266089.

The programs for A266154, there is no canonical definition to state claims against.
-/

/-! ## A266154.P7619277123185868929

`A266089(A032513(n)^A291168(n)²)`
-/

namespace A266154.P7619277123185868929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266089 (SequenceMachineLib.roundAway ((A032513 n : ℚ) ^ (A291168 n ^ 2 : ℤ))).toNat

end

end A266154.P7619277123185868929

/-!
# A266155: Triangle read by rows giving successive states of cellular automaton generated by "Rule 19" initiated with a single ON (black) cell.

The programs for A266155, the canonical program `A266155.P15383333705459464585` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266155 has offset 0).

The definition of A266155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266155.P13443839198836167535

`(floor(sqrt(n))%2)^n-char[2]`
-/

namespace A266155.P13443839198836167535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((Nat.sqrt n % 2) ^ n : ℕ) : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266155.P13443839198836167535

namespace A266155

/-- `(floor(sqrt(n))%2)^n-char[2]` -/
def P13443839198836167535.Spec : Prop :=
  ∀ n, P13443839198836167535.a n = A266155 n

end A266155

/-! ## A266155.P8540084552418958024

`((comp[2*(abs(1-∑[n])+1)]+1)%2+n)%2`
-/

namespace A266155.P8540084552418958024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (|1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)| + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) % 2 + n) % 2

end

end A266155.P8540084552418958024

namespace A266155

/-- `((comp[2*(abs(1-∑[n])+1)]+1)%2+n)%2` -/
def P8540084552418958024.Spec : Prop :=
  ∀ n, (P8540084552418958024.a n : ℤ) = A266155 n

end A266155

/-! ## A266155.P4708875238862008465

`A266434(n)-char[2]`
-/

namespace A266155.P4708875238862008465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266434 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266155.P4708875238862008465

namespace A266155

/-- `A266434(n)-char[2]` -/
def P4708875238862008465.Spec : Prop :=
  ∀ n, P4708875238862008465.a n = A266155 n

end A266155

/-! ## A266155.P15383333705459464585

`A266377(xor(n, a(n-1)))` with `a(0)=1, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A266155

/-- `A266377(xor(n, a(n-1)))` -/
def P15383333705459464585.Spec : Prop :=
  ∀ n, P15383333705459464585.a n = A266155 n

theorem P15383333705459464585.correct : P15383333705459464585.Spec := by
  intro n
  simp only [A266155]

end A266155

/-! ## A266155.P7571816335393730859

`A266377(A064429(n))`
-/

namespace A266155.P7571816335393730859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266377 (A064429 n).toNat

end

end A266155.P7571816335393730859

namespace A266155

/-- `A266377(A064429(n))` -/
def P7571816335393730859.Spec : Prop :=
  ∀ n, P7571816335393730859.a n = A266155 n

end A266155

/-! ## A266155.P7105079736678513462

`A266377(A080412(n))`
-/

namespace A266155.P7105079736678513462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266377 (A080412 n).toNat

end

end A266155.P7105079736678513462

namespace A266155

/-- `A266377(A080412(n))` -/
def P7105079736678513462.Spec : Prop :=
  ∀ n, P7105079736678513462.a n = A266155 n

end A266155

/-! ## A266155.P295974093744506067

`A266377(A175028(n+1))`
-/

namespace A266155.P295974093744506067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266377 (A175028 (n + 1)).toNat

end

end A266155.P295974093744506067

namespace A266155

/-- `A266377(A175028(n+1))` -/
def P295974093744506067.Spec : Prop :=
  ∀ n, P295974093744506067.a n = A266155 n

end A266155

/-! ## A266155.P14537259207065329452

`A266434(A166926(n)+n)`
-/

namespace A266155.P14537259207065329452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266434 (A166926 n + (n : ℤ)).toNat

end

end A266155.P14537259207065329452

namespace A266155

/-- `A266434(A166926(n)+n)` -/
def P14537259207065329452.Spec : Prop :=
  ∀ n, P14537259207065329452.a n = A266155 n

end A266155

/-! ## A266155.P9465773806195522734

`A266434(n*A261143(n))`
-/

namespace A266155.P9465773806195522734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266434 ((n : ℤ) * A261143 n).toNat

end

end A266155.P9465773806195522734

namespace A266155

/-- `A266434(n*A261143(n))` -/
def P9465773806195522734.Spec : Prop :=
  ∀ n, P9465773806195522734.a n = A266155 n

end A266155

/-! ## A266155.P8540158364419149365

`and(A030664(n), A266434(n))`
-/

namespace A266155.P8540158364419149365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A030664 n) (A266434 n)

end

end A266155.P8540158364419149365

namespace A266155

/-- `and(A030664(n), A266434(n))` -/
def P8540158364419149365.Spec : Prop :=
  ∀ n, P8540158364419149365.a n = A266155 n

end A266155

/-! ## A266155.P8712851022363490290

`and(A042953(n), A266434(n))`
-/

namespace A266155.P8712851022363490290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A042953 n) (A266434 n)

end

end A266155.P8712851022363490290

namespace A266155

/-- `and(A042953(n), A266434(n))` -/
def P8712851022363490290.Spec : Prop :=
  ∀ n, P8712851022363490290.a n = A266155 n

end A266155

/-! ## A266155.P6853181825403199778

`and(A062584(n), A266434(n))`
-/

namespace A266155.P6853181825403199778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062584 n) (A266434 n)

end

end A266155.P6853181825403199778

namespace A266155

/-- `and(A062584(n), A266434(n))` -/
def P6853181825403199778.Spec : Prop :=
  ∀ n, P6853181825403199778.a n = A266155 n

end A266155

/-! ## A266155.P442552565900970044

`and(A084413(n), A266434(n))`
-/

namespace A266155.P442552565900970044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084413 n) (A266434 n)

end

end A266155.P442552565900970044

namespace A266155

/-- `and(A084413(n), A266434(n))` -/
def P442552565900970044.Spec : Prop :=
  ∀ n, P442552565900970044.a n = A266155 n

end A266155

/-! ## A266155.P4610183032707938736

`and(A261143(n), A266434(n))`
-/

namespace A266155.P4610183032707938736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A261143 n) (A266434 n)

end

end A266155.P4610183032707938736

namespace A266155

/-- `and(A261143(n), A266434(n))` -/
def P4610183032707938736.Spec : Prop :=
  ∀ n, P4610183032707938736.a n = A266155 n

end A266155

/-! ## A266155.P18253413350287442256

`and(A266434(n), A267873(n))`
-/

namespace A266155.P18253413350287442256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266434 n) (A267873 n)

end

end A266155.P18253413350287442256

namespace A266155

/-- `and(A266434(n), A267873(n))` -/
def P18253413350287442256.Spec : Prop :=
  ∀ n, P18253413350287442256.a n = A266155 n

end A266155

/-! ## A266155.P16765349188596554086

`and(A266434(n), A272476(n))`
-/

namespace A266155.P16765349188596554086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266434 n) (A272476 n)

end

end A266155.P16765349188596554086

namespace A266155

/-- `and(A266434(n), A272476(n))` -/
def P16765349188596554086.Spec : Prop :=
  ∀ n, P16765349188596554086.a n = A266155 n

end A266155

/-! ## A266155.P7343898076249059275

`(A185012(n)-A266434(n))²`
-/

namespace A266155.P7343898076249059275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A185012 n - A266434 n) ^ 2

end

end A266155.P7343898076249059275

namespace A266155

/-- `(A185012(n)-A266434(n))²` -/
def P7343898076249059275.Spec : Prop :=
  ∀ n, P7343898076249059275.a n = A266155 n

end A266155

/-! ## A266155.P7745127860279212549

`A266377(A143051(n+1)-1)`
-/

namespace A266155.P7745127860279212549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266377 (A143051 (n + 1) - 1).toNat

end

end A266155.P7745127860279212549

namespace A266155

/-- `A266377(A143051(n+1)-1)` -/
def P7745127860279212549.Spec : Prop :=
  ∀ n, P7745127860279212549.a n = A266155 n

end A266155

/-! ## A266155.P4354432905662131962

`A266377(n*(A130779(n)+1))`
-/

namespace A266155.P4354432905662131962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266377 ((n : ℤ) * (A130779 n + 1)).toNat

end

end A266155.P4354432905662131962

namespace A266155

/-- `A266377(n*(A130779(n)+1))` -/
def P4354432905662131962.Spec : Prop :=
  ∀ n, P4354432905662131962.a n = A266155 n

end A266155

/-!
# A266156: Number of nX2 arrays containing 2 copies of 0..n-1 with no element plus any horizontal, vertical or antidiagonal neighbor equal to n-1.

The programs for A266156, there is no canonical definition to state claims against.
-/

/-! ## A266156.P13273240836944765109

`A266158(∑[n+2])`
-/

namespace A266156.P13273240836944765109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266158 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266156.P13273240836944765109

/-! ## A266156.P16433784779911805434

`lcm(2, A266158(A101881(2*n+1)))`
-/

namespace A266156.P16433784779911805434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A266158 (A101881 (2 * n + 1)).toNat)

end

end A266156.P16433784779911805434

/-! ## A266156.P4197169107125924689

`lcm(4, A266158(A117142(2*(n+1))))`
-/

namespace A266156.P4197169107125924689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A266158 (A117142 (2 * (n + 1))).toNat)

end

end A266156.P4197169107125924689

/-! ## A266156.P7071134301491370687

`A266158(A101881(2*n+1))+A055961(n)`
-/

namespace A266156.P7071134301491370687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266158 (A101881 (2 * n + 1)).toNat + A055961 n

end

end A266156.P7071134301491370687

/-! ## A266156.P4685072982122629666

`A266158(A117142(2*(n+1)))%A055973(n)`
-/

namespace A266156.P4685072982122629666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266158 (A117142 (2 * (n + 1))).toNat) (A055973 n)

end

end A266156.P4685072982122629666

/-!
# A266157: Number of nX3 arrays containing 3 copies of 0..n-1 with no element plus any horizontal, vertical or antidiagonal neighbor equal to n-1.

The programs for A266157, there is no canonical definition to state claims against.
-/

/-! ## A266157.P10779177491478492113

`A266158(∑[n+3]+1)`
-/

namespace A266157.P10779177491478492113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266158 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266157.P10779177491478492113

/-!
# A266158: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with no element plus any horizontal, vertical or antidiagonal neighbor equal to n-1.

The programs for A266158, there is no canonical definition to state claims against.
-/

/-! ## A266158.P17657601553021054690

`and(A106241(n+1), A331847(n))`
-/

namespace A266158.P17657601553021054690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A106241 (n + 1)) (A331847 n)

end

end A266158.P17657601553021054690

/-! ## A266158.P516921706271316621

`and(A014488(n+3)+1, A265663(n+1))`
-/

namespace A266158.P516921706271316621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014488 (n + 3) + 1) (A265663 (n + 1))

end

end A266158.P516921706271316621

/-! ## A266158.P7339966237403700941

`A020639(A027467(n))*A266208(n+1)`
-/

namespace A266158.P7339966237403700941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A027467 n).toNat * A266208 (n + 1)

end

end A266158.P7339966237403700941

/-! ## A266158.P10163555665904547633

`A020639(A155810(n))*A266208(n+1)`
-/

namespace A266158.P10163555665904547633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A155810 n).toNat * A266208 (n + 1)

end

end A266158.P10163555665904547633

/-! ## A266158.P10775079533827195788

`A124769(A130534(n))*A266208(n+1)`
-/

namespace A266158.P10775079533827195788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (A130534 n).toNat * A266208 (n + 1)

end

end A266158.P10775079533827195788

/-!
# A266159: Number of 4Xn arrays containing n copies of 0..4-1 with no element plus any horizontal, vertical or antidiagonal neighbor equal to 4-1.

The programs for A266159, there is no canonical definition to state claims against.
-/

/-! ## A266159.P9802196560157345117

`A266158(A141214(n)+7)`
-/

namespace A266159.P9802196560157345117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266158 (A141214 n + 7).toNat

end

end A266159.P9802196560157345117

/-! ## A266159.P5783202862748212439

`A266158(A052905(n)+9)`
-/

namespace A266159.P5783202862748212439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266158 (A052905 n + 9).toNat

end

end A266159.P5783202862748212439

/-! ## A266159.P10857718169415726566

`A266158(A055999(n)+10)`
-/

namespace A266159.P10857718169415726566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266158 (A055999 n + 10).toNat

end

end A266159.P10857718169415726566

/-! ## A266159.P10566758027921738841

`A266158(eq[5, A066657(n)])`
-/

namespace A266159.P10566758027921738841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266158 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266159.P10566758027921738841

/-!
# A266160: Number of 5 X n arrays containing n copies of 0..5-1 with no element plus any horizontal, vertical or antidiagonal neighbor equal to 5-1.

The programs for A266160, there is no canonical definition to state claims against.
-/

/-! ## A266160.P14921534761149877752

`A266158(A155212(n)+13)`
-/

namespace A266160.P14921534761149877752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266158 (A155212 n + 13).toNat

end

end A266160.P14921534761149877752

/-! ## A266160.P13883388004446731766

`A266158(A056000(n)+15)`
-/

namespace A266160.P13883388004446731766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266158 (A056000 n + 15).toNat

end

end A266160.P13883388004446731766

/-! ## A266160.P15582008387985980318

`A266158(eq[7, A066657(n)])`
-/

namespace A266160.P15582008387985980318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266158 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266160.P15582008387985980318

/-!
# A266161: Hamming weights of A266089.

The programs for A266161, there is no canonical definition to state claims against.
-/

/-! ## A266161.P6539922782383905541

`A000120(A266089(n))`
-/

namespace A266161.P6539922782383905541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A266089 n).toNat

end

end A266161.P6539922782383905541

/-! ## A266161.P14012946646985094617

`A169611(A001316(lcm(2, A266089(n))))`
-/

namespace A266161.P14012946646985094617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A001316 (Int.lcm 2 (A266089 n))).toNat

end

end A266161.P14012946646985094617

/-! ## A266161.P12090469216462221323

`A169611(A001316(A266089(n)+A266089(n)))`
-/

namespace A266161.P12090469216462221323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A001316 (A266089 n + A266089 n).toNat).toNat

end

end A266161.P12090469216462221323

/-! ## A266161.P1900328561166698714

`val(A102377(A266089(n)), A010694(2*n))`
-/

namespace A266161.P1900328561166698714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A102377 (A266089 n).toNat).toNat (A010694 (2 * n)).toNat

end

end A266161.P1900328561166698714

/-! ## A266161.P7899449394141230880

`val(A102377(2*A266089(n)), 2)`
-/

namespace A266161.P7899449394141230880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A102377 (2 * A266089 n).toNat).toNat 2

end

end A266161.P7899449394141230880

/-!
# A266163: Primes prime(k) such that (prime(k)*prime(k+1)+1)/2 is prime.

The programs for A266163, there is no canonical definition to state claims against.
-/

/-! ## A266163.P10243923636847276576

`A000040(A209255(n+1))`
-/

namespace A266163.P10243923636847276576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A209255 (n + 1)).toNat

end

end A266163.P10243923636847276576

/-! ## A266163.P10936570329930289390

`A008578(A209255(n+1)+1)`
-/

namespace A266163.P10936570329930289390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A209255 (n + 1) + 1).toNat

end

end A266163.P10936570329930289390

/-! ## A266163.P6692662164089771391

`A045344(A209255(n+1)-1)`
-/

namespace A266163.P6692662164089771391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A209255 (n + 1) - 1).toNat

end

end A266163.P6692662164089771391

/-! ## A266163.P13892838429887380333

`A065091(A209255(n+1)-1)`
-/

namespace A266163.P13892838429887380333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A209255 (n + 1) - 1).toNat

end

end A266163.P13892838429887380333

/-! ## A266163.P13917458537889930066

`A161346(A209255(n+1)+2)`
-/

namespace A266163.P13917458537889930066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (A209255 (n + 1) + 2).toNat

end

end A266163.P13917458537889930066

/-! ## A266163.P12084854839409216942

`A004139(A209255(n+1)-2)`
-/

namespace A266163.P12084854839409216942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A209255 (n + 1) - 2).toNat

end

end A266163.P12084854839409216942

/-! ## A266163.P11612294948488093062

`A020639(A040976(A209255(n+1))+2)`
-/

namespace A266163.P11612294948488093062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A040976 (A209255 (n + 1)).toNat + 2).toNat

end

end A266163.P11612294948488093062

/-!
# A266164: Primes p such that phi(p) = phi(p-2) + phi(p-1); Phibonacci primes.

The programs for A266164, there is no canonical definition to state claims against.
-/

/-! ## A266164.P9774235436396075020

`p?[A065557(n+1)]`
-/

namespace A266164.P9774235436396075020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A266164.P9774235436396075020

/-! ## A266164.P8711077759562224413

`p?[A076529(n+1)+1]`
-/

namespace A266164.P8711077759562224413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076529 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A266164.P8711077759562224413

/-! ## A266164.P4889377394805355008

`p?[A067798(n+1)+2]`
-/

namespace A266164.P4889377394805355008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067798 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A266164.P4889377394805355008

/-! ## A266164.P7624793401661000579

`p?[A229552(n+1)+2]`
-/

namespace A266164.P7624793401661000579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229552 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A266164.P7624793401661000579

/-! ## A266164.P11312882838127588000

`p?[or(1, A076529(Δ[n²]-n))]`
-/

namespace A266164.P11312882838127588000
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A076529 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A266164.P11312882838127588000

/-!
# A266165: Numbers k such that k = 2*phi(sigma((k-1)/2)) + 1.

The programs for A266165, there is no canonical definition to state claims against.
-/

/-! ## A266165.P5047422979835419108

`2*A001229(n+1)+1`
-/

namespace A266165.P5047422979835419108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001229 (n + 1) + 1

end

end A266165.P5047422979835419108

/-! ## A266165.P16494245659491391250

`A001229(A000027(n+1))+A001229(n+1)+1`
-/

namespace A266165.P16494245659491391250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001229 (A000027 (n + 1)).toNat + (A001229 (n + 1) + 1)

end

end A266165.P16494245659491391250

/-! ## A266165.P16344359335359443258

`A001229(n+1)+A015936(n)+A001229(n+1)`
-/

namespace A266165.P16344359335359443258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001229 (n + 1) + (A015936 n + A001229 (n + 1))

end

end A266165.P16344359335359443258

/-! ## A266165.P9356741681236283323

`A001229(n+1)+A304042(n)+A001229(n+1)`
-/

namespace A266165.P9356741681236283323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001229 (n + 1) + (A304042 n + A001229 (n + 1))

end

end A266165.P9356741681236283323

/-!
# A266170: Number of species of maximal pairs of orthogonal Latin squares.

The programs for A266170, there is no canonical definition to state claims against.
-/

/-! ## A266170.P6118449848405498082

`A344447(A259116(n+1)-A011371(n))`
-/

namespace A266170.P6118449848405498082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344447 (A259116 (n + 1) - A011371 n).toNat

end

end A266170.P6118449848405498082

/-! ## A266170.P6588045877134954801

`A018783(A002033(A063834(A003238(n+1))))`
-/

namespace A266170.P6588045877134954801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A002033 (A063834 (A003238 (n + 1)).toNat).toNat).toNat

end

end A266170.P6588045877134954801

/-!
# A266171: Number of reduced maximal pairs of orthogonal Latin squares.

The programs for A266171, there is no canonical definition to state claims against.
-/

/-! ## A266171.P8606629488359939300

`A237756(n+1)*A344132(A129271(n))`
-/

namespace A266171.P8606629488359939300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237756 (n + 1) * A344132 (A129271 n).toNat

end

end A266171.P8606629488359939300

/-!
# A266172: Number of species of triples of orthogonal Latin squares.

The programs for A266172, there is no canonical definition to state claims against.
-/

/-! ## A266172.P205192180076946785

`A373949(A358587(n+1)+A000120(n))`
-/

namespace A266172.P205192180076946785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373949 (A358587 (n + 1) + A000120 n).toNat

end

end A266172.P205192180076946785

/-!
# A266173: Number of species of sets of four orthogonal Latin squares.

The programs for A266173, there is no canonical definition to state claims against.
-/

/-! ## A266173.P13815424890342631226

`96*a(n-1)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=0, a(6)=1, a(7)=1`
-/

namespace A266173.P13815424890342631226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 1, 0, 1, 1] fun n a =>
  96 * a (n - 1)

end

end A266173.P13815424890342631226

/-! ## A266173.P12278295989861221790

`and(97, A132343(n)²)`
-/

namespace A266173.P12278295989861221790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 97 (A132343 n ^ 2)

end

end A266173.P12278295989861221790

/-! ## A266173.P2741762032244665756

`and(97, A096087(3*(n+1))!)`
-/

namespace A266173.P2741762032244665756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 97 (Nat.factorial (A096087 (3 * (n + 1))).toNat)

end

end A266173.P2741762032244665756

/-! ## A266173.P6333667731256476093

`A185327(lcm(n, lcm(2, xor(n, -2))/2))`
-/

namespace A266173.P6333667731256476093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185327 (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway ((Int.lcm 2 (Int.xor (n : ℤ) (-2)) : ℚ) / 2)))

end

end A266173.P6333667731256476093

/-! ## A266173.P6760024290681334041

`A188223(n)^a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=0`
-/

namespace A266173.P6760024290681334041
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 0, 0, 0, 1, 0] fun n a =>
  (A188223 n : ℝ) ^ (a (n - 4))

end

end A266173.P6760024290681334041

/-!
# A266174: Triangle read by rows giving successive states of cellular automaton generated by "Rule 5" initiated with a single ON (black) cell.

The programs for A266174, the canonical program `A266174.P16187119275492808258` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266174 has offset 0).

The definition of A266174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266174.P6741224516121478982

`A266514(n)*A266848(n)`
-/

namespace A266174.P6741224516121478982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266514 n * A266848 n

end

end A266174.P6741224516121478982

namespace A266174

/-- `A266514(n)*A266848(n)` -/
def P6741224516121478982.Spec : Prop :=
  ∀ n, P6741224516121478982.a n = A266174 n

end A266174

/-! ## A266174.P12836317330136244582

`A266514(n)*A267704(n)`
-/

namespace A266174.P12836317330136244582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266514 n * A267704 n

end

end A266174.P12836317330136244582

namespace A266174

/-- `A266514(n)*A267704(n)` -/
def P12836317330136244582.Spec : Prop :=
  ∀ n, P12836317330136244582.a n = A266174 n

end A266174

/-! ## A266174.P9550496345827771910

`A266514(n)*A267773(n)`
-/

namespace A266174.P9550496345827771910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266514 n * A267773 n

end

end A266174.P9550496345827771910

namespace A266174

/-- `A266514(n)*A267773(n)` -/
def P9550496345827771910.Spec : Prop :=
  ∀ n, P9550496345827771910.a n = A266174 n

end A266174

/-! ## A266174.P16187119275492808258

`A266848(n)*A267704(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A266174

/-- `A266848(n)*A267704(n)` -/
def P16187119275492808258.Spec : Prop :=
  ∀ n, P16187119275492808258.a n = A266174 n

theorem P16187119275492808258.correct : P16187119275492808258.Spec := by
  intro n
  simp only [A266174]

end A266174

/-! ## A266174.P15413170550793218638

`A266848(n)*A267814(n)`
-/

namespace A266174.P15413170550793218638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266848 n * A267814 n

end

end A266174.P15413170550793218638

namespace A266174

/-- `A266848(n)*A267814(n)` -/
def P15413170550793218638.Spec : Prop :=
  ∀ n, P15413170550793218638.a n = A266174 n

end A266174

/-! ## A266174.P15540965514862443453

`and(A062557(n), A266848(n))`
-/

namespace A266174.P15540965514862443453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062557 n) (A266848 n)

end

end A266174.P15540965514862443453

namespace A266174

/-- `and(A062557(n), A266848(n))` -/
def P15540965514862443453.Spec : Prop :=
  ∀ n, P15540965514862443453.a n = A266174 n

end A266174

/-! ## A266174.P333264485610926277

`and(A207629(n+1), A266848(n))`
-/

namespace A266174.P333264485610926277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A207629 (n + 1)) (A266848 n)

end

end A266174.P333264485610926277

namespace A266174

/-- `and(A207629(n+1), A266848(n))` -/
def P333264485610926277.Spec : Prop :=
  ∀ n, P333264485610926277.a n = A266174 n

end A266174

/-! ## A266174.P483760101900197222

`(1-(A267679(n)+A267349(n)))²`
-/

namespace A266174.P483760101900197222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (A267679 n + A267349 n)) ^ 2

end

end A266174.P483760101900197222

namespace A266174

/-- `(1-(A267679(n)+A267349(n)))²` -/
def P483760101900197222.Spec : Prop :=
  ∀ n, P483760101900197222.a n = A266174 n

end A266174

/-! ## A266174.P167632296043167193

`A265718(n*A266666(n))*A266514(n)`
-/

namespace A266174.P167632296043167193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265718 ((n : ℤ) * A266666 n).toNat * A266514 n

end

end A266174.P167632296043167193

namespace A266174

/-- `A265718(n*A266666(n))*A266514(n)` -/
def P167632296043167193.Spec : Prop :=
  ∀ n, P167632296043167193.a n = A266174 n

end A266174

/-! ## A266174.P12605903877442745798

`A265718(n*A266666(n))*A266848(n)`
-/

namespace A266174.P12605903877442745798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265718 ((n : ℤ) * A266666 n).toNat * A266848 n

end

end A266174.P12605903877442745798

namespace A266174

/-- `A265718(n*A266666(n))*A266848(n)` -/
def P12605903877442745798.Spec : Prop :=
  ∀ n, P12605903877442745798.a n = A266174 n

end A266174

/-! ## A266174.P13031592819922722384

`A266514(A020703(n+1)-1)*A266514(n)`
-/

namespace A266174.P13031592819922722384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266514 (A020703 (n + 1) - 1).toNat * A266514 n

end

end A266174.P13031592819922722384

namespace A266174

/-- `A266514(A020703(n+1)-1)*A266514(n)` -/
def P13031592819922722384.Spec : Prop :=
  ∀ n, P13031592819922722384.a n = A266174 n

end A266174

/-!
# A266175: Binary representation of the n-th iteration of the "Rule 5" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266175, there is no canonical definition to state claims against.
-/

/-! ## A266175.P9810946455110352052

`A266515(n)-A277798(A124625(n))`
-/

namespace A266175.P9810946455110352052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266515 n - A277798 (A124625 n).toNat

end

end A266175.P9810946455110352052

/-! ## A266175.P6721623321277927079

`A007088(A266176(n))`
-/

namespace A266175.P6721623321277927079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266176 n).toNat

end

end A266175.P6721623321277927079

/-! ## A266175.P15776520610485395435

`A007088(or(2^n, A265721(n)))`
-/

namespace A266175.P15776520610485395435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (2 ^ n : ℤ) (A265721 n)).toNat

end

end A266175.P15776520610485395435

/-! ## A266175.P15521716121790957773

`A007088(and(A266516(n), A266850(n)))`
-/

namespace A266175.P15521716121790957773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A266516 n) (A266850 n)).toNat

end

end A266175.P15521716121790957773

/-! ## A266175.P2371356734454116630

`A007088(and(A266516(n), A267774(n)))`
-/

namespace A266175.P2371356734454116630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A266516 n) (A267774 n)).toNat

end

end A266175.P2371356734454116630

/-!
# A266176: Decimal representation of the n-th iteration of the "Rule 5" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266176, the canonical program `A266176.P15973943140520790239` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266176 has offset 0).

The definition of A266176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266176.P2973192911742322421

`and(A266516(n), A266850(n))`
-/

namespace A266176.P2973192911742322421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266516 n) (A266850 n)

end

end A266176.P2973192911742322421

namespace A266176

/-- `and(A266516(n), A266850(n))` -/
def P2973192911742322421.Spec : Prop :=
  ∀ n, P2973192911742322421.a n = A266176 n

end A266176

/-! ## A266176.P15390248420027495086

`or(A000079(n), A265721(n))`
-/

namespace A266176.P15390248420027495086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n) (A265721 n)

end

end A266176.P15390248420027495086

namespace A266176

/-- `or(A000079(n), A265721(n))` -/
def P15390248420027495086.Spec : Prop :=
  ∀ n, P15390248420027495086.a n = A266176 n

end A266176

/-! ## A266176.P4527898412996140354

`or(A265721(n), A277867(n))`
-/

namespace A266176.P4527898412996140354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A265721 n) (A277867 n)

end

end A266176.P4527898412996140354

namespace A266176

/-- `or(A265721(n), A277867(n))` -/
def P4527898412996140354.Spec : Prop :=
  ∀ n, P4527898412996140354.a n = A266176 n

end A266176

/-! ## A266176.P16294449958461262809

`or(Δ[A000051(n)], A265721(n))`
-/

namespace A266176.P16294449958461262809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A265721 n)

end

end A266176.P16294449958461262809

namespace A266176

/-- `or(Δ[A000051(n)], A265721(n))` -/
def P16294449958461262809.Spec : Prop :=
  ∀ n, P16294449958461262809.a n = A266176 n

end A266176

/-! ## A266176.P13171021964053370360

`or(Δ[A000225(n)], A265721(n))`
-/

namespace A266176.P13171021964053370360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A265721 n)

end

end A266176.P13171021964053370360

namespace A266176

/-- `or(Δ[A000225(n)], A265721(n))` -/
def P13171021964053370360.Spec : Prop :=
  ∀ n, P13171021964053370360.a n = A266176 n

end A266176

/-! ## A266176.P15973943140520790239

`A266668(n)-Δ[A016116(n)²]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A266176

/-- `A266668(n)-Δ[A016116(n)²]` -/
def P15973943140520790239.Spec : Prop :=
  ∀ n, P15973943140520790239.a n = A266176 n

theorem P15973943140520790239.correct : P15973943140520790239.Spec := by
  intro n
  simp only [A266176]

end A266176

/-! ## A266176.P16030122694968481321

`and(A266516(n), A267774(n))`
-/

namespace A266176.P16030122694968481321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266516 n) (A267774 n)

end

end A266176.P16030122694968481321

namespace A266176

/-- `and(A266516(n), A267774(n))` -/
def P16030122694968481321.Spec : Prop :=
  ∀ n, P16030122694968481321.a n = A266176 n

end A266176

/-! ## A266176.P17816098065452861408

`and(A266850(n), A267816(n))`
-/

namespace A266176.P17816098065452861408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266850 n) (A267816 n)

end

end A266176.P17816098065452861408

namespace A266176

/-- `and(A266850(n), A267816(n))` -/
def P17816098065452861408.Spec : Prop :=
  ∀ n, P17816098065452861408.a n = A266176 n

end A266176

/-! ## A266176.P16595414113309026731

`or(A265721(n), A276618(A055998(n)-n))`
-/

namespace A266176.P16595414113309026731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A265721 n) (A276618 (A055998 n - (n : ℤ)).toNat)

end

end A266176.P16595414113309026731

namespace A266176

/-- `or(A265721(n), A276618(A055998(n)-n))` -/
def P16595414113309026731.Spec : Prop :=
  ∀ n, P16595414113309026731.a n = A266176 n

end A266176

/-!
# A266177: Number of species of bachelor Latin squares.

The programs for A266177, there is no canonical definition to state claims against.
-/

/-! ## A266177.P5205060772898510794

`A270795(round(ϕ*a(n-1)))` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A266177.P5205060772898510794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 1, 1] fun n a =>
  A270795 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))).toNat

end

end A266177.P5205060772898510794

/-! ## A266177.P15024065855570780588

`A324749(floor(2^(n-1)))-ceil(abs((1-n)/2))`
-/

namespace A266177.P15024065855570780588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324749 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat - ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉

end

end A266177.P15024065855570780588

/-! ## A266177.P2471502147591453284

`Δ[A239500(A011971(2*n))]`
-/

namespace A266177.P2471502147591453284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239500 (A011971 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266177.P2471502147591453284

/-!
# A266178: Triangle read by rows giving successive states of cellular automaton generated by "Rule 6" initiated with a single ON (black) cell.

The programs for A266178, the canonical program `A266178.P17301482750674459619` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266178 has offset 0).

The definition of A266178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266178.P2710561766105940391

`char[n%2+gcd(n, ∑[n])²]`
-/

namespace A266178.P2710561766105940391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A266178.P2710561766105940391

namespace A266178

/-- `char[n%2+gcd(n, ∑[n])²]` -/
def P2710561766105940391.Spec : Prop :=
  ∀ n, (P2710561766105940391.a n : ℤ) = A266178 n

end A266178

/-! ## A266178.P17301482750674459619

`C(∑[(-1)^n], n-floor(sqrt(n))²)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A266178

/-- `C(∑[(-1)^n], n-floor(sqrt(n))²)` -/
def P17301482750674459619.Spec : Prop :=
  ∀ n, (P17301482750674459619.a n : ℤ) = A266178 n

theorem P17301482750674459619.correct : P17301482750674459619.Spec := by
  intro n
  simp only [A266178]

end A266178

/-! ## A266178.P3704111411183336161

`∏{e}[(31*(∑[n]-n)+4)%2-n, #+1]%2`
-/

namespace A266178.P3704111411183336161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (31 * (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)) + 4) 2 - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)) % 2

end

end A266178.P3704111411183336161

namespace A266178

/-- `∏{e}[(31*(∑[n]-n)+4)%2-n, #+1]%2` -/
def P3704111411183336161.Spec : Prop :=
  ∀ n, (P3704111411183336161.a n : ℤ) = A266178 n

end A266178

/-! ## A266178.P11086652463845517023

`char[∑[A003815(n)]-n]`
-/

namespace A266178.P11086652463845517023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A266178.P11086652463845517023

namespace A266178

/-- `char[∑[A003815(n)]-n]` -/
def P11086652463845517023.Spec : Prop :=
  ∀ n, (P11086652463845517023.a n : ℤ) = A266178 n

end A266178

/-! ## A266178.P16556473258171723744

`A010052(n-char[or(2, n)])`
-/

namespace A266178.P16556473258171723744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A266178.P16556473258171723744

namespace A266178

/-- `A010052(n-char[or(2, n)])` -/
def P16556473258171723744.Spec : Prop :=
  ∀ n, P16556473258171723744.a n = A266178 n

end A266178

/-! ## A266178.P17394668410859560172

`C(log2(gcd(2, n)), A053186(n))²`
-/

namespace A266178.P17394668410859560172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 n : ℝ))).toNat (A053186 n).toNat ^ 2

end

end A266178.P17394668410859560172

namespace A266178

/-- `C(log2(gcd(2, n)), A053186(n))²` -/
def P17394668410859560172.Spec : Prop :=
  ∀ n, (P17394668410859560172.a n : ℤ) = A266178 n

end A266178

/-! ## A266178.P723841689360629796

`round(A071029(n)/(1-floor(sqrt(n))²+n))`
-/

namespace A266178.P723841689360629796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A071029 n : ℚ) / (1 - (Nat.sqrt n ^ 2 : ℤ) + (n : ℤ) : ℚ))

end

end A266178.P723841689360629796

namespace A266178

/-- `round(A071029(n)/(1-floor(sqrt(n))²+n))` -/
def P723841689360629796.Spec : Prop :=
  ∀ n, P723841689360629796.a n = A266178 n

end A266178

/-! ## A266178.P4366682596006639865

`and(1, A000005(n)+(n+1)*a(n-1))` with `a(0)=1`
-/

namespace A266178.P4366682596006639865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land 1 (A000005 n + (n + 1 : ℤ) * a (n - 1))

end

end A266178.P4366682596006639865

namespace A266178

/-- `and(1, A000005(n)+(n+1)*a(n-1))` -/
def P4366682596006639865.Spec : Prop :=
  ∀ n, P4366682596006639865.a n = A266178 n

end A266178

/-! ## A266178.P9907864660423413393

`and(1, A000005(n-and(n+1, a(n-1))))` with `a(0)=1`
-/

namespace A266178.P9907864660423413393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land 1 (A000005 ((n : ℤ) - Int.land (n + 1 : ℤ) (a (n - 1))).toNat)

end

end A266178.P9907864660423413393

namespace A266178

/-- `and(1, A000005(n-and(n+1, a(n-1))))` -/
def P9907864660423413393.Spec : Prop :=
  ∀ n, P9907864660423413393.a n = A266178 n

end A266178

/-! ## A266178.P6608471880546295244

`A010052(n-A021913(n))`
-/

namespace A266178.P6608471880546295244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((n : ℤ) - A021913 n).toNat

end

end A266178.P6608471880546295244

namespace A266178

/-- `A010052(n-A021913(n))` -/
def P6608471880546295244.Spec : Prop :=
  ∀ n, P6608471880546295244.a n = A266178 n

end A266178

/-! ## A266178.P9019783489411164729

`A059318(n)*A266298(n)`
-/

namespace A266178.P9019783489411164729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059318 n * A266298 n

end

end A266178.P9019783489411164729

namespace A266178

/-- `A059318(n)*A266298(n)` -/
def P9019783489411164729.Spec : Prop :=
  ∀ n, P9019783489411164729.a n = A266178 n

end A266178

/-! ## A266178.P14025514719398196076

`A071029(n)*A266298(n)`
-/

namespace A266178.P14025514719398196076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071029 n * A266298 n

end

end A266178.P14025514719398196076

namespace A266178

/-- `A071029(n)*A266298(n)` -/
def P14025514719398196076.Spec : Prop :=
  ∀ n, P14025514719398196076.a n = A266178 n

end A266178

/-! ## A266178.P13630668413114816896

`A071030(n)*A266298(n)`
-/

namespace A266178.P13630668413114816896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071030 n * A266298 n

end

end A266178.P13630668413114816896

namespace A266178

/-- `A071030(n)*A266298(n)` -/
def P13630668413114816896.Spec : Prop :=
  ∀ n, P13630668413114816896.a n = A266178 n

end A266178

/-! ## A266178.P13358722344149851685

`A071032(n)*A266298(n)`
-/

namespace A266178.P13358722344149851685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071032 n * A266298 n

end

end A266178.P13358722344149851685

namespace A266178

/-- `A071032(n)*A266298(n)` -/
def P13358722344149851685.Spec : Prop :=
  ∀ n, P13358722344149851685.a n = A266178 n

end A266178

/-! ## A266178.P9442754470531566989

`A071034(n)*A266298(n)`
-/

namespace A266178.P9442754470531566989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071034 n * A266298 n

end

end A266178.P9442754470531566989

namespace A266178

/-- `A071034(n)*A266298(n)` -/
def P9442754470531566989.Spec : Prop :=
  ∀ n, P9442754470531566989.a n = A266178 n

end A266178

/-! ## A266178.P7473016175421594484

`A071036(n)*A266298(n)`
-/

namespace A266178.P7473016175421594484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071036 n * A266298 n

end

end A266178.P7473016175421594484

namespace A266178

/-- `A071036(n)*A266298(n)` -/
def P7473016175421594484.Spec : Prop :=
  ∀ n, P7473016175421594484.a n = A266178 n

end A266178

/-! ## A266178.P10322603969671971508

`A071038(n)*A266298(n)`
-/

namespace A266178.P10322603969671971508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071038 n * A266298 n

end

end A266178.P10322603969671971508

namespace A266178

/-- `A071038(n)*A266298(n)` -/
def P10322603969671971508.Spec : Prop :=
  ∀ n, P10322603969671971508.a n = A266178 n

end A266178

/-! ## A266178.P12031510232343801561

`A071040(n)*A266298(n)`
-/

namespace A266178.P12031510232343801561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071040 n * A266298 n

end

end A266178.P12031510232343801561

namespace A266178

/-- `A071040(n)*A266298(n)` -/
def P12031510232343801561.Spec : Prop :=
  ∀ n, P12031510232343801561.a n = A266178 n

end A266178

/-! ## A266178.P6528764367064203759

`A071041(n)*A266298(n)`
-/

namespace A266178.P6528764367064203759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071041 n * A266298 n

end

end A266178.P6528764367064203759

namespace A266178

/-- `A071041(n)*A266298(n)` -/
def P6528764367064203759.Spec : Prop :=
  ∀ n, P6528764367064203759.a n = A266178 n

end A266178

/-!
# A266179: Binary representation of the n-th iteration of the "Rule 6" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266179, the canonical program `A266179.P11208669540111769513` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266179 has offset 0).

The definition of A266179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266179.P11208669540111769513

`4^(n-1)*5^(2*n-1)*(21-(-1)^n)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A266179

/-- `4^(n-1)*5^(2*n-1)*(21-(-1)^n)` -/
def P11208669540111769513.Spec : Prop :=
  ∀ n, P11208669540111769513.a n = (A266179 n : ℚ)

end A266179

/-! ## A266179.P15610737828176318195

`A104459(A047452(n+1))`
-/

namespace A266179.P15610737828176318195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104459 (A047452 (n + 1)).toNat

end

end A266179.P15610737828176318195

namespace A266179

/-- `A104459(A047452(n+1))` -/
def P15610737828176318195.Spec : Prop :=
  ∀ n, P15610737828176318195.a n = A266179 n

end A266179

/-! ## A266179.P14672977485778318994

`A104459(A008586(n)+A000034(n))`
-/

namespace A266179.P14672977485778318994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104459 (A008586 n + A000034 n).toNat

end

end A266179.P14672977485778318994

namespace A266179

/-- `A104459(A008586(n)+A000034(n))` -/
def P14672977485778318994.Spec : Prop :=
  ∀ n, P14672977485778318994.a n = A266179 n

end A266179

/-! ## A266179.P17952961725644711499

`A104459(A016825(n)-A059841(n))`
-/

namespace A266179.P17952961725644711499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104459 (A016825 n - A059841 n).toNat

end

end A266179.P17952961725644711499

namespace A266179

/-- `A104459(A016825(n)-A059841(n))` -/
def P17952961725644711499.Spec : Prop :=
  ∀ n, P17952961725644711499.a n = A266179 n

end A266179

/-! ## A266179.P3426227482102633729

`A104459(or(A000034(n), A008574(n)))`
-/

namespace A266179.P3426227482102633729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104459 (Int.lor (A000034 n) (A008574 n)).toNat

end

end A266179.P3426227482102633729

namespace A266179

/-- `A104459(or(A000034(n), A008574(n)))` -/
def P3426227482102633729.Spec : Prop :=
  ∀ n, P3426227482102633729.a n = A266179 n

end A266179

/-! ## A266179.P2316605397733646645

`A104459(or(A000034(n), A008586(n)))`
-/

namespace A266179.P2316605397733646645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104459 (Int.lor (A000034 n) (A008586 n)).toNat

end

end A266179.P2316605397733646645

namespace A266179

/-- `A104459(or(A000034(n), A008586(n)))` -/
def P2316605397733646645.Spec : Prop :=
  ∀ n, P2316605397733646645.a n = A266179 n

end A266179

/-! ## A266179.P14162025901804067733

`A309761(A000124(2*n)+A000035(n))`
-/

namespace A266179.P14162025901804067733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A000124 (2 * n) + A000035 n).toNat

end

end A266179.P14162025901804067733

namespace A266179

/-- `A309761(A000124(2*n)+A000035(n))` -/
def P14162025901804067733.Spec : Prop :=
  ∀ n, P14162025901804067733.a n = A266179 n

end A266179

/-!
# A266180: Decimal representation of the n-th iteration of the "Rule 6" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266180, the canonical program `A266180.P2375632071515553874` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266180 has offset 0).

The definition of A266180 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266180.P2375632071515553874

`16*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A266180

/-- `16*a(n-2)` -/
def P2375632071515553874.Spec : Prop :=
  ∀ n, (P2375632071515553874.a n : ℤ) = A266180 n

theorem P2375632071515553874.correct : P2375632071515553874.Spec := by
  intro n
  simp only [A266180]

end A266180

/-! ## A266180.P33118133624715476

`4^(n-1)*(5-(-1)^n)`
-/

namespace A266180.P33118133624715476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (5 - (-1) ^ n : ℚ)

end

end A266180.P33118133624715476

namespace A266180

/-- `4^(n-1)*(5-(-1)^n)` -/
def P33118133624715476.Spec : Prop :=
  ∀ n, P33118133624715476.a n = (A266180 n : ℚ)

end A266180

/-! ## A266180.P4186883363121288444

`a(n-2)/(1/4)²` with `a(0)=1, a(1)=6`
-/

namespace A266180.P4186883363121288444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 2) / ((1 : ℚ) / 4) ^ 2

end

end A266180.P4186883363121288444

namespace A266180

/-- `a(n-2)/(1/4)²` -/
def P4186883363121288444.Spec : Prop :=
  ∀ n, P4186883363121288444.a n = (A266180 n : ℚ)

end A266180

/-! ## A266180.P10785298269413907740

`or(4^n, record[and(2, n+2)^n])`
-/

namespace A266180.P10785298269413907740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n + 2) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (4 ^ n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A266180.P10785298269413907740

namespace A266180

/-- `or(4^n, record[and(2, n+2)^n])` -/
def P10785298269413907740.Spec : Prop :=
  ∀ n, (P10785298269413907740.a n : ℤ) = A266180 n

end A266180

/-! ## A266180.P8208604280610828423

`abs(Δ[A084247(A042948(n))])`
-/

namespace A266180.P8208604280610828423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 (A042948 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A266180.P8208604280610828423

namespace A266180

/-- `abs(Δ[A084247(A042948(n))])` -/
def P8208604280610828423.Spec : Prop :=
  ∀ n, P8208604280610828423.a n = A266180 n

end A266180

/-! ## A266180.P11755160503129481674

`record[A009116(n+2)+A009116(n)]`
-/

namespace A266180.P11755160503129481674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 (n + 2) + A009116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266180.P11755160503129481674

namespace A266180

/-- `record[A009116(n+2)+A009116(n)]` -/
def P11755160503129481674.Spec : Prop :=
  ∀ n, P11755160503129481674.a n = A266180 n

end A266180

/-! ## A266180.P5999518999937530446

`and(A000079(n)*A084221(n), -(n+1))`
-/

namespace A266180.P5999518999937530446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000079 n * A084221 n) (-(n + 1 : ℤ))

end

end A266180.P5999518999937530446

namespace A266180

/-- `and(A000079(n)*A084221(n), -(n+1))` -/
def P5999518999937530446.Spec : Prop :=
  ∀ n, P5999518999937530446.a n = A266180 n

end A266180

/-! ## A266180.P14833497473547374448

`record[A009545(2*n)+A009545(n+1)²]`
-/

namespace A266180.P14833497473547374448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (2 * n) + A009545 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266180.P14833497473547374448

namespace A266180

/-- `record[A009545(2*n)+A009545(n+1)²]` -/
def P14833497473547374448.Spec : Prop :=
  ∀ n, P14833497473547374448.a n = A266180 n

end A266180

/-! ## A266180.P5626638434714526547

`A011782(n+1)²+A011782(2*n)*A059841(n+1)`
-/

namespace A266180.P5626638434714526547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) ^ 2 + A011782 (2 * n) * A059841 (n + 1)

end

end A266180.P5626638434714526547

namespace A266180

/-- `A011782(n+1)²+A011782(2*n)*A059841(n+1)` -/
def P5626638434714526547.Spec : Prop :=
  ∀ n, P5626638434714526547.a n = A266180 n

end A266180

/-! ## A266180.P3739286390559930665

`A011782(n+1)²+lcm(A011782(2*n), A056594(n+1))`
-/

namespace A266180.P3739286390559930665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) ^ 2 + (Int.lcm (A011782 (2 * n)) (A056594 (n + 1)) : ℤ)

end

end A266180.P3739286390559930665

namespace A266180

/-- `A011782(n+1)²+lcm(A011782(2*n), A056594(n+1))` -/
def P3739286390559930665.Spec : Prop :=
  ∀ n, P3739286390559930665.a n = A266180 n

end A266180

/-! ## A266180.P10715357772298094963

`A011782(n+1)²+and(A011782(2*n), A061084(n+1))`
-/

namespace A266180.P10715357772298094963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) ^ 2 + Int.land (A011782 (2 * n)) (A061084 (n + 1))

end

end A266180.P10715357772298094963

namespace A266180

/-- `A011782(n+1)²+and(A011782(2*n), A061084(n+1))` -/
def P10715357772298094963.Spec : Prop :=
  ∀ n, P10715357772298094963.a n = A266180 n

end A266180

/-! ## A266180.P16202238112401401287

`A011782(2*n+1)+A011782(2*n)*A059841(n+1)`
-/

namespace A266180.P16202238112401401287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n + 1) + A011782 (2 * n) * A059841 (n + 1)

end

end A266180.P16202238112401401287

namespace A266180

/-- `A011782(2*n+1)+A011782(2*n)*A059841(n+1)` -/
def P16202238112401401287.Spec : Prop :=
  ∀ n, P16202238112401401287.a n = A266180 n

end A266180

/-! ## A266180.P1701117057705965659

`A011782(2*n+1)+and(A011782(2*n), A061084(n+1))`
-/

namespace A266180.P1701117057705965659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n + 1) + Int.land (A011782 (2 * n)) (A061084 (n + 1))

end

end A266180.P1701117057705965659

namespace A266180

/-- `A011782(2*n+1)+and(A011782(2*n), A061084(n+1))` -/
def P1701117057705965659.Spec : Prop :=
  ∀ n, P1701117057705965659.a n = A266180 n

end A266180

/-! ## A266180.P2348433021389328842

`record[A137444(2*n)]`
-/

namespace A266180.P2348433021389328842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137444 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266180.P2348433021389328842

namespace A266180

/-- `record[A137444(2*n)]` -/
def P2348433021389328842.Spec : Prop :=
  ∀ n, P2348433021389328842.a n = A266180 n

end A266180

/-! ## A266180.P1771240899548449721

`record[A081631(floor(4*n/3))]`
-/

namespace A266180.P1771240899548449721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081631 ⌊4 * ((n : ℚ) / 3)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266180.P1771240899548449721

namespace A266180

/-- `record[A081631(floor(4*n/3))]` -/
def P1771240899548449721.Spec : Prop :=
  ∀ n, P1771240899548449721.a n = A266180 n

end A266180

/-! ## A266180.P10107284051650038181

`A164073(4*n-char[2*n+1]+1)`
-/

namespace A266180.P10107284051650038181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 ((4 * n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1).toNat

end

end A266180.P10107284051650038181

namespace A266180

/-- `A164073(4*n-char[2*n+1]+1)` -/
def P10107284051650038181.Spec : Prop :=
  ∀ n, P10107284051650038181.a n = A266180 n

end A266180

/-! ## A266180.P13305829506518085685

`A081631(A042948(n))`
-/

namespace A266180.P13305829506518085685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081631 (A042948 n).toNat

end

end A266180.P13305829506518085685

namespace A266180

/-- `A081631(A042948(n))` -/
def P13305829506518085685.Spec : Prop :=
  ∀ n, P13305829506518085685.a n = A266180 n

end A266180

/-! ## A266180.P15937250770958676335

`A074323(A047461(n+1))`
-/

namespace A266180.P15937250770958676335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (A047461 (n + 1)).toNat

end

end A266180.P15937250770958676335

namespace A266180

/-- `A074323(A047461(n+1))` -/
def P15937250770958676335.Spec : Prop :=
  ∀ n, P15937250770958676335.a n = A266180 n

end A266180

/-! ## A266180.P17900736076481160291

`A136258(A047470(n+1))`
-/

namespace A266180.P17900736076481160291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136258 (A047470 (n + 1)).toNat

end

end A266180.P17900736076481160291

namespace A266180

/-- `A136258(A047470(n+1))` -/
def P17900736076481160291.Spec : Prop :=
  ∀ n, P17900736076481160291.a n = A266180 n

end A266180

/-!
# A266182: Number of nX3 arrays containing 3 copies of 0..n-1 with no element plus any diagonal or antidiagonal neighbor equal to n-1.

The programs for A266182, there is no canonical definition to state claims against.
-/

/-! ## A266182.P1463206364392568433

`A266183(∑[n+3]+1)`
-/

namespace A266182.P1463206364392568433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266183 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266182.P1463206364392568433

/-! ## A266182.P5178974594223670638

`record[A266183(A130297(n+1))]`
-/

namespace A266182.P5178974594223670638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266183 (A130297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266182.P5178974594223670638

/-! ## A266182.P14582206501245069082

`record[A266183(gcd(n, A171224(n)))]`
-/

namespace A266182.P14582206501245069082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266183 (Int.gcd (n : ℤ) (A171224 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266182.P14582206501245069082

/-!
# A266183: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with no element plus any diagonal or antidiagonal neighbor equal to n-1.

The programs for A266183, there is no canonical definition to state claims against.
-/

/-! ## A266183.P11299377394048285408

`A182406(n+1)!%46`
-/

namespace A266183.P11299377394048285408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A182406 (n + 1)).toNat % 46

end

end A266183.P11299377394048285408

/-! ## A266183.P7698513587375522289

`A088257(A245049(n))%31`
-/

namespace A266183.P7698513587375522289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088257 (A245049 n).toNat) 31

end

end A266183.P7698513587375522289

/-! ## A266183.P17539889090028869470

`A065158(n+1)!%A322831(n+3)`
-/

namespace A266183.P17539889090028869470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A065158 (n + 1)).toNat : ℤ) (A322831 (n + 3))

end

end A266183.P17539889090028869470

/-! ## A266183.P2936529256810568487

`A114628(A249026(n))%A017053(n)`
-/

namespace A266183.P2936529256810568487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114628 (A249026 n).toNat) (A017053 n)

end

end A266183.P2936529256810568487

/-! ## A266183.P15154921904075981568

`A000142(A182406(n+1))%A069678(n+1)`
-/

namespace A266183.P15154921904075981568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 (A182406 (n + 1)).toNat) (A069678 (n + 1))

end

end A266183.P15154921904075981568

/-!
# A266184: Number of 3Xn arrays containing n copies of 0..3-1 with no element plus any diagonal or antidiagonal neighbor equal to 3-1.

The programs for A266184, there is no canonical definition to state claims against.
-/

/-! ## A266184.P6811556568155586234

`A266183(∑[n+2]+4)`
-/

namespace A266184.P6811556568155586234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266183 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A266184.P6811556568155586234

/-! ## A266184.P3741347626117532569

`lcm(2, A266183(A167614(n+1)))`
-/

namespace A266184.P3741347626117532569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A266183 (A167614 (n + 1)).toNat)

end

end A266184.P3741347626117532569

/-! ## A266184.P15957077328069759013

`A266183(A167614(n+1))+A031346(n)`
-/

namespace A266184.P15957077328069759013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266183 (A167614 (n + 1)).toNat + A031346 n

end

end A266184.P15957077328069759013

/-! ## A266184.P7988012834210952922

`A266183(A167614(n+1))+A035041(n)`
-/

namespace A266184.P7988012834210952922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266183 (A167614 (n + 1)).toNat + A035041 n

end

end A266184.P7988012834210952922

/-!
# A266185: Number of 4Xn arrays containing n copies of 0..4-1 with no element plus any diagonal or antidiagonal neighbor equal to 4-1.

The programs for A266185, there is no canonical definition to state claims against.
-/

/-! ## A266185.P12122502188430144460

`A266183(∑[n+3]+7)`
-/

namespace A266185.P12122502188430144460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266183 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A266185.P12122502188430144460

/-! ## A266185.P551266580690963317

`A266183(A167614(n+2)+1)%A266160(n+1)`
-/

namespace A266185.P551266580690963317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266183 (A167614 (n + 2) + 1).toNat) (A266160 (n + 1))

end

end A266185.P551266580690963317

/-! ## A266185.P7869728151668954275

`and(1, A127229(n+5))*A266183(A167614(n+2)+1)`
-/

namespace A266185.P7869728151668954275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A127229 (n + 5)) * A266183 (A167614 (n + 2) + 1).toNat

end

end A266185.P7869728151668954275

/-!
# A266186: a(n) = A266196(A000079(n)); indices of powers of 2 in A266195.

The programs for A266186, there is no canonical definition to state claims against.
-/

/-! ## A266186.P10978681717623483040

`A266196(A000079(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266186.P10978681717623483040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266196 (A000079 n).toNat

end

end A266186.P10978681717623483040

/-! ## A266186.P12670660468779509643

`record[(n+1)/A006257(A266195(n+1))]`
-/

namespace A266186.P12670660468779509643
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006257 (A266195 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266186.P12670660468779509643

/-! ## A266186.P13655886057867442007

`eq[1, A000120(A266195(n+1))]+1`
-/

namespace A266186.P13655886057867442007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A266195 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A266186.P13655886057867442007

/-! ## A266186.P17040264800132541182

`A266196(2^n)`
-/

namespace A266186.P17040264800132541182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266196 (2 ^ n)

end

end A266186.P17040264800132541182

/-! ## A266186.P15297936055938767168

`record[A266196(A001316(n))]`
-/

namespace A266186.P15297936055938767168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266196 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266186.P15297936055938767168

/-!
# A266187: a(n) = A266196(A000225(n)); index of (2^n)-1 in A266195.

The programs for A266187, there is no canonical definition to state claims against.
-/

/-! ## A266187.P14993657622073107778

`A266196(∑[2^n])`
-/

namespace A266187.P14993657622073107778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266196 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266187.P14993657622073107778

/-! ## A266187.P8137016833088696012

`record[A266196(A094024(n))]`
-/

namespace A266187.P8137016833088696012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266196 (A094024 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266187.P8137016833088696012

/-! ## A266187.P4309005177030089008

`record[A266196(A130330(n))]`
-/

namespace A266187.P4309005177030089008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266196 (A130330 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266187.P4309005177030089008

/-! ## A266187.P1891375873402661292

`record[A266196(Δ[A075427(n)])]`
-/

namespace A266187.P1891375873402661292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075427 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266196 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266187.P1891375873402661292

/-! ## A266187.P8213327039430282404

`record[A266196(A054429(n+1))]`
-/

namespace A266187.P8213327039430282404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266196 (A054429 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266187.P8213327039430282404

/-!
# A266188: a(n) = A004001(A087686(n)).

The programs for A266188, the canonical program `A266188.P4854341864644204876` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266188 has offset 1).

The definition of A266188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266188.P4854341864644204876

`A087686(n+1)-n`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A266188

/-- `A087686(n+1)-n` -/
def P4854341864644204876.Spec : Prop :=
  ∀ n, P4854341864644204876.a n = A266188 (n + 1)

theorem P4854341864644204876.correct : P4854341864644204876.Spec := by
  intro n
  simp only [A266188, Nat.add_sub_cancel]

end A266188

/-! ## A266188.P8905697939387918832

`A004001(n)+a(A004001(n))` with `a(0)=1, a(1)=1`
-/

namespace A266188.P8905697939387918832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A004001 n + a (A004001 n).toNat

end

end A266188.P8905697939387918832

namespace A266188

/-- `A004001(n)+a(A004001(n))` -/
def P8905697939387918832.Spec : Prop :=
  ∀ n, P8905697939387918832.a n = A266188 (n + 1)

end A266188

/-! ## A266188.P12639912832729301813

`A001478(n+1)+A087686(n+1)+1`
-/

namespace A266188.P12639912832729301813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A087686 (n + 1) + 1)

end

end A266188.P12639912832729301813

namespace A266188

/-- `A001478(n+1)+A087686(n+1)+1` -/
def P12639912832729301813.Spec : Prop :=
  ∀ n, P12639912832729301813.a n = A266188 (n + 1)

end A266188

/-! ## A266188.P15140683318008696751

`lt[1, A051135(n+1)]+1-n`
-/

namespace A266188.P15140683318008696751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) + (1 - (n : ℤ))

end

end A266188.P15140683318008696751

namespace A266188

/-- `lt[1, A051135(n+1)]+1-n` -/
def P15140683318008696751.Spec : Prop :=
  ∀ n, P15140683318008696751.a n = A266188 (n + 1)

end A266188

/-! ## A266188.P8279762912778917924

`A004001(A087686(n+1))`
-/

namespace A266188.P8279762912778917924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A087686 (n + 1)).toNat

end

end A266188.P8279762912778917924

namespace A266188

/-- `A004001(A087686(n+1))` -/
def P8279762912778917924.Spec : Prop :=
  ∀ n, P8279762912778917924.a n = A266188 (n + 1)

end A266188

/-! ## A266188.P18021900539131622452

`A028310(comp[A188163(n+1)])-n`
-/

namespace A266188.P18021900539131622452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188163 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - (n : ℤ)

end

end A266188.P18021900539131622452

namespace A266188

/-- `A028310(comp[A188163(n+1)])-n` -/
def P18021900539131622452.Spec : Prop :=
  ∀ n, P18021900539131622452.a n = A266188 (n + 1)

end A266188

/-! ## A266188.P721370918495383827

`A004074(lt[1, A051135(n+1)]+1)+n`
-/

namespace A266188.P721370918495383827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004074 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) + (n : ℤ)

end

end A266188.P721370918495383827

namespace A266188

/-- `A004074(lt[1, A051135(n+1)]+1)+n` -/
def P721370918495383827.Spec : Prop :=
  ∀ n, P721370918495383827.a n = A266188 (n + 1)

end A266188

/-! ## A266188.P3334950831140276321

`A114327(A000096(n))+A087686(n+1)`
-/

namespace A266188.P3334950831140276321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A000096 n).toNat + A087686 (n + 1)

end

end A266188.P3334950831140276321

namespace A266188

/-- `A114327(A000096(n))+A087686(n+1)` -/
def P3334950831140276321.Spec : Prop :=
  ∀ n, P3334950831140276321.a n = A266188 (n + 1)

end A266188

/-!
# A266189: Self-inverse permutation of nonnegative integers: a(n) = A263273(A264985(A263273(n))).

The programs for A266189, there is no canonical definition to state claims against.
-/

/-! ## A266189.P14363560751709718501

`A263273(A265353(n))`
-/

namespace A266189.P14363560751709718501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A265353 n).toNat

end

end A266189.P14363560751709718501

/-! ## A266189.P13437285250075311925

`A265354(A263273(n))`
-/

namespace A266189.P13437285250075311925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265354 (A263273 n).toNat

end

end A266189.P13437285250075311925

/-! ## A266189.P10362395546278749027

`A263273((A265341(n)-1)/2)`
-/

namespace A266189.P10362395546278749027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (SequenceMachineLib.roundAway ((A265341 n - 1 : ℚ) / 2)).toNat

end

end A266189.P10362395546278749027

/-! ## A266189.P3129393814204247787

`A263273(A266190(A264985(n)))`
-/

namespace A266189.P3129393814204247787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A266190 (A264985 n).toNat).toNat

end

end A266189.P3129393814204247787

/-! ## A266189.P17790545188839841134

`A265339(2*A263273(n)+1)`
-/

namespace A266189.P17790545188839841134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265339 (2 * A263273 n + 1).toNat

end

end A266189.P17790545188839841134

/-! ## A266189.P18035991396896855645

`A265354(A265352(A263272(n)))`
-/

namespace A266189.P18035991396896855645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265354 (A265352 (A263272 n).toNat).toNat

end

end A266189.P18035991396896855645

/-! ## A266189.P16590131896996020028

`A265354(A263272(A265351(n)))`
-/

namespace A266189.P16590131896996020028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265354 (A263272 (A265351 n).toNat).toNat

end

end A266189.P16590131896996020028

/-! ## A266189.P14998515151516176758

`A265339(A263273(n)+A263273(n)+1)`
-/

namespace A266189.P14998515151516176758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265339 (A263273 n + (A263273 n + 1)).toNat

end

end A266189.P14998515151516176758

/-! ## A266189.P10113518065404770853

`A265352(A265355(A263273(2*n-n)))`
-/

namespace A266189.P10113518065404770853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A265355 (A263273 (2 * n - n)).toNat).toNat

end

end A266189.P10113518065404770853

/-! ## A266189.P2041979517120965518

`A265354(A265354(A263272(A265355(n))))`
-/

namespace A266189.P2041979517120965518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265354 (A265354 (A263272 (A265355 n).toNat).toNat).toNat

end

end A266189.P2041979517120965518

/-! ## A266189.P15787618489859455717

`A263273(A266190(A264992(A264989(n))))`
-/

namespace A266189.P15787618489859455717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A266190 (A264992 (A264989 n).toNat).toNat).toNat

end

end A266189.P15787618489859455717

/-! ## A266189.P16151439958666726198

`A263273(A264985(A263273(A264975(A264976(n)))))`
-/

namespace A266189.P16151439958666726198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A264985 (A263273 (A264975 (A264976 n).toNat).toNat).toNat).toNat

end

end A266189.P16151439958666726198

/-! ## A266189.P6596758826128137991

`A264985(A265353(A265353(A265357(A265358(n)))))`
-/

namespace A266189.P6596758826128137991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265353 (A265353 (A265357 (A265358 n).toNat).toNat).toNat).toNat

end

end A266189.P6596758826128137991

/-! ## A266189.P9808905706028035499

`A263273(A264985(A265368(A264975(n))))`
-/

namespace A266189.P9808905706028035499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A264985 (A265368 (A264975 n).toNat).toNat).toNat

end

end A266189.P9808905706028035499

/-! ## A266189.P1572586983930188358

`A263273(A266190(A264989(A264991(n))))`
-/

namespace A266189.P1572586983930188358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A266190 (A264989 (A264991 n).toNat).toNat).toNat

end

end A266189.P1572586983930188358

/-! ## A266189.P12567526576082342258

`A265354(A265354(A265354(A266190(n))))`
-/

namespace A266189.P12567526576082342258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265354 (A265354 (A265354 (A266190 n).toNat).toNat).toNat

end

end A266189.P12567526576082342258

/-! ## A266189.P5357644523434793847

`A265354(A265352(A264989(A265357(n))))`
-/

namespace A266189.P5357644523434793847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265354 (A265352 (A264989 (A265357 n).toNat).toNat).toNat

end

end A266189.P5357644523434793847

/-! ## A266189.P17067848066322301647

`A265354(A265902(A265352(n)))`
-/

namespace A266189.P17067848066322301647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265354 (A265902 (A265352 n).toNat).toNat

end

end A266189.P17067848066322301647

/-! ## A266189.P11838443212598682339

`A265354(A265902(A265368(A264974(n))))`
-/

namespace A266189.P11838443212598682339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265354 (A265902 (A265368 (A264974 n).toNat).toNat).toNat

end

end A266189.P11838443212598682339

/-! ## A266189.P12130893475475381401

`A265354(A265902(A265354(A265356(n))))`
-/

namespace A266189.P12130893475475381401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265354 (A265902 (A265354 (A265356 n).toNat).toNat).toNat

end

end A266189.P12130893475475381401

/-!
# A266190: Self-inverse permutation of nonnegative integers: a(n) = A264985(A263273(A264985(n))).

The programs for A266190, there is no canonical definition to state claims against.
-/

/-! ## A266190.P16166999826763347370

`A265353(A264985(n))`
-/

namespace A266190.P16166999826763347370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265353 (A264985 n).toNat

end

end A266190.P16166999826763347370

/-! ## A266190.P5782718209365118528

`A264985(A265354(n))`
-/

namespace A266190.P5782718209365118528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265354 n).toNat

end

end A266190.P5782718209365118528

/-! ## A266190.P4228523537751570954

`A265353(A264996(n+1)-1)`
-/

namespace A266190.P4228523537751570954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265353 (A264996 (n + 1) - 1).toNat

end

end A266190.P4228523537751570954

/-! ## A266190.P17294536918158237318

`A265353((A264983(n)-1)/2)`
-/

namespace A266190.P17294536918158237318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265353 (SequenceMachineLib.roundAway ((A264983 n - 1 : ℚ) / 2)).toNat

end

end A266190.P17294536918158237318

/-! ## A266190.P14617947576331784174

`A265353(A265356(A263272(n)))`
-/

namespace A266190.P14617947576331784174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265353 (A265356 (A263272 n).toNat).toNat

end

end A266190.P14617947576331784174

/-! ## A266190.P15326268848071919530

`A265353(A263272(A265355(n)))`
-/

namespace A266190.P15326268848071919530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265353 (A263272 (A265355 n).toNat).toNat

end

end A266190.P15326268848071919530

/-! ## A266190.P13997181266602535719

`A265353(A265353(A263273(n)))`
-/

namespace A266190.P13997181266602535719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265353 (A265353 (A263273 n).toNat).toNat

end

end A266190.P13997181266602535719

/-! ## A266190.P6814270865643233067

`A265353(A265353(A263272(A265351(n))))`
-/

namespace A266190.P6814270865643233067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265353 (A265353 (A263272 (A265351 n).toNat).toNat).toNat

end

end A266190.P6814270865643233067

/-! ## A266190.P2950794801424366022

`A265353(A264992(A264989(n)))`
-/

namespace A266190.P2950794801424366022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265353 (A264992 (A264989 n).toNat).toNat

end

end A266190.P2950794801424366022

/-! ## A266190.P15148254542878623122

`A265353(A265353(A265353(A266189(n))))`
-/

namespace A266190.P15148254542878623122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265353 (A265353 (A265353 (A266189 n).toNat).toNat).toNat

end

end A266190.P15148254542878623122

/-! ## A266190.P1889902364505240394

`A265353(A264989(A264991(n)))`
-/

namespace A266190.P1889902364505240394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265353 (A264989 (A264991 n).toNat).toNat

end

end A266190.P1889902364505240394

/-! ## A266190.P6363445134976556638

`A265353(A265356(A264989(A265357(n))))`
-/

namespace A266190.P6363445134976556638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265353 (A265356 (A264989 (A265357 n).toNat).toNat).toNat

end

end A266190.P6363445134976556638

/-! ## A266190.P4465399849179102319

`A264985(A265339(Δ[n²]))`
-/

namespace A266190.P4465399849179102319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265339 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A266190.P4465399849179102319

/-! ## A266190.P10140427674540953256

`A264985(A265911(2*n+1)-1)`
-/

namespace A266190.P10140427674540953256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265911 (2 * n + 1) - 1).toNat

end

end A266190.P10140427674540953256

/-! ## A266190.P16067812168051935914

`A264985(A263273(A264985(A264976(A264975(n)))))`
-/

namespace A266190.P16067812168051935914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A263273 (A264985 (A264976 (A264975 n).toNat).toNat).toNat).toNat

end

end A266190.P16067812168051935914

/-! ## A266190.P14475521995739692259

`A264985(A263273(A264992(A264985(A264992(n)))))`
-/

namespace A266190.P14475521995739692259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A263273 (A264992 (A264985 (A264992 n).toNat).toNat).toNat).toNat

end

end A266190.P14475521995739692259

/-! ## A266190.P8905536002036493734

`A264985(A263273(A265356(A264985(A265356(n)))))`
-/

namespace A266190.P8905536002036493734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A263273 (A265356 (A264985 (A265356 n).toNat).toNat).toNat).toNat

end

end A266190.P8905536002036493734

/-! ## A266190.P1555112982651172235

`A265356(A265351(A264985(A265357(A265358(n)))))`
-/

namespace A266190.P1555112982651172235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265356 (A265351 (A264985 (A265357 (A265358 n).toNat).toNat).toNat).toNat

end

end A266190.P1555112982651172235

/-! ## A266190.P2127439436397679867

`A265353(A265353(A265902(A265352(n))))`
-/

namespace A266190.P2127439436397679867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265353 (A265353 (A265902 (A265352 n).toNat).toNat).toNat

end

end A266190.P2127439436397679867

/-! ## A266190.P15559866803294832016

`A265356(A265351(A265356(A265352(A265904(n)))))`
-/

namespace A266190.P15559866803294832016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265356 (A265351 (A265356 (A265352 (A265904 n).toNat).toNat).toNat).toNat

end

end A266190.P15559866803294832016

/-!
# A266193: Decrement by 1 all maximal digits in factorial base representation of n and then shift it one digit right.

The programs for A266193, there is no canonical definition to state claims against.
-/

/-! ## A266193.P15978905689185043882

`A225901(A266123(A225901(n)))`
-/

namespace A266193.P15978905689185043882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A266123 (A225901 n).toNat).toNat

end

end A266193.P15978905689185043882

/-! ## A266193.P18147266071025308649

`A273667(A275838(A266123(A273667(A275838(n)))))`
-/

namespace A266193.P18147266071025308649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273667 (A275838 (A266123 (A273667 (A275838 n).toNat).toNat).toNat).toNat

end

end A266193.P18147266071025308649

/-!
# A266194: Products of pairs made by match-making permutation: a(n) = A266195(n) * A266195(n+1).

The programs for A266194, there is no canonical definition to state claims against.
-/

/-! ## A266194.P16375563967333452340

`A266195(n+1)*A266195(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266194.P16375563967333452340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266195 (n + 1) * A266195 (n + 2)

end

end A266194.P16375563967333452340

/-! ## A266194.P16473348976659317609

`A215366(n)*A333483(A043317(n+1))`
-/

namespace A266194.P16473348976659317609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 n * A333483 (A043317 (n + 1)).toNat

end

end A266194.P16473348976659317609

/-! ## A266194.P10361072355579467359

`A333483(A043317(n+1))*A333483(n)`
-/

namespace A266194.P10361072355579467359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333483 (A043317 (n + 1)).toNat * A333483 n

end

end A266194.P10361072355579467359

/-! ## A266194.P4336314708148229421

`A333483(n+1)*A333483(A061479(n))`
-/

namespace A266194.P4336314708148229421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333483 (n + 1) * A333483 (A061479 n).toNat

end

end A266194.P4336314708148229421

/-! ## A266194.P13367507146575777509

`A333483(A353907(n+1))*A333483(n)`
-/

namespace A266194.P13367507146575777509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333483 (A353907 (n + 1)).toNat * A333483 n

end

end A266194.P13367507146575777509

/-!
# A266195: Match-making permutation: start with a(1) = 1, then always choose for a(n) the least unused number such that multiplying a(n) by a(n-1) does not produce any carries when performed in base 2.

The programs for A266195, there is no canonical definition to state claims against.
-/

/-! ## A266195.P5950360204075297377

`A266194(n)/a(n-1)` with `a(0)=1`
-/

namespace A266195.P5950360204075297377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A266194 n : ℚ) / a (n - 1)

end

end A266195.P5950360204075297377

/-! ## A266195.P3698799145581815038

`A266194(n)%(3^n)/a(A023443(n))` with `a(0)=1`
-/

namespace A266195.P3698799145581815038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.tmod (A266194 n) (3 ^ n : ℤ) : ℚ) / a (A023443 n).toNat

end

end A266195.P3698799145581815038

/-!
# A266197: Indices of "good matches" produced by match-making permutation A266195; numbers n for which A070939(A266195(n)) = A070939(A266195(n+1)), where A070939(n) gives the length of base-2 representation of n.

The programs for A266197, there is no canonical definition to state claims against.
-/

/-! ## A266197.P6638826208457482082

`eq[0, Δ[A264982(n+1)]]+1`
-/

namespace A266197.P6638826208457482082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A266197.P6638826208457482082

/-! ## A266197.P11135995370445532851

`eq[A264982(n+2), A264982(n+1)]+1`
-/

namespace A266197.P11135995370445532851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264982 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264982 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A266197.P11135995370445532851

/-! ## A266197.P17254065807590794839

`eq[A264982(n+1), A264982(A000038(n)+n)]`
-/

namespace A266197.P17254065807590794839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264982 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A266197.P17254065807590794839

/-! ## A266197.P13800959240207811420

`A266196(A265748(n+1))`
-/

namespace A266197.P13800959240207811420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266196 (A265748 (n + 1)).toNat

end

end A266197.P13800959240207811420

/-! ## A266197.P620237771907551070

`A266196(A265749(n+1))-1`
-/

namespace A266197.P620237771907551070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266196 (A265749 (n + 1)).toNat - 1

end

end A266197.P620237771907551070

/-!
# A266198: a(n) = H_5(2,n) where H_n is the n-th hyperoperator.

The programs for A266198, there is no canonical definition to state claims against.
-/

/-! ## A266198.P3643353659501941002

`a(n-1)^8` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A266198.P3643353659501941002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 4] fun n a =>
  a (n - 1) ^ 8

end

end A266198.P3643353659501941002

