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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
# A228800: Number of 5Xn binary arrays with top left element equal to 1 and no two ones adjacent horizontally or nw-se.

The programs for A228800, there is no canonical definition to state claims against.
-/

/-! ## A228800.P14417683044300512632

`A228796(∑[n+5]-(n-10))`
-/

namespace A228800.P14417683044300512632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 10)).toNat

end

end A228800.P14417683044300512632

/-! ## A228800.P11993001580807666765

`A228796(A167499(n+3))+A000122(3*n+2)`
-/

namespace A228800.P11993001580807666765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (A167499 (n + 3)).toNat + A000122 (3 * n + 2)

end

end A228800.P11993001580807666765

/-! ## A228800.P12300505593606282170

`A228796(A167499(n+3))+A056594(2*n+3)`
-/

namespace A228800.P12300505593606282170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (A167499 (n + 3)).toNat + A056594 (2 * n + 3)

end

end A228800.P12300505593606282170

/-! ## A228800.P13607766166822019266

`A228796(A167499(n+3))+A007949(3*n+4)`
-/

namespace A228800.P13607766166822019266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (A167499 (n + 3)).toNat + A007949 (3 * n + 4)

end

end A228800.P13607766166822019266

/-!
# A228801: Number of 6Xn binary arrays with top left element equal to 1 and no two ones adjacent horizontally or nw-se.

The programs for A228801, there is no canonical definition to state claims against.
-/

/-! ## A228801.P250053442706665793

`A228796(A056115(n)+21)`
-/

namespace A228801.P250053442706665793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (A056115 n + 21).toNat

end

end A228801.P250053442706665793

/-! ## A228801.P5130809977907684897

`A228796(Δ[A264443(n)]+10)`
-/

namespace A228801.P5130809977907684897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (f1 (n + 1) - f1 n + 10).toNat

end

end A228801.P5130809977907684897

/-! ## A228801.P4542271040459603880

`A228796(A056000(n+1)+16)`
-/

namespace A228801.P4542271040459603880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (A056000 (n + 1) + 16).toNat

end

end A228801.P4542271040459603880

/-! ## A228801.P10618993744547826882

`A228796(eq[7, A131818(n+1)])`
-/

namespace A228801.P10618993744547826882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228801.P10618993744547826882

/-! ## A228801.P16018372129782694920

`A228796(Δ[A023545(n+1)]+10)`
-/

namespace A228801.P16018372129782694920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (f1 (n + 1) - f1 n + 10).toNat

end

end A228801.P16018372129782694920

/-!
# A228802: Number of 7Xn binary arrays with top left element equal to 1 and no two ones adjacent horizontally or nw-se.

The programs for A228802, there is no canonical definition to state claims against.
-/

/-! ## A228802.P5338165933674077680

`A228796(A056119(n)+28)`
-/

namespace A228802.P5338165933674077680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (A056119 n + 28).toNat

end

end A228802.P5338165933674077680

/-! ## A228802.P280270592592300387

`A228796(eq[11, A066657(n)])`
-/

namespace A228802.P280270592592300387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228802.P280270592592300387

/-! ## A228802.P6618165870808821602

`A228796(A000217(n+6)+7)`
-/

namespace A228802.P6618165870808821602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (A000217 (n + 6) + 7).toNat

end

end A228802.P6618165870808821602

/-! ## A228802.P15390738418288135178

`A228796(A052905(n+3)+12)`
-/

namespace A228802.P15390738418288135178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (A052905 (n + 3) + 12).toNat

end

end A228802.P15390738418288135178

/-! ## A228802.P13489608127405473725

`A228796(eq[8, A131818(n+1)])`
-/

namespace A228802.P13489608127405473725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228802.P13489608127405473725

/-!
# A228803: Denominators of rational numbers having continued fraction consisting entirely of 1s and 2s.

The programs for A228803, there is no canonical definition to state claims against.
-/

/-! ## A228803.P14864235859542686524

`eq[A288303(n)%2, char[A228804(n+1)]]`
-/

namespace A228803.P14864235859542686524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288303 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228804 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A228803.P14864235859542686524

/-! ## A228803.P10249807595438069619

`eq[char[A228804(n+1)], A346234((n+1)²)]`
-/

namespace A228803.P10249807595438069619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228804 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346234 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A228803.P10249807595438069619

/-! ## A228803.P17611636835915380051

`eq[char[A228804(n+1)], A000007(n²)]`
-/

namespace A228803.P17611636835915380051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228804 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A228803.P17611636835915380051

/-! ## A228803.P17289006592728374930

`eq[char[A228804(n+1)], A326937((n+1)²)]`
-/

namespace A228803.P17289006592728374930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228804 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326937 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A228803.P17289006592728374930

/-! ## A228803.P5323087195566872646

`eq[char[A228804(n+1)], A151933(n)]`
-/

namespace A228803.P5323087195566872646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228804 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A228803.P5323087195566872646

/-!
# A228804: Numbers which are not a denominator of a rational number having a continued fraction consisting entirely of 1s and 2s; complement of A228803.

The programs for A228804, there is no canonical definition to state claims against.
-/

/-! ## A228804.P7499701713736888288

`lt[2, A006839(A233583(n+1))]`
-/

namespace A228804.P7499701713736888288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006839 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A228804.P7499701713736888288

/-! ## A228804.P12990825166146021523

`eq[char[A228803(n+1)], A151933(n)]`
-/

namespace A228804.P12990825166146021523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228803 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A228804.P12990825166146021523

/-! ## A228804.P6053026363633253841

`A305302(A000142(n))+A047609(n+3)`
-/

namespace A228804.P6053026363633253841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305302 (A000142 n).toNat + A047609 (n + 3)

end

end A228804.P6053026363633253841

/-!
# A228807: a(n) = phi( a(n-1) + a(n-2) + 1) with a(0) = 0 and a(1) = 1.

The programs for A228807, there is no canonical definition to state claims against.
-/

/-! ## A228807.P2704329868391318588

`A000010(a(n-1)+a(n-2)+1)` with `a(0)=0, a(1)=1`
-/

namespace A228807.P2704329868391318588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000010 (a (n - 1) + (a (n - 2) + 1)).toNat

end

end A228807.P2704329868391318588

/-! ## A228807.P10545976385258708024

`A000010(a(n-1)-xor(-1, a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A228807.P10545976385258708024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000010 (a (n - 1) - Int.xor (-1) (a (n - 2))).toNat

end

end A228807.P10545976385258708024

/-! ## A228807.P4320412788427014831

`A000010(2-floor(1-a(n-1)-a(n-2)))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A228807.P4320412788427014831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000010 (2 - (1 - a (n - 1) - a (n - 2))).toNat

end

end A228807.P4320412788427014831

/-! ## A228807.P6461093115970647797

`A000010(4/2-(1-a(n-1)-a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A228807.P6461093115970647797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000010 (SequenceMachineLib.roundAway ((4 : ℚ) / 2 - (1 - a (n - 1) - a (n - 2) : ℚ))).toNat

end

end A228807.P6461093115970647797

/-! ## A228807.P8662876990613711288

`A000010(2-((1-a(n-1))%a(n-1)-a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A228807.P8662876990613711288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000010 (2 - (Int.tmod (1 - a (n - 1)) (a (n - 1)) - a (n - 2))).toNat

end

end A228807.P8662876990613711288

/-!
# A228808: a(n) = Sum_{k=0..n} binomial(n*k, k^2).

The programs for A228808, there is no canonical definition to state claims against.
-/

/-! ## A228808.P5050293672938284174

`2*A191576(a(n-1))` with `a(0)=1`
-/

namespace A228808.P5050293672938284174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A191576 (a (n - 1)).toNat

end

end A228808.P5050293672938284174

/-!
# A228809: G.f.: exp( Sum_{n>=1} x^n/n * Sum_{k=0..n} binomial(n*k, k^2) ).

The programs for A228809, there is no canonical definition to state claims against.
-/

/-! ## A228809.P5113314299662133036

`A344293(A000108(n))+A306200(n)`
-/

namespace A228809.P5113314299662133036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344293 (A000108 n).toNat + A306200 n

end

end A228809.P5113314299662133036

/-!
# A228811: GCD's arising in A228810.

The programs for A228811, there is no canonical definition to state claims against.
-/

/-! ## A228811.P17845372112926084417

`A028310(a(n-1)*a(n-1))` with `a(0)=11, a(1)=43, a(2)=11, a(3)=11`
-/

namespace A228811.P17845372112926084417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11, 43, 11, 11] fun n a =>
  A028310 (a (n - 1) * a (n - 1)).toNat

end

end A228811.P17845372112926084417

/-!
# A228812: Triangle read by rows: T(n,k), n>=1, k>=1, in which row n lists m terms, where m = A055086(n). If k divides n and k < n^(1/2) then T(n,k) = k and T(n,m-k+1) = n/T(n,k). Also, if k^2 = n then T(n,k) = k. Other terms are zeros.

The programs for A228812, there is no canonical definition to state claims against.
-/

/-! ## A228812.P563683645849837687

`A001222(A007954(A348907(n+2))^A165416(n+1))`
-/

namespace A228812.P563683645849837687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A007954 (A348907 (n + 2)).toNat : ℚ) ^ (A165416 (n + 1) : ℤ))).toNat

end

end A228812.P563683645849837687

/-! ## A228812.P9741880716203202789

`A165416(n+1)%A226087(A022130(n))`
-/

namespace A228812.P9741880716203202789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165416 (n + 1)) (A226087 (A022130 n).toNat)

end

end A228812.P9741880716203202789

/-! ## A228812.P5460869062245850685

`lcm(A165416(n+1), A244895(A007477(n)))`
-/

namespace A228812.P5460869062245850685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165416 (n + 1)) (A244895 (A007477 n).toNat)

end

end A228812.P5460869062245850685

/-!
# A228813: Triangle read by rows T(n,k) in which column k lists 1's interleaved with A004526(k-1) zeros starting from the row A002620(k+1), with n>=1, k>=1.

The programs for A228813, there is no canonical definition to state claims against.
-/

/-! ## A228813.P623866675564148226

`ceil(A228814(n+1)/18)`
-/

namespace A228813.P623866675564148226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A228814 (n + 1) : ℚ) / 18⌉

end

end A228813.P623866675564148226

/-! ## A228813.P15825233858354406608

`A057427(A228814(n+1))`
-/

namespace A228813.P15825233858354406608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A228814 (n + 1)).toNat

end

end A228813.P15825233858354406608

/-! ## A228813.P14749530775953241602

`A002828(A228814(n+1)²)`
-/

namespace A228813.P14749530775953241602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A228814 (n + 1) ^ 2).toNat

end

end A228813.P14749530775953241602

/-! ## A228813.P17477106733537245234

`A165581(A228814(n+1)²)`
-/

namespace A228813.P17477106733537245234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165581 (A228814 (n + 1) ^ 2).toNat

end

end A228813.P17477106733537245234

/-! ## A228813.P16490448593577954042

`A060576(A228814(n+1)+1)`
-/

namespace A228813.P16490448593577954042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A228814 (n + 1) + 1).toNat

end

end A228813.P16490448593577954042

/-! ## A228813.P12782369239842707637

`A323022(A228814(n+1)+1)`
-/

namespace A228813.P12782369239842707637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A228814 (n + 1) + 1).toNat

end

end A228813.P12782369239842707637

/-! ## A228813.P16828508549527293089

`A139128(A228814(n+1)+2)`
-/

namespace A228813.P16828508549527293089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139128 (A228814 (n + 1) + 2).toNat

end

end A228813.P16828508549527293089

/-! ## A228813.P343335595035400318

`A179184(A228814(n+1)+2)`
-/

namespace A228813.P343335595035400318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 (A228814 (n + 1) + 2).toNat

end

end A228813.P343335595035400318

/-! ## A228813.P12912641942695295704

`A022932(2*A228814(n+1))`
-/

namespace A228813.P12912641942695295704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022932 (2 * A228814 (n + 1)).toNat

end

end A228813.P12912641942695295704

/-! ## A228813.P1088127085358472609

`A016086(31-A228814(n+1))`
-/

namespace A228813.P1088127085358472609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016086 (31 - A228814 (n + 1)).toNat

end

end A228813.P1088127085358472609

/-!
# A228814: Triangle read by rows T(n,k), n>=1, k>=1, in which column k starts in row A002620(k+1). If k is odd the column k lists j's interleaved with (k-1)/2 zeros, where j = (k+1)/2. Otherwise, if k is even the column k lists the positive integers but starting from k/2+1, interleaved with (k-2)/2 zeros.

The programs for A228814, there is no canonical definition to state claims against.
-/

/-! ## A228814.P16870217714493965798

`A210959(∑[A228813(n+1)])*A228813(n+1)`
-/

namespace A228814.P16870217714493965798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210959 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A228813 (n + 1)

end

end A228814.P16870217714493965798

/-! ## A228814.P10212883720130547804

`A156837(A208753(n+1))`
-/

namespace A228814.P10212883720130547804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156837 (A208753 (n + 1)).toNat

end

end A228814.P10212883720130547804

/-! ## A228814.P9963772574540457088

`A082375(C(n, A287206(A330609(n))))`
-/

namespace A228814.P9963772574540457088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 (Nat.choose n (A287206 (A330609 n).toNat).toNat)

end

end A228814.P9963772574540457088

/-! ## A228814.P5603931994450287857

`A034807(n+1)%A054728(A119020(n))`
-/

namespace A228814.P5603931994450287857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034807 (n + 1)) (A054728 (A119020 n).toNat)

end

end A228814.P5603931994450287857

/-! ## A228814.P17592975442636661774

`A034807(n+1)*A236861(A350041(n+1))`
-/

namespace A228814.P17592975442636661774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034807 (n + 1) * A236861 (A350041 (n + 1)).toNat

end

end A228814.P17592975442636661774

/-!
# A228815: Symmetric triangle, read by rows, related to Fibonacci numbers.

The programs for A228815, there is no canonical definition to state claims against.
-/

/-! ## A228815.P7984574512845858485

`A091533(n)-A091562(n)`
-/

namespace A228815.P7984574512845858485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091533 n - A091562 n

end

end A228815.P7984574512845858485

/-! ## A228815.P4142741692883734381

`A209167(n+1)-A091533(n)`
-/

namespace A228815.P4142741692883734381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209167 (n + 1) - A091533 n

end

end A228815.P4142741692883734381

/-! ## A228815.P1683027144198472298

`A209137(n+1)-A205575(n)`
-/

namespace A228815.P1683027144198472298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209137 (n + 1) - A205575 n

end

end A228815.P1683027144198472298

/-! ## A228815.P292369801528501724

`(A209167(n+1)-A091562(n))/2`
-/

namespace A228815.P292369801528501724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209167 (n + 1) - A091562 n : ℚ) / 2

end

end A228815.P292369801528501724

/-! ## A228815.P17441799692152396084

`A209138(A038722(n+1))-A205575(n)`
-/

namespace A228815.P17441799692152396084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209138 (A038722 (n + 1)).toNat - A205575 n

end

end A228815.P17441799692152396084

/-! ## A228815.P4310001904259972578

`A014682(A209167(n+1)-A091562(n))`
-/

namespace A228815.P4310001904259972578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A209167 (n + 1) - A091562 n).toNat

end

end A228815.P4310001904259972578

/-! ## A228815.P14079311532692467660

`A273943(A209167(n+1)-A091562(n))`
-/

namespace A228815.P14079311532692467660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A209167 (n + 1) - A091562 n).toNat

end

end A228815.P14079311532692467660

/-! ## A228815.P14750932411349550949

`A004525(A209167(n+1)-A091562(n))`
-/

namespace A228815.P14750932411349550949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A209167 (n + 1) - A091562 n).toNat

end

end A228815.P14750932411349550949

/-! ## A228815.P13120816326766009723

`A078898(A209167(n+1)-A091562(n))`
-/

namespace A228815.P13120816326766009723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A209167 (n + 1) - A091562 n).toNat

end

end A228815.P13120816326766009723

/-!
# A228816: Sum of all parts of all partitions of n that contain 1 as a part.

The programs for A228816, there is no canonical definition to state claims against.
-/

/-! ## A228816.P12757290111431399263

`(n+1)*A000041(n)`
-/

namespace A228816.P12757290111431399263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000041 n

end

end A228816.P12757290111431399263

/-! ## A228816.P7403212778546836909

`A066186(n)+A000041(n)`
-/

namespace A228816.P7403212778546836909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n + A000041 n

end

end A228816.P7403212778546836909

/-! ## A228816.P4081736240836686054

`(n+1)*∑[A002865(n)]`
-/

namespace A228816.P4081736240836686054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228816.P4081736240836686054

/-! ## A228816.P5229285708077905318

`(n+1)*(A000065(n)+1)`
-/

namespace A228816.P5229285708077905318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000065 n + 1)

end

end A228816.P5229285708077905318

/-! ## A228816.P18188574266740307818

`(n+1)/2*A139582(n)`
-/

namespace A228816.P18188574266740307818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A139582 n : ℚ)

end

end A228816.P18188574266740307818

/-! ## A228816.P10463777493634086478

`(n+1)*(A133041(n)-n)`
-/

namespace A228816.P10463777493634086478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A133041 n - (n : ℤ))

end

end A228816.P10463777493634086478

/-! ## A228816.P13604790928127479373

`(n+1)*∑[A085811(n+3)]`
-/

namespace A228816.P13604790928127479373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228816.P13604790928127479373

/-! ## A228816.P10183898128253132703

`A066186(n)+∑[A002865(n)]`
-/

namespace A228816.P10183898128253132703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228816.P10183898128253132703

/-! ## A228816.P7816759922650831877

`A000065(n)+A066186(n)+1`
-/

namespace A228816.P7816759922650831877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (A066186 n + 1)

end

end A228816.P7816759922650831877

/-! ## A228816.P245000466231245219

`A066186(n)+A139582(n)/2`
-/

namespace A228816.P245000466231245219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066186 n : ℚ) + (A139582 n : ℚ) / 2

end

end A228816.P245000466231245219

/-! ## A228816.P9759555759626760630

`A000041(n)*A328399(2*n)`
-/

namespace A228816.P9759555759626760630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A328399 (2 * n)

end

end A228816.P9759555759626760630

/-! ## A228816.P195205899546850495

`A066186(n)+A133041(n)-n`
-/

namespace A228816.P195205899546850495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n + (A133041 n - (n : ℤ))

end

end A228816.P195205899546850495

/-! ## A228816.P10436230240652635867

`(n+1)*(A047967(n)+A000009(n))`
-/

namespace A228816.P10436230240652635867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A047967 n + A000009 n)

end

end A228816.P10436230240652635867

/-! ## A228816.P17144776371257381620

`(n+1)*(A295341(n)+A000726(n))`
-/

namespace A228816.P17144776371257381620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A295341 n + A000726 n)

end

end A228816.P17144776371257381620

/-! ## A228816.P5792074694131021843

`A066186(n)+A093694(n)-A006128(n)`
-/

namespace A228816.P5792074694131021843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n + (A093694 n - A006128 n)

end

end A228816.P5792074694131021843

/-! ## A228816.P16417074862381757999

`A046746(n+1)+A066186(n)-A182708(n+1)`
-/

namespace A228816.P16417074862381757999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046746 (n + 1) + (A066186 n - A182708 (n + 1))

end

end A228816.P16417074862381757999

/-! ## A228816.P5882577475030762588

`A066186(n+1)-A138880(n+1)`
-/

namespace A228816.P5882577475030762588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A138880 (n + 1)

end

end A228816.P5882577475030762588

/-! ## A228816.P82603023504702194

`A066186(n+1)/A299474(n+1)*A299474(n)`
-/

namespace A228816.P82603023504702194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066186 (n + 1) : ℚ) / (A299474 (n + 1) : ℚ) * (A299474 n : ℚ)

end

end A228816.P82603023504702194

/-! ## A228816.P12940604812810919214

`A000041(n)+A220909(n)/2`
-/

namespace A228816.P12940604812810919214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n : ℚ) + (A220909 n : ℚ) / 2

end

end A228816.P12940604812810919214

/-! ## A228816.P6767375710986885179

`A066186(n)+A183011(n)/A183010(n)`
-/

namespace A228816.P6767375710986885179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066186 n : ℚ) + (A183011 n : ℚ) / (A183010 n : ℚ)

end

end A228816.P6767375710986885179

/-!
# A228820: Sum of positive F-ranks of all compositions of n. Also, sum of positive L-ranks of all compositions of n (see comments lines for definition).

The programs for A228820, there is no canonical definition to state claims against.
-/

/-! ## A228820.P5234370327534555805

`A059995(∑[A158661(n)])`
-/

namespace A228820.P5234370327534555805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A228820.P5234370327534555805

/-! ## A228820.P11210649498265246155

`A008647(or(2*A075158(n), A048498(n)))`
-/

namespace A228820.P11210649498265246155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (Int.lor (2 * A075158 n) (A048498 n)).toNat

end

end A228820.P11210649498265246155

/-! ## A228820.P1325665608963970574

`A008647(or(A075158(n)+n, A048498(n)))`
-/

namespace A228820.P1325665608963970574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (Int.lor (A075158 n + (n : ℤ)) (A048498 n)).toNat

end

end A228820.P1325665608963970574

/-! ## A228820.P7656506784551278650

`A008676(2*A048496(n))`
-/

namespace A228820.P7656506784551278650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (2 * A048496 n).toNat

end

end A228820.P7656506784551278650

/-! ## A228820.P3077090326686866094

`A008676(lcm(2, A048496(n)))`
-/

namespace A228820.P3077090326686866094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (Int.lcm 2 (A048496 n))

end

end A228820.P3077090326686866094

/-!
# A228822: Largest digit of n minus the number of digits of n.

The programs for A228822, the canonical program `A228822.P6281530338051954029` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228822 has offset 0).

The definition of A228822 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054055, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A228822.P6281530338051954029

`A054055(n)-A055642(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A228822

/-- `A054055(n)-A055642(n)` -/
def P6281530338051954029.Spec : Prop :=
  ∀ n, P6281530338051954029.a n = A228822 n

theorem P6281530338051954029.correct : P6281530338051954029.Spec := by
  intro n
  simp only [A228822]

end A228822

/-! ## A228822.P10669856176995179729

`∑{digits}[∑{digits}[n, 10^#]+1, 1-#]`
-/

namespace A228822.P10669856176995179729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 10 ^ x).sum + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 1 - (x : ℤ)).sum

end

end A228822.P10669856176995179729

namespace A228822

/-- `∑{digits}[∑{digits}[n, 10^#]+1, 1-#]` -/
def P10669856176995179729.Spec : Prop :=
  ∀ n, P10669856176995179729.a n = A228822 n

end A228822

/-! ## A228822.P823079165214589490

`∑{digits}[A348783(n)+1, 1-#]`
-/

namespace A228822.P823079165214589490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348783 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - (x : ℤ)).sum

end

end A228822.P823079165214589490

namespace A228822

/-- `∑{digits}[A348783(n)+1, 1-#]` -/
def P823079165214589490.Spec : Prop :=
  ∀ n, P823079165214589490.a n = A228822 n

end A228822

/-! ## A228822.P4096928542709475756

`A054055(n)-dr(A348783(n))`
-/

namespace A228822.P4096928542709475756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n - (SequenceMachineLib.digitalRoot (A348783 n) : ℤ)

end

end A228822.P4096928542709475756

namespace A228822

/-- `A054055(n)-dr(A348783(n))` -/
def P4096928542709475756.Spec : Prop :=
  ∀ n, P4096928542709475756.a n = A228822 n

end A228822

/-! ## A228822.P16790698840072735428

`val(A069877(n), 2)-A055642(n)`
-/

namespace A228822.P16790698840072735428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A069877 n).toNat 2 : ℤ) - A055642 n

end

end A228822.P16790698840072735428

namespace A228822

/-- `val(A069877(n), 2)-A055642(n)` -/
def P16790698840072735428.Spec : Prop :=
  ∀ n, P16790698840072735428.a n = A228822 n

end A228822

/-! ## A228822.P314106147077063272

`A000030(A004186(n))-A055642(n)`
-/

namespace A228822.P314106147077063272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A004186 n).toNat - A055642 n

end

end A228822.P314106147077063272

namespace A228822

/-- `A000030(A004186(n))-A055642(n)` -/
def P314106147077063272.Spec : Prop :=
  ∀ n, P314106147077063272.a n = A228822 n

end A228822

/-! ## A228822.P1143708702482990668

`A000523(A086066(n))-A055642(n)`
-/

namespace A228822.P1143708702482990668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A086066 n).toNat - A055642 n

end

end A228822.P1143708702482990668

namespace A228822

/-- `A000523(A086066(n))-A055642(n)` -/
def P1143708702482990668.Spec : Prop :=
  ∀ n, P1143708702482990668.a n = A228822 n

end A228822

/-! ## A228822.P15379709503919648152

`A054055(n)-A054055(A308003(n))`
-/

namespace A228822.P15379709503919648152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n - A054055 (A308003 n).toNat

end

end A228822.P15379709503919648152

namespace A228822

/-- `A054055(n)-A054055(A308003(n))` -/
def P15379709503919648152.Spec : Prop :=
  ∀ n, P15379709503919648152.a n = A228822 n

end A228822

/-! ## A228822.P3726991190188539315

`A054055(n)-A054055(A308005(n))`
-/

namespace A228822.P3726991190188539315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n - A054055 (A308005 n).toNat

end

end A228822.P3726991190188539315

namespace A228822

/-- `A054055(n)-A054055(A308005(n))` -/
def P3726991190188539315.Spec : Prop :=
  ∀ n, P3726991190188539315.a n = A228822 n

end A228822

/-! ## A228822.P971713862915929778

`A054055(n)-∑{digits}[n, A007318(A007318(#))]`
-/

namespace A228822.P971713862915929778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A007318 (A007318 x).toNat).sum

end

end A228822.P971713862915929778

namespace A228822

/-- `A054055(n)-∑{digits}[n, A007318(A007318(#))]` -/
def P971713862915929778.Spec : Prop :=
  ∀ n, P971713862915929778.a n = A228822 n

end A228822

/-! ## A228822.P8755133910864506834

`val(A069877(n), 2)-∑{digits}[n, A007318(A007318(#))]`
-/

namespace A228822.P8755133910864506834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A069877 n).toNat 2 : ℤ) - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A007318 (A007318 x).toNat).sum

end

end A228822.P8755133910864506834

namespace A228822

/-- `val(A069877(n), 2)-∑{digits}[n, A007318(A007318(#))]` -/
def P8755133910864506834.Spec : Prop :=
  ∀ n, P8755133910864506834.a n = A228822 n

end A228822

/-! ## A228822.P4933752537829877553

`A004185(n)%10-∑{digits}[n, A007318(A007318(#))]`
-/

namespace A228822.P4933752537829877553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004185 n) 10 - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A007318 (A007318 x).toNat).sum

end

end A228822.P4933752537829877553

namespace A228822

/-- `A004185(n)%10-∑{digits}[n, A007318(A007318(#))]` -/
def P4933752537829877553.Spec : Prop :=
  ∀ n, P4933752537829877553.a n = A228822 n

end A228822

/-! ## A228822.P10694222758005048814

`A047842(n)%10-∑{digits}[n, A007318(A007318(#))]`
-/

namespace A228822.P10694222758005048814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047842 n) 10 - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A007318 (A007318 x).toNat).sum

end

end A228822.P10694222758005048814

namespace A228822

/-- `A047842(n)%10-∑{digits}[n, A007318(A007318(#))]` -/
def P10694222758005048814.Spec : Prop :=
  ∀ n, P10694222758005048814.a n = A228822 n

end A228822

/-! ## A228822.P3138191438312214955

`A054055(n)-A014963(A113019(n))`
-/

namespace A228822.P3138191438312214955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n - A014963 (A113019 n).toNat

end

end A228822.P3138191438312214955

namespace A228822

/-- `A054055(n)-A014963(A113019(n))` -/
def P3138191438312214955.Spec : Prop :=
  ∀ n, P3138191438312214955.a n = A228822 n

end A228822

/-!
# A228823: Triangle read by rows: T(n,k) = total number of parts in all partitions of n that contain k as a part, n>=1, 1<=k<=n.

The programs for A228823, there is no canonical definition to state claims against.
-/

/-! ## A228823.P7524299400250398702

`A093694(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A228823.P7524299400250398702
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A228823.P7524299400250398702

/-! ## A228823.P15851268807587299955

`A093694(C(comp[∑[n]]-n, 2)-n-1)`
-/

namespace A228823.P15851268807587299955
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A228823.P15851268807587299955

/-! ## A228823.P12898172795485113935

`A093694(∑[char[∑[n+1]]]-(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A228823.P12898172795485113935
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ))).toNat

end

end A228823.P12898172795485113935

/-! ## A228823.P14182213353559794157

`A093694(A025581(n))`
-/

namespace A228823.P14182213353559794157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 (A025581 n).toNat

end

end A228823.P14182213353559794157

/-! ## A228823.P1244430117286572986

`A093694(log2(A130321(n)))`
-/

namespace A228823.P1244430117286572986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A228823.P1244430117286572986

/-! ## A228823.P13794302708101104787

`A093694(val(A036561(n), 2))`
-/

namespace A228823.P13794302708101104787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 (SequenceMachineLib.valuation (A036561 n).toNat 2)

end

end A228823.P13794302708101104787

/-!
# A228826: Delayed continued fraction of sqrt(2).

The programs for A228826, the canonical program `A228826.P12349353285794542265` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228826 has offset 0).

The definition of A228826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228826.P12349353285794542265

`-a(n-2)` with `a(0)=2, a(1)=-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228826

/-- `-a(n-2)` -/
def P12349353285794542265.Spec : Prop :=
  ∀ n, P12349353285794542265.a n = A228826 n

theorem P12349353285794542265.correct : P12349353285794542265.Spec := by
  intro n
  simp only [A228826]

end A228826

/-!
# A228827: Numerators of the first bisection of the inverse binomial transform of the rational sequence with e.g.f. (x/2)*(exp(-x)+1)/(exp(x)-1).

The programs for A228827, there is no canonical definition to state claims against.
-/

/-! ## A228827.P10338179252071445395

`A000367(n)+A002445(n)*A229135(n)`
-/

namespace A228827.P10338179252071445395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000367 n + A002445 n * A229135 n

end

end A228827.P10338179252071445395

/-!
# A228828: Numbers n such that n^2 + pi(n) is prime.

The programs for A228828, there is no canonical definition to state claims against.
-/

/-! ## A228828.P8504224317340864970

`floor(sqrt(A228865(n+1)))`
-/

namespace A228828.P8504224317340864970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A228865 (n + 1))

end

end A228828.P8504224317340864970

/-! ## A228828.P6553361926814470027

`round(sqrt(A228865(n+1)+A026741(n)))`
-/

namespace A228828.P6553361926814470027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A228865 (n + 1) + A026741 n : ℝ))

end

end A228828.P6553361926814470027

/-! ## A228828.P12722514295675924440

`round(sqrt(A228865(n+1)+A062157(n)))`
-/

namespace A228828.P12722514295675924440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A228865 (n + 1) + A062157 n : ℝ))

end

end A228828.P12722514295675924440

/-! ## A228828.P2375138563948077742

`round(sqrt(A228865(n+1)+A136400(n)))`
-/

namespace A228828.P2375138563948077742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A228865 (n + 1) + A136400 n : ℝ))

end

end A228828.P2375138563948077742

/-! ## A228828.P7310549159258489418

`round(sqrt(A228865(n+1)-A001468(n)))`
-/

namespace A228828.P7310549159258489418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A228865 (n + 1) - A001468 n : ℝ))

end

end A228828.P7310549159258489418

/-! ## A228828.P11438700006384340319

`round(sqrt(A228865(n+1)-A005843(n)))`
-/

namespace A228828.P11438700006384340319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A228865 (n + 1) - A005843 n : ℝ))

end

end A228828.P11438700006384340319

/-! ## A228828.P1274398327309923513

`round(sqrt(A228865(n+1)-A195161(n)))`
-/

namespace A228828.P1274398327309923513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A228865 (n + 1) - A195161 n : ℝ))

end

end A228828.P1274398327309923513

/-! ## A228828.P8927438201200086022

`round(sqrt(A292777(n+1)+A228865(n+1)))`
-/

namespace A228828.P8927438201200086022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A292777 (n + 1) + A228865 (n + 1) : ℝ))

end

end A228828.P8927438201200086022

/-! ## A228828.P16378506164418125848

`floor(sqrt(p?[A000720(n+1)+(n+1)²]))`
-/

namespace A228828.P16378506164418125848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A228828.P16378506164418125848

/-!
# A228829: a(n) = (m+n-k) mod (m-n+k) where k = BigOmega(n) and m is the next larger integer after n with the same k = BigOmega(m) as n.

The programs for A228829, there is no canonical definition to state claims against.
-/

/-! ## A228829.P12763209878766863663

`and(A079025(n), A301987(A246072(n+1)))`
-/

namespace A228829.P12763209878766863663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A079025 n) (A301987 (A246072 (n + 1)).toNat)

end

end A228829.P12763209878766863663

/-! ## A228829.P17024446116820977300

`A354100(A013583(n+1)*A324703(n+1))`
-/

namespace A228829.P17024446116820977300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354100 (A013583 (n + 1) * A324703 (n + 1)).toNat

end

end A228829.P17024446116820977300

/-! ## A228829.P15009214400979842844

`A368857(and(A018836(n), A028560(n)))`
-/

namespace A228829.P15009214400979842844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368857 (Int.land (A018836 n) (A028560 n)).toNat

end

end A228829.P15009214400979842844

/-!
# A228831: Expansion of psi(x)^2 * phi(-x^2)^4 in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A228831, there is no canonical definition to state claims against.
-/

/-! ## A228831.P8930652330766478845

`A228834(2*n)`
-/

namespace A228831.P8930652330766478845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228834 (2 * n)

end

end A228831.P8930652330766478845

/-! ## A228831.P14176222351968700130

`A228834(n+n)%A142814(n+1)`
-/

namespace A228831.P14176222351968700130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228834 (n + n)) (A142814 (n + 1))

end

end A228831.P14176222351968700130

/-! ## A228831.P15973369696105108223

`or(A000007(n), A228834(A005843(n)))`
-/

namespace A228831.P15973369696105108223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A228834 (A005843 n).toNat)

end

end A228831.P15973369696105108223

/-! ## A228831.P7646076566471091489

`A228834(Δ[A002061(n)])^(A000007(n)+1)`
-/

namespace A228831.P7646076566471091489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228834 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (A000007 n + 1 : ℤ)

end

end A228831.P7646076566471091489

/-! ## A228831.P11404305768157923879

`n+1+A228834(Δ[A002061(n)])+A001489(n+1)`
-/

namespace A228831.P11404305768157923879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A228834 (f1 (n + 1) - f1 n).toNat + A001489 (n + 1))

end

end A228831.P11404305768157923879

/-!
# A228832: Triangle defined by T(n,k) = binomial(n*k, k^2), for n>=0, k=0..n, as read by rows.

The programs for A228832, the canonical program `A228832.P4962165100805570608` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228832 has offset 0).

The definition of A228832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228832.P4962165100805570608

`C(A079904(n), A004247(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A228832

/-- `C(A079904(n), A004247(n))` -/
def P4962165100805570608.Spec : Prop :=
  ∀ n, (P4962165100805570608.a n : ℤ) = A228832 n

theorem P4962165100805570608.correct : P4962165100805570608.Spec := by
  intro n
  simp only [A228832]

end A228832

/-! ## A228832.P9433336389951908203

`C(A079904(n), A143844(n))`
-/

namespace A228832.P9433336389951908203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A079904 n).toNat (A143844 n).toNat

end

end A228832.P9433336389951908203

namespace A228832

/-- `C(A079904(n), A143844(n))` -/
def P9433336389951908203.Spec : Prop :=
  ∀ n, (P9433336389951908203.a n : ℤ) = A228832 n

end A228832

/-! ## A228832.P266088417594169149

`C(A079904(n), A002262(n)²)`
-/

namespace A228832.P266088417594169149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A079904 n).toNat (A002262 n ^ 2).toNat

end

end A228832.P266088417594169149

namespace A228832

/-- `C(A079904(n), A002262(n)²)` -/
def P266088417594169149.Spec : Prop :=
  ∀ n, (P266088417594169149.a n : ℤ) = A228832 n

end A228832

/-! ## A228832.P9239751646697593871

`C(A079904(n), (n-A057944(n))²)`
-/

namespace A228832.P9239751646697593871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A079904 n).toNat (((n : ℤ) - A057944 n) ^ 2).toNat

end

end A228832.P9239751646697593871

namespace A228832

/-- `C(A079904(n), (n-A057944(n))²)` -/
def P9239751646697593871.Spec : Prop :=
  ∀ n, (P9239751646697593871.a n : ℤ) = A228832 n

end A228832

/-! ## A228832.P9781184708969343869

`C(A004247(A245300(n)), A004247(n))`
-/

namespace A228832.P9781184708969343869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004247 (A245300 n).toNat).toNat (A004247 n).toNat

end

end A228832.P9781184708969343869

namespace A228832

/-- `C(A004247(A245300(n)), A004247(n))` -/
def P9781184708969343869.Spec : Prop :=
  ∀ n, (P9781184708969343869.a n : ℤ) = A228832 n

end A228832

/-! ## A228832.P14095418635752280651

`C(A079904(n), A095831(A038722(n+1)))`
-/

namespace A228832.P14095418635752280651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A079904 n).toNat (A095831 (A038722 (n + 1)).toNat).toNat

end

end A228832.P14095418635752280651

namespace A228832

/-- `C(A079904(n), A095831(A038722(n+1)))` -/
def P14095418635752280651.Spec : Prop :=
  ∀ n, (P14095418635752280651.a n : ℤ) = A228832 n

end A228832

/-! ## A228832.P15165552032909965550

`C(A002262(n)*A003056(n), A002262(n)²)`
-/

namespace A228832.P15165552032909965550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 n * A003056 n).toNat (A002262 n ^ 2).toNat

end

end A228832.P15165552032909965550

namespace A228832

/-- `C(A002262(n)*A003056(n), A002262(n)²)` -/
def P15165552032909965550.Spec : Prop :=
  ∀ n, (P15165552032909965550.a n : ℤ) = A228832 n

end A228832

/-! ## A228832.P14297393145606667303

`A226234(n)/A209330(n)*A245243(n)`
-/

namespace A228832.P14297393145606667303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226234 n : ℚ) / (A209330 n : ℚ) * (A245243 n : ℚ)

end

end A228832.P14297393145606667303

namespace A228832

/-- `A226234(n)/A209330(n)*A245243(n)` -/
def P14297393145606667303.Spec : Prop :=
  ∀ n, P14297393145606667303.a n = (A228832 n : ℚ)

end A228832

/-!
# A228835: G.f. satisfies: A(x) = x + A(x^2 + A(x^3 + A(x^4 + A(x^5 +...)))).

The programs for A228835, there is no canonical definition to state claims against.
-/

/-! ## A228835.P6479511331088927028

`A055086(A114298(n+1))`
-/

namespace A228835.P6479511331088927028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A114298 (n + 1)).toNat

end

end A228835.P6479511331088927028

/-! ## A228835.P7465151018658942741

`A262689(A239230(n)+A170980(n))`
-/

namespace A228835.P7465151018658942741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A239230 n + A170980 n).toNat

end

end A228835.P7465151018658942741

/-! ## A228835.P3598467946768009225

`A262689(A239230(n)+A173633(n))`
-/

namespace A228835.P3598467946768009225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A239230 n + A173633 n).toNat

end

end A228835.P3598467946768009225

/-! ## A228835.P10109881771729170642

`A262689(or(A170980(n), A239230(n)))`
-/

namespace A228835.P10109881771729170642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.lor (A170980 n) (A239230 n)).toNat

end

end A228835.P10109881771729170642

/-! ## A228835.P9884510316903866439

`A262689(xor(A170980(n), A239230(n)))`
-/

namespace A228835.P9884510316903866439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.xor (A170980 n) (A239230 n)).toNat

end

end A228835.P9884510316903866439

/-!
# A228836: Triangle defined by T(n,k) = binomial(n^2, (n-k)*k), for n>=0, k=0..n, as read by rows.

The programs for A228836, the canonical program `A228836.P15547341409877915815` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228836 has offset 0).

The definition of A228836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228836.P15547341409877915815

`C(A003056(n)², A004247(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A228836

/-- `C(A003056(n)², A004247(n))` -/
def P15547341409877915815.Spec : Prop :=
  ∀ n, (P15547341409877915815.a n : ℤ) = A228836 n

theorem P15547341409877915815.correct : P15547341409877915815.Spec := by
  intro n
  simp only [A228836]

end A228836

/-! ## A228836.P925846214291904278

`C(A003056(n)², A073254(n))`
-/

namespace A228836.P925846214291904278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n ^ 2).toNat (A073254 n).toNat

end

end A228836.P925846214291904278

namespace A228836

/-- `C(A003056(n)², A073254(n))` -/
def P925846214291904278.Spec : Prop :=
  ∀ n, (P925846214291904278.a n : ℤ) = A228836 n

end A228836

/-! ## A228836.P5220014370096616871

`C(A318274(n)², A004247(n))`
-/

namespace A228836.P5220014370096616871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A318274 n ^ 2).toNat (A004247 n).toNat

end

end A228836.P5220014370096616871

namespace A228836

/-- `C(A318274(n)², A004247(n))` -/
def P5220014370096616871.Spec : Prop :=
  ∀ n, (P5220014370096616871.a n : ℤ) = A228836 n

end A228836

/-! ## A228836.P7044605620743609359

`C(Δ[A079904(n)]², A004247(n))`
-/

namespace A228836.P7044605620743609359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f1 (n + 1) - f1 n) ^ 2).toNat (A004247 n).toNat

end

end A228836.P7044605620743609359

namespace A228836

/-- `C(Δ[A079904(n)]², A004247(n))` -/
def P7044605620743609359.Spec : Prop :=
  ∀ n, (P7044605620743609359.a n : ℤ) = A228836 n

end A228836

/-! ## A228836.P14425768650290898397

`C((1-A002024(n+1))², A073254(n))`
-/

namespace A228836.P14425768650290898397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((1 - A002024 (n + 1)) ^ 2).toNat (A073254 n).toNat

end

end A228836.P14425768650290898397

namespace A228836

/-- `C((1-A002024(n+1))², A073254(n))` -/
def P14425768650290898397.Spec : Prop :=
  ∀ n, (P14425768650290898397.a n : ℤ) = A228836 n

end A228836

/-! ## A228836.P13481944540609285806

`C(A048147(A057944(n)), A004247(n))`
-/

namespace A228836.P13481944540609285806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048147 (A057944 n).toNat).toNat (A004247 n).toNat

end

end A228836.P13481944540609285806

namespace A228836

/-- `C(A048147(A057944(n)), A004247(n))` -/
def P13481944540609285806.Spec : Prop :=
  ∀ n, (P13481944540609285806.a n : ℤ) = A228836 n

end A228836

/-! ## A228836.P8512415073169405006

`C(A069011(A057944(n)), A073254(n))`
-/

namespace A228836.P8512415073169405006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A069011 (A057944 n).toNat).toNat (A073254 n).toNat

end

end A228836.P8512415073169405006

namespace A228836

/-- `C(A069011(A057944(n)), A073254(n))` -/
def P8512415073169405006.Spec : Prop :=
  ∀ n, (P8512415073169405006.a n : ℤ) = A228836 n

end A228836

/-! ## A228836.P10735470249106448432

`C(A335821(n)+A143844(n), A073254(n))`
-/

namespace A228836.P10735470249106448432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A335821 n + A143844 n).toNat (A073254 n).toNat

end

end A228836.P10735470249106448432

namespace A228836

/-- `C(A335821(n)+A143844(n), A073254(n))` -/
def P10735470249106448432.Spec : Prop :=
  ∀ n, (P10735470249106448432.a n : ℤ) = A228836 n

end A228836

/-! ## A228836.P7248094945689224789

`C(A003056(n)², A002262(n)*A025581(n))`
-/

namespace A228836.P7248094945689224789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n ^ 2).toNat (A002262 n * A025581 n).toNat

end

end A228836.P7248094945689224789

namespace A228836

/-- `C(A003056(n)², A002262(n)*A025581(n))` -/
def P7248094945689224789.Spec : Prop :=
  ∀ n, (P7248094945689224789.a n : ℤ) = A228836 n

end A228836

/-! ## A228836.P1236279787086769617

`A007318(A004247(n)+A000217(A003056(n)²))`
-/

namespace A228836.P1236279787086769617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A004247 n + A000217 (A003056 n ^ 2).toNat).toNat

end

end A228836.P1236279787086769617

namespace A228836

/-- `A007318(A004247(n)+A000217(A003056(n)²))` -/
def P1236279787086769617.Spec : Prop :=
  ∀ n, P1236279787086769617.a n = A228836 n

end A228836

/-!
# A228837: a(n) = Sum_{k=0..[n/2]} binomial((n-k)^2, (n-2*k)*k).

The programs for A228837, there is no canonical definition to state claims against.
-/

/-! ## A228837.P11170275205247958732

`A008619(A015473(n))`
-/

namespace A228837.P11170275205247958732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A015473 n).toNat

end

end A228837.P11170275205247958732

/-! ## A228837.P16522756424619242084

`A191001(A000458(n))`
-/

namespace A228837.P16522756424619242084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191001 (A000458 n).toNat

end

end A228837.P16522756424619242084

/-!
# A228838: a(n) = n * A002445(n).

The programs for A228838, the canonical program `A228838.P3420866466249862964` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228838 has offset 0).

The definition of A228838 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164877, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A228838.P889137948096608439

`n*A002445(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A228838.P889137948096608439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002445 n

end

end A228838.P889137948096608439

namespace A228838

/-- `n*A002445(n)` -/
def P889137948096608439.Spec : Prop :=
  ∀ n, P889137948096608439.a n = A228838 n

end A228838

/-! ## A228838.P3420866466249862964

`A164877(n)/2`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A228838

/-- `A164877(n)/2` -/
def P3420866466249862964.Spec : Prop :=
  ∀ n, P3420866466249862964.a n = (A228838 n : ℚ)

end A228838

/-! ## A228838.P4914120516746827328

`A176328(2*n)-A000367(n)`
-/

namespace A228838.P4914120516746827328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176328 (2 * n) - A000367 n

end

end A228838.P4914120516746827328

namespace A228838

/-- `A176328(2*n)-A000367(n)` -/
def P4914120516746827328.Spec : Prop :=
  ∀ n, P4914120516746827328.a n = A228838 n

end A228838

/-! ## A228838.P16869205220843784080

`A164558(2*n)-A176328(2*n)`
-/

namespace A228838.P16869205220843784080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164558 (2 * n) - A176328 (2 * n)

end

end A228838.P16869205220843784080

namespace A228838

/-- `A164558(2*n)-A176328(2*n)` -/
def P16869205220843784080.Spec : Prop :=
  ∀ n, P16869205220843784080.a n = A228838 n

end A228838

/-! ## A228838.P5792108384250883203

`n*A140814(n)`
-/

namespace A228838.P5792108384250883203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A140814 n

end

end A228838.P5792108384250883203

namespace A228838

/-- `n*A140814(n)` -/
def P5792108384250883203.Spec : Prop :=
  ∀ n, P5792108384250883203.a n = A228838 n

end A228838

/-! ## A228838.P10532453680644923373

`n*A027642(2*n)`
-/

namespace A228838.P10532453680644923373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A027642 (2 * n)

end

end A228838.P10532453680644923373

namespace A228838

/-- `n*A027642(2*n)` -/
def P10532453680644923373.Spec : Prop :=
  ∀ n, P10532453680644923373.a n = A228838 n

end A228838

/-! ## A228838.P5997261068266863683

`n*A106458(2*n)`
-/

namespace A228838.P5997261068266863683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A106458 (2 * n)

end

end A228838.P5997261068266863683

namespace A228838

/-- `n*A106458(2*n)` -/
def P5997261068266863683.Spec : Prop :=
  ∀ n, P5997261068266863683.a n = A228838 n

end A228838

/-! ## A228838.P11804689024452107589

`n*A141056(2*n)`
-/

namespace A228838.P11804689024452107589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A141056 (2 * n)

end

end A228838.P11804689024452107589

namespace A228838

/-- `n*A141056(2*n)` -/
def P11804689024452107589.Spec : Prop :=
  ∀ n, P11804689024452107589.a n = A228838 n

end A228838

/-! ## A228838.P11546848187139639143

`n*A176289(2*n)`
-/

namespace A228838.P11546848187139639143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A176289 (2 * n)

end

end A228838.P11546848187139639143

namespace A228838

/-- `n*A176289(2*n)` -/
def P11546848187139639143.Spec : Prop :=
  ∀ n, P11546848187139639143.a n = A228838 n

end A228838

/-! ## A228838.P9342935351194291200

`n*A176591(2*n)`
-/

namespace A228838.P9342935351194291200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A176591 (2 * n)

end

end A228838.P9342935351194291200

namespace A228838

/-- `n*A176591(2*n)` -/
def P9342935351194291200.Spec : Prop :=
  ∀ n, P9342935351194291200.a n = A228838 n

end A228838

/-! ## A228838.P13187163737784421323

`3*n*A277087(n)`
-/

namespace A228838.P13187163737784421323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * A277087 n)

end

end A228838.P13187163737784421323

namespace A228838

/-- `3*n*A277087(n)` -/
def P13187163737784421323.Spec : Prop :=
  ∀ n, P13187163737784421323.a n = A228838 n

end A228838

/-! ## A228838.P1231691513578372041

`n*A051717(Δ[n²])`
-/

namespace A228838.P1231691513578372041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051717 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A228838.P1231691513578372041

namespace A228838

/-- `n*A051717(Δ[n²])` -/
def P1231691513578372041.Spec : Prop :=
  ∀ n, P1231691513578372041.a n = A228838 n

end A228838

/-! ## A228838.P17038483632772081300

`n*sqrt(A172282(2*n))`
-/

namespace A228838.P17038483632772081300
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A172282 (2 * n) : ℝ)

end

end A228838.P17038483632772081300

namespace A228838

/-- `n*sqrt(A172282(2*n))` -/
def P17038483632772081300.Spec : Prop :=
  ∀ n, P17038483632772081300.a n = (A228838 n : ℝ)

end A228838

/-! ## A228838.P1029414901816623286

`2*n*A141459(2*n)`
-/

namespace A228838.P1029414901816623286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A141459 (2 * n))

end

end A228838.P1029414901816623286

namespace A228838

/-- `2*n*A141459(2*n)` -/
def P1029414901816623286.Spec : Prop :=
  ∀ n, P1029414901816623286.a n = A228838 n

end A228838

/-! ## A228838.P4829411014693907784

`A008588(n)*A177735(n)`
-/

namespace A228838.P4829411014693907784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n * A177735 n

end

end A228838.P4829411014693907784

namespace A228838

/-- `A008588(n)*A177735(n)` -/
def P4829411014693907784.Spec : Prop :=
  ∀ n, P4829411014693907784.a n = A228838 n

end A228838

/-! ## A228838.P9493601008876180627

`A008585(n)*A277087(n)`
-/

namespace A228838.P9493601008876180627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n * A277087 n

end

end A228838.P9493601008876180627

namespace A228838

/-- `A008585(n)*A277087(n)` -/
def P9493601008876180627.Spec : Prop :=
  ∀ n, P9493601008876180627.a n = A228838 n

end A228838

/-! ## A228838.P8248640218820874729

`A005843(n)*A141459(2*n)`
-/

namespace A228838.P8248640218820874729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n * A141459 (2 * n)

end

end A228838.P8248640218820874729

namespace A228838

/-- `A005843(n)*A141459(2*n)` -/
def P8248640218820874729.Spec : Prop :=
  ∀ n, P8248640218820874729.a n = A228838 n

end A228838

/-! ## A228838.P1192921315905895210

`n*A164020(2*n)`
-/

namespace A228838.P1192921315905895210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A164020 (2 * n)

end

end A228838.P1192921315905895210

namespace A228838

/-- `n*A164020(2*n)` -/
def P1192921315905895210.Spec : Prop :=
  ∀ n, P1192921315905895210.a n = A228838 n

end A228838

/-! ## A228838.P213910513724845107

`2*n*A172087(2*n)`
-/

namespace A228838.P213910513724845107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A172087 (2 * n)

end

end A228838.P213910513724845107

namespace A228838

/-- `2*n*A172087(2*n)` -/
def P213910513724845107.Spec : Prop :=
  ∀ n, P213910513724845107.a n = A228838 n

end A228838

/-! ## A228838.P10427465279592052488

`2*n*A001897(n)`
-/

namespace A228838.P10427465279592052488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A001897 n)

end

end A228838.P10427465279592052488

namespace A228838

/-- `2*n*A001897(n)` -/
def P10427465279592052488.Spec : Prop :=
  ∀ n, P10427465279592052488.a n = A228838 n

end A228838

/-!
# A228840: a(n) = 3^n*A228569(n).

The programs for A228840, the canonical program `A228840.P12025076151166151305` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228840 has offset 0).

The definition of A228840 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A228569, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A228840.P12025076151166151305

`3^n*A228569(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A228840

/-- `3^n*A228569(n)` -/
def P12025076151166151305.Spec : Prop :=
  ∀ n, P12025076151166151305.a n = A228840 n

theorem P12025076151166151305.correct : P12025076151166151305.Spec := by
  intro n
  simp only [A228840]

end A228840

/-! ## A228840.P5291791288941751432

`lcm(A000244(n), A228569(n))`
-/

namespace A228840.P5291791288941751432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000244 n) (A228569 n)

end

end A228840.P5291791288941751432

namespace A228840

/-- `lcm(A000244(n), A228569(n))` -/
def P5291791288941751432.Spec : Prop :=
  ∀ n, (P5291791288941751432.a n : ℤ) = A228840 n

end A228840

/-! ## A228840.P2355826970795442128

`A228569(n)*A232801(Δ[n²])`
-/

namespace A228840.P2355826970795442128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228569 n * A232801 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A228840.P2355826970795442128

namespace A228840

/-- `A228569(n)*A232801(Δ[n²])` -/
def P2355826970795442128.Spec : Prop :=
  ∀ n, P2355826970795442128.a n = A228840 n

end A228840

/-! ## A228840.P6879087270123979305

`(A081704(n)+A052961(n))*A000244(n)`
-/

namespace A228840.P6879087270123979305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081704 n + A052961 n) * A000244 n

end

end A228840.P6879087270123979305

namespace A228840

/-- `(A081704(n)+A052961(n))*A000244(n)` -/
def P6879087270123979305.Spec : Prop :=
  ∀ n, P6879087270123979305.a n = A228840 n

end A228840

/-! ## A228840.P16736129684917785306

`(A052961(n)+∑[A095939(n)])*A000244(n)`
-/

namespace A228840.P16736129684917785306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052961 n + ∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n

end

end A228840.P16736129684917785306

namespace A228840

/-- `(A052961(n)+∑[A095939(n)])*A000244(n)` -/
def P16736129684917785306.Spec : Prop :=
  ∀ n, P16736129684917785306.a n = A228840 n

end A228840

/-! ## A228840.P17296088356036476342

`(3*A081704(n)-A018902(n))*A000244(n)`
-/

namespace A228840.P17296088356036476342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A081704 n - A018902 n) * A000244 n

end

end A228840.P17296088356036476342

namespace A228840

/-- `(3*A081704(n)-A018902(n))*A000244(n)` -/
def P17296088356036476342.Spec : Prop :=
  ∀ n, P17296088356036476342.a n = A228840 n

end A228840

/-! ## A228840.P16829265485656653741

`(2*A052961(n+1)-A095939(n+1))*A000244(n)`
-/

namespace A228840.P16829265485656653741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A052961 (n + 1) - A095939 (n + 1)) * A000244 n

end

end A228840.P16829265485656653741

namespace A228840

/-- `(2*A052961(n+1)-A095939(n+1))*A000244(n)` -/
def P16829265485656653741.Spec : Prop :=
  ∀ n, P16829265485656653741.a n = A228840 n

end A228840

/-!
# A228841: E.g.f.: sec(sec(x)-1) (even-indexed coefficients only).

The programs for A228841, there is no canonical definition to state claims against.
-/

/-! ## A228841.P5882153427731683078

`A243069(A144683(n))-A073150(n)`
-/

namespace A228841.P5882153427731683078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243069 (A144683 n).toNat - A073150 n

end

end A228841.P5882153427731683078

/-!
# A228842: Binomial transform of A014448.

The programs for A228842, the canonical program `A228842.P15669196099016926791` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228842 has offset 0).

The definition of A228842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228842.P15669196099016926791

`2*A098648(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A228842

/-- `2*A098648(n)` -/
def P15669196099016926791.Spec : Prop :=
  ∀ n, P15669196099016926791.a n = A228842 n

theorem P15669196099016926791.correct : P15669196099016926791.Spec := by
  intro n
  simp only [A228842]

end A228842

/-! ## A228842.P6141428220322932881

`6*a(n-1)-4*a(n-2)` with `a(0)=2, a(1)=6`
-/

namespace A228842.P6141428220322932881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  6 * a (n - 1) - 4 * a (n - 2)

end

end A228842.P6141428220322932881

namespace A228842

/-- `6*a(n-1)-4*a(n-2)` -/
def P6141428220322932881.Spec : Prop :=
  ∀ n, P6141428220322932881.a n = A228842 n

end A228842

/-! ## A228842.P6335078821537960741

`floor((3+sqrt(5))^n)+1`
-/

namespace A228842.P6335078821537960741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 + Real.sqrt (5 : ℝ)) ^ n⌋ + 1

end

end A228842.P6335078821537960741

namespace A228842

/-- `floor((3+sqrt(5))^n)+1` -/
def P6335078821537960741.Spec : Prop :=
  ∀ n, P6335078821537960741.a n = A228842 n

end A228842

/-! ## A228842.P6153622739147033058

`2^n*round(ϕ^floor(2/acot(n)))`
-/

namespace A228842.P6153622739147033058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * SequenceMachineLib.roundAway (Real.goldenRatio ^ (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ : ℤ))

end

end A228842.P6153622739147033058

namespace A228842

/-- `2^n*round(ϕ^floor(2/acot(n)))` -/
def P6153622739147033058.Spec : Prop :=
  ∀ n, P6153622739147033058.a n = A228842 n

end A228842

/-! ## A228842.P3839408795889352363

`2^n*or(2, floor(ϕ^(2*n))+1)`
-/

namespace A228842.P3839408795889352363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * Int.lor 2 (⌊Real.goldenRatio ^ (2 * n)⌋ + 1)

end

end A228842.P3839408795889352363

namespace A228842

/-- `2^n*or(2, floor(ϕ^(2*n))+1)` -/
def P3839408795889352363.Spec : Prop :=
  ∀ n, P3839408795889352363.a n = A228842 n

end A228842

/-! ## A228842.P5670989509252577524

`2*A080878(2*n)`
-/

namespace A228842.P5670989509252577524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080878 (2 * n)

end

end A228842.P5670989509252577524

namespace A228842

/-- `2*A080878(2*n)` -/
def P5670989509252577524.Spec : Prop :=
  ∀ n, P5670989509252577524.a n = A228842 n

end A228842

/-! ## A228842.P7240268546863434634

`2^n*A005248(n)`
-/

namespace A228842.P7240268546863434634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A005248 n

end

end A228842.P7240268546863434634

namespace A228842

/-- `2^n*A005248(n)` -/
def P7240268546863434634.Spec : Prop :=
  ∀ n, P7240268546863434634.a n = A228842 n

end A228842

/-! ## A228842.P6965408724057507050

`2*A080877(Δ[n²])`
-/

namespace A228842.P6965408724057507050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A228842.P6965408724057507050

namespace A228842

/-- `2*A080877(Δ[n²])` -/
def P6965408724057507050.Spec : Prop :=
  ∀ n, P6965408724057507050.a n = A228842 n

end A228842

/-! ## A228842.P10331421100631053684

`2^n*record[A005247(n)]`
-/

namespace A228842.P10331421100631053684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228842.P10331421100631053684

namespace A228842

/-- `2^n*record[A005247(n)]` -/
def P10331421100631053684.Spec : Prop :=
  ∀ n, P10331421100631053684.a n = A228842 n

end A228842

/-! ## A228842.P10624559276877798491

`2^n*A000032(2*n)`
-/

namespace A228842.P10624559276877798491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000032 (2 * n)

end

end A228842.P10624559276877798491

namespace A228842

/-- `2^n*A000032(2*n)` -/
def P10624559276877798491.Spec : Prop :=
  ∀ n, P10624559276877798491.a n = A228842 n

end A228842

/-! ## A228842.P5715830151336192802

`(A005592(n)+1)*A000079(n)`
-/

namespace A228842.P5715830151336192802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005592 n + 1) * A000079 n

end

end A228842.P5715830151336192802

namespace A228842

/-- `(A005592(n)+1)*A000079(n)` -/
def P5715830151336192802.Spec : Prop :=
  ∀ n, P5715830151336192802.a n = A228842 n

end A228842

/-! ## A228842.P16840693918497475804

`(A004146(n)+2)*A000079(n)`
-/

namespace A228842.P16840693918497475804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004146 n + 2) * A000079 n

end

end A228842.P16840693918497475804

namespace A228842

/-- `(A004146(n)+2)*A000079(n)` -/
def P16840693918497475804.Spec : Prop :=
  ∀ n, P16840693918497475804.a n = A228842 n

end A228842

/-! ## A228842.P15249755290549927977

`A005248(n)*A166444(n+2)`
-/

namespace A228842.P15249755290549927977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n * A166444 (n + 2)

end

end A228842.P15249755290549927977

namespace A228842

/-- `A005248(n)*A166444(n+2)` -/
def P15249755290549927977.Spec : Prop :=
  ∀ n, P15249755290549927977.a n = A228842 n

end A228842

/-! ## A228842.P7579963924992576080

`2*(A154626(n)+A084326(n))`
-/

namespace A228842.P7579963924992576080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A154626 n + A084326 n)

end

end A228842.P7579963924992576080

namespace A228842

/-- `2*(A154626(n)+A084326(n))` -/
def P7579963924992576080.Spec : Prop :=
  ∀ n, P7579963924992576080.a n = A228842 n

end A228842

/-! ## A228842.P12455342856298116957

`A000032(2*n)*A000079(n)`
-/

namespace A228842.P12455342856298116957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) * A000079 n

end

end A228842.P12455342856298116957

namespace A228842

/-- `A000032(2*n)*A000079(n)` -/
def P12455342856298116957.Spec : Prop :=
  ∀ n, P12455342856298116957.a n = A228842 n

end A228842

/-! ## A228842.P2017887668112452651

`A005248(n)*A016116(2*n)`
-/

namespace A228842.P2017887668112452651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n * A016116 (2 * n)

end

end A228842.P2017887668112452651

namespace A228842

/-- `A005248(n)*A016116(2*n)` -/
def P2017887668112452651.Spec : Prop :=
  ∀ n, P2017887668112452651.a n = A228842 n

end A228842

/-! ## A228842.P2440671084219278966

`2*lcm(A104537(n), A128052(n))`
-/

namespace A228842.P2440671084219278966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.lcm (A104537 n) (A128052 n)

end

end A228842.P2440671084219278966

namespace A228842

/-- `2*lcm(A104537(n), A128052(n))` -/
def P2440671084219278966.Spec : Prop :=
  ∀ n, (P2440671084219278966.a n : ℤ) = A228842 n

end A228842

/-! ## A228842.P4414227979598130958

`2*lcm(A138230(n), A179132(n))`
-/

namespace A228842.P4414227979598130958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.lcm (A138230 n) (A179132 n)

end

end A228842.P4414227979598130958

namespace A228842

/-- `2*lcm(A138230(n), A179132(n))` -/
def P4414227979598130958.Spec : Prop :=
  ∀ n, (P4414227979598130958.a n : ℤ) = A228842 n

end A228842

/-! ## A228842.P1732628338445778054

`A000032(2*n)*∑[A011782(n)]`
-/

namespace A228842.P1732628338445778054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228842.P1732628338445778054

namespace A228842

/-- `A000032(2*n)*∑[A011782(n)]` -/
def P1732628338445778054.Spec : Prop :=
  ∀ n, P1732628338445778054.a n = A228842 n

end A228842

/-!
# A228843: a(n) = 4^n*A228842(n).

The programs for A228843, the canonical program `A228843.P9707303351717591130` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228843 has offset 0).

The definition of A228843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228843.P14919523689245211518

`24*a(n-1)-64*a(n-2)` with `a(0)=2, a(1)=24`
-/

namespace A228843.P14919523689245211518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 24] fun n a =>
  24 * a (n - 1) - 64 * a (n - 2)

end

end A228843.P14919523689245211518

namespace A228843

/-- `24*a(n-1)-64*a(n-2)` -/
def P14919523689245211518.Spec : Prop :=
  ∀ n, P14919523689245211518.a n = A228843 n

end A228843

/-! ## A228843.P6647015108597824313

`2*A098647(n)`
-/

namespace A228843.P6647015108597824313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098647 n

end

end A228843.P6647015108597824313

namespace A228843

/-- `2*A098647(n)` -/
def P6647015108597824313.Spec : Prop :=
  ∀ n, P6647015108597824313.a n = A228843 n

end A228843

/-! ## A228843.P9707303351717591130

`4^n*A228842(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A228843

/-- `4^n*A228842(n)` -/
def P9707303351717591130.Spec : Prop :=
  ∀ n, P9707303351717591130.a n = A228843 n

theorem P9707303351717591130.correct : P9707303351717591130.Spec := by
  intro n
  simp only [A228843]

end A228843

/-! ## A228843.P12183995846691708179

`(12-4*sqrt(5))^n+(4*(3+sqrt(5)))^n`
-/

namespace A228843.P12183995846691708179
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (12 - 4 * Real.sqrt (5 : ℝ)) ^ n + (4 * (3 + Real.sqrt (5 : ℝ))) ^ n

end

end A228843.P12183995846691708179

namespace A228843

/-- `(12-4*sqrt(5))^n+(4*(3+sqrt(5)))^n` -/
def P12183995846691708179.Spec : Prop :=
  ∀ n, P12183995846691708179.a n = (A228843 n : ℝ)

end A228843

/-! ## A228843.P17972687146943530764

`8^n*A005248(n)`
-/

namespace A228843.P17972687146943530764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * A005248 n

end

end A228843.P17972687146943530764

namespace A228843

/-- `8^n*A005248(n)` -/
def P17972687146943530764.Spec : Prop :=
  ∀ n, P17972687146943530764.a n = A228843 n

end A228843

/-! ## A228843.P5218303686521548589

`8^n*A000032(2*n)`
-/

namespace A228843.P5218303686521548589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * A000032 (2 * n)

end

end A228843.P5218303686521548589

namespace A228843

/-- `8^n*A000032(2*n)` -/
def P5218303686521548589.Spec : Prop :=
  ∀ n, P5218303686521548589.a n = A228843 n

end A228843

/-! ## A228843.P12857180764456865971

`A000079(n+1)*A099140(n)`
-/

namespace A228843.P12857180764456865971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A099140 n

end

end A228843.P12857180764456865971

namespace A228843

/-- `A000079(n+1)*A099140(n)` -/
def P12857180764456865971.Spec : Prop :=
  ∀ n, P12857180764456865971.a n = A228843 n

end A228843

/-! ## A228843.P16511174557368696196

`A000032(2*n)*A001018(n)`
-/

namespace A228843.P16511174557368696196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) * A001018 n

end

end A228843.P16511174557368696196

namespace A228843

/-- `A000032(2*n)*A001018(n)` -/
def P16511174557368696196.Spec : Prop :=
  ∀ n, P16511174557368696196.a n = A228843 n

end A228843

/-! ## A228843.P3977042512194187462

`A000079(n)*A087131(2*n)`
-/

namespace A228843.P3977042512194187462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A087131 (2 * n)

end

end A228843.P3977042512194187462

namespace A228843

/-- `A000079(n)*A087131(2*n)` -/
def P3977042512194187462.Spec : Prop :=
  ∀ n, P3977042512194187462.a n = A228843 n

end A228843

/-! ## A228843.P3179458453516138665

`2*A000302(n)*A098648(n)`
-/

namespace A228843.P3179458453516138665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000302 n * A098648 n)

end

end A228843.P3179458453516138665

namespace A228843

/-- `2*A000302(n)*A098648(n)` -/
def P3179458453516138665.Spec : Prop :=
  ∀ n, P3179458453516138665.a n = A228843 n

end A228843

/-!
# A228844: Smallest sets of 3 consecutive abundant numbers in arithmetic progression. The initial abundant number is listed.

The programs for A228844, there is no canonical definition to state claims against.
-/

/-! ## A228844.P4805117456627849214

`A123499(n+4)*A360005(A045536(n+1))`
-/

namespace A228844.P4805117456627849214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123499 (n + 4) * A360005 (A045536 (n + 1)).toNat

end

end A228844.P4805117456627849214

/-!
# A228847: Let A(x,y,z) denote the integer area A of the triangle with integer side lengths (x,y,z). a(n) is the smallest area such that there exist at least n distinct triangles (x_i, y_i, z_i) satisfying A(x_1, y_1, z_1) = A(x_2, y_2, z_2) = ... = A(x_n, y_n, z_n).

The programs for A228847, there is no canonical definition to state claims against.
-/

/-! ## A228847.P13458699699687239758

`A051586(A329254(n+2)-A301384(n+2))`
-/

namespace A228847.P13458699699687239758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051586 (A329254 (n + 2) - A301384 (n + 2)).toNat

end

end A228847.P13458699699687239758

/-! ## A228847.P12972380710987779921

`A278256(((n+1)²-char[1])*n!+1)`
-/

namespace A228847.P12972380710987779921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278256 ((((n + 1) ^ 2 : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * (Nat.factorial n : ℤ) + 1).toNat

end

end A228847.P12972380710987779921

/-!
# A228848: a(n) = round(3*n^2/Pi^2).

The programs for A228848, the canonical program `A228848.P5321689011591765849` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228848 has offset 0).

The definition of A228848 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(3*n²/π²)` (program `A228848.P5552589942753612478`, by `A228848.P5552589942753612478.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A228848.P5321689011591765849

`round(3*(n/π)²)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228848

/-- `round(3*(n/π)²)` -/
def P5321689011591765849.Spec : Prop :=
  ∀ n, P5321689011591765849.a n = A228848 n

theorem P5321689011591765849.correct : P5321689011591765849.Spec := by
  intro n
  simp only [A228848]

end A228848

/-! ## A228848.P5552589942753612478

`round(3*n²/π²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A228848.P5552589942753612478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 * n ^ 2 : ℝ) / Real.pi ^ 2)

end

end A228848.P5552589942753612478

namespace A228848

/-- `round(3*n²/π²)` -/
def P5552589942753612478.Spec : Prop :=
  ∀ n, P5552589942753612478.a n = A228848 n

theorem P5552589942753612478.correct : P5552589942753612478.Spec := by
  intro n
  simp only [A228848, Nat.add_sub_cancel, A228848.P5552589942753612478.a, A228848.P5321689011591765849.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A228848

/-! ## A228848.P14143549385119060206

`floor(A256502(n²+1)/2)`
-/

namespace A228848.P14143549385119060206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A256502 (n ^ 2 + 1) : ℚ) / 2⌋

end

end A228848.P14143549385119060206

namespace A228848

/-- `floor(A256502(n²+1)/2)` -/
def P14143549385119060206.Spec : Prop :=
  ∀ n, P14143549385119060206.a n = A228848 n

end A228848

/-! ## A228848.P10127793671212222512

`A004526(A256502(n²+1))`
-/

namespace A228848.P10127793671212222512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A256502 (n ^ 2 + 1)).toNat

end

end A228848.P10127793671212222512

namespace A228848

/-- `A004526(A256502(n²+1))` -/
def P10127793671212222512.Spec : Prop :=
  ∀ n, P10127793671212222512.a n = A228848 n

end A228848

/-! ## A228848.P1286944530988723070

`A004525(and(-2, A256502(n²+1)))`
-/

namespace A228848.P1286944530988723070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.land (-2) (A256502 (n ^ 2 + 1))).toNat

end

end A228848.P1286944530988723070

namespace A228848

/-- `A004525(and(-2, A256502(n²+1)))` -/
def P1286944530988723070.Spec : Prop :=
  ∀ n, P1286944530988723070.a n = A228848 n

end A228848

/-!
# A228849: Number of distinct 12th powers modulo n.

The programs for A228849, there is no canonical definition to state claims against.
-/

/-! ## A228849.P2793595583235131026

`A052273(n+1)/A290104(A334205(n+1))`
-/

namespace A228849.P2793595583235131026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052273 (n + 1) : ℚ) / (A290104 (A334205 (n + 1)).toNat : ℚ)

end

end A228849.P2793595583235131026

/-! ## A228849.P10444848558288696928

`(1-A257302(n+1)+n)/A290104(A334205(n+1))`
-/

namespace A228849.P10444848558288696928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A257302 (n + 1) + (n : ℤ) : ℚ) / (A290104 (A334205 (n + 1)).toNat : ℚ)

end

end A228849.P10444848558288696928

/-! ## A228849.P15332005658544133629

`(n-A023443(A257302(n+1)))/A290104(A334205(n+1))`
-/

namespace A228849.P15332005658544133629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A023443 (A257302 (n + 1)).toNat : ℚ) / (A290104 (A334205 (n + 1)).toNat : ℚ)

end

end A228849.P15332005658544133629

/-! ## A228849.P11101902553632703761

`A020710(n)%(A257302(n+1)+4)/A290104(A334205(n+1))`
-/

namespace A228849.P11101902553632703761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A020710 n) (A257302 (n + 1) + 4) : ℚ) / (A290104 (A334205 (n + 1)).toNat : ℚ)

end

end A228849.P11101902553632703761

/-! ## A228849.P3935264373317609242

`gcd(A052273(n+1), A230592(A320495(n+2)))`
-/

namespace A228849.P3935264373317609242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052273 (n + 1)) (A230592 (A320495 (n + 2)).toNat)

end

end A228849.P3935264373317609242

/-!
# A228850: a(n) is the smallest prime which starts a record-length of "alternating" consecutive prime gaps.

The programs for A228850, there is no canonical definition to state claims against.
-/

/-! ## A228850.P14306087769887798709

`A065994(A160463(n)%A065963(n+1))`
-/

namespace A228850.P14306087769887798709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065994 (Int.tmod (A160463 n) (A065963 (n + 1))).toNat

end

end A228850.P14306087769887798709

/-!
# A228852: G.f.: exp( Sum_{n>=1} x^n/n * Sum_{k=0..n} binomial(n^2, k*(n-k))/2 ).

The programs for A228852, there is no canonical definition to state claims against.
-/

/-! ## A228852.P1615075831590265154

`A047422(∏[n!])`
-/

namespace A228852.P1615075831590265154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047422 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A228852.P1615075831590265154

/-!
# A228853: Nodes of tree generated as follows: (1,2) is an edge, and if (x,y) is an edge, then (y,y+x) and (y,2y+x) are edges.

The programs for A228853, there is no canonical definition to state claims against.
-/

/-! ## A228853.P13403349938039235331

`eq[1, char[1]+char[A141832(n+1)]]`
-/

namespace A228853.P13403349938039235331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141832 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + (if ∃ j, f4 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228853.P13403349938039235331

/-! ## A228853.P1591406226015558595

`A141832(abs(1-n)+1)%A017185(n)`
-/

namespace A228853.P1591406226015558595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141832 (|1 - (n : ℤ)| + 1).toNat) (A017185 n)

end

end A228853.P1591406226015558595

/-! ## A228853.P9894479646100604776

`A141832(A028310(n))-A000007(n)`
-/

namespace A228853.P9894479646100604776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141832 (A028310 n).toNat - A000007 n

end

end A228853.P9894479646100604776

/-! ## A228853.P4593098043959508405

`A141832(A028310(n))/A054977(n)`
-/

namespace A228853.P4593098043959508405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141832 (A028310 n).toNat : ℚ) / (A054977 n : ℚ)

end

end A228853.P4593098043959508405

/-! ## A228853.P17869287129540212568

`record[A141832(A344180(n))-A000007(n)]`
-/

namespace A228853.P17869287129540212568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141832 (A344180 n).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228853.P17869287129540212568

/-! ## A228853.P15247465851111420241

`A141832(A000007(n)+n)-A000007(n)`
-/

namespace A228853.P15247465851111420241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141832 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A228853.P15247465851111420241

/-! ## A228853.P3973262751058710949

`A000027(A141832(abs(1-n)+1))%A045954(n+1)`
-/

namespace A228853.P3973262751058710949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A141832 (|1 - (n : ℤ)| + 1).toNat).toNat) (A045954 (n + 1))

end

end A228853.P3973262751058710949

/-! ## A228853.P507201810125322897

`A141832(A028310(n))-A008683(A046109(n))`
-/

namespace A228853.P507201810125322897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141832 (A028310 n).toNat - A008683 (A046109 n).toNat

end

end A228853.P507201810125322897

/-! ## A228853.P14594150263545330061

`A141832(A028310(n))-A008683(A234275(n))`
-/

namespace A228853.P14594150263545330061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141832 (A028310 n).toNat - A008683 (A234275 n).toNat

end

end A228853.P14594150263545330061

/-!
# A228856: Nodes of tree generated as follows: (1,2) is an edge, and if (x,y) is an edge, then (y,y+x), (y,2y+x), and (y,3y+x) are edges.

The programs for A228856, there is no canonical definition to state claims against.
-/

/-! ## A228856.P11533804750789483410

`eq[0, A188187(A138469(n+1))]`
-/

namespace A228856.P11533804750789483410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188187 (A138469 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228856.P11533804750789483410

/-! ## A228856.P3310814815635071326

`record[A002024(A000201(A100781(n+1)))]`
-/

namespace A228856.P3310814815635071326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A000201 (A100781 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228856.P3310814815635071326

/-! ## A228856.P4683076369558030584

`∑[A014963(A206437(A187219(n+1))!)]`
-/

namespace A228856.P4683076369558030584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.factorial (A206437 (A187219 (n + 1)).toNat).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228856.P4683076369558030584

/-! ## A228856.P15883384657986983148

`lt[A118538(A075234(n+1)), A243497(2*n+3)]`
-/

namespace A228856.P15883384657986983148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (A075234 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243497 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A228856.P15883384657986983148

/-!
# A228857: Odd primes p > 3 for which 14*p+1 is also prime.

The programs for A228857, there is no canonical definition to state claims against.
-/

/-! ## A228857.P8847172814925466685

`p?[A004525(A024905(n+3))]`
-/

namespace A228857.P8847172814925466685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A024905 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228857.P8847172814925466685

/-! ## A228857.P12975313933145721221

`record[A006530(A024905(n+7))]`
-/

namespace A228857.P12975313933145721221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024905 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228857.P12975313933145721221

/-! ## A228857.P15297412905293053417

`record[A014963(A024905(n+3)/2)]`
-/

namespace A228857.P15297412905293053417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A024905 (n + 3) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228857.P15297412905293053417

/-! ## A228857.P13814017784075604852

`record[A382468(A024905(n+3)/2)]`
-/

namespace A228857.P13814017784075604852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382468 (SequenceMachineLib.roundAway ((A024905 (n + 3) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228857.P13814017784075604852

/-!
# A228859: Triangular array read by rows. T(n,k) is the number of labeled bipartite graphs on n nodes having exactly k connected components; n>=1, 1<=k<=n.

The programs for A228859, there is no canonical definition to state claims against.
-/

/-! ## A228859.P5845115949480737491

`A228892(n+1)/(2*A059268(n))`
-/

namespace A228859.P5845115949480737491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228892 (n + 1) : ℚ) / (2 * A059268 n : ℚ)

end

end A228859.P5845115949480737491

/-! ## A228859.P4734555888686751401

`A228892(n+1)/A059268(comp[∑[n]])`
-/

namespace A228859.P4734555888686751401
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228892 (n + 1) : ℚ) / (A059268 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ)

end

end A228859.P4734555888686751401

/-! ## A228859.P5662774242030868900

`A228892(n+1)/A005843(A059268(n))`
-/

namespace A228859.P5662774242030868900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228892 (n + 1) : ℚ) / (A005843 (A059268 n).toNat : ℚ)

end

end A228859.P5662774242030868900

/-! ## A228859.P17148802672196625333

`A228892(n+1)/A001316(A099627(n))`
-/

namespace A228859.P17148802672196625333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228892 (n + 1) : ℚ) / (A001316 (A099627 n).toNat : ℚ)

end

end A228859.P17148802672196625333

/-! ## A228859.P1785348079476857334

`A228892(n+1)/A000079(A002260(n+1))`
-/

namespace A228859.P1785348079476857334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228892 (n + 1) : ℚ) / (A000079 (A002260 (n + 1)).toNat : ℚ)

end

end A228859.P1785348079476857334

/-!
# A228862: G.f. satisfies: x = A(x - A(x^2 - A(x^3 - A(x^4 - A(x^5 -...))))).

The programs for A228862, there is no canonical definition to state claims against.
-/

/-! ## A228862.P17275894898513293106

`A280951(∑[floor((n/2)²)]+ceil(n²/2))`
-/

namespace A228862.P17275894898513293106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (∑ j ∈ Finset.range (n + 1), f1 j + ⌈(n ^ 2 : ℚ) / 2⌉).toNat

end

end A228862.P17275894898513293106

/-! ## A228862.P3907046249961942846

`A112325(A025566(n))`
-/

namespace A228862.P3907046249961942846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112325 (A025566 n).toNat

end

end A228862.P3907046249961942846

/-! ## A228862.P3772201332304270938

`A256133(A274115(n))`
-/

namespace A228862.P3772201332304270938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256133 (A274115 n).toNat

end

end A228862.P3772201332304270938

/-! ## A228862.P5741122399420250516

`A132090(or(2, A047122(n)))`
-/

namespace A228862.P5741122399420250516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132090 (Int.lor 2 (A047122 n)).toNat

end

end A228862.P5741122399420250516

/-! ## A228862.P2024795011717579395

`A023193(∑[A309504(n+1)]-n)`
-/

namespace A228862.P2024795011717579395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A228862.P2024795011717579395

/-!
# A228864: Expansion of 1 + q * (psi(-q^5) / psi(-q))^2 in powers of q where psi() is a Ramanujan theta function.

The programs for A228864, there is no canonical definition to state claims against.
-/

/-! ## A228864.P15748840300320804976

`(-1)^n*A138520(n)`
-/

namespace A228864.P15748840300320804976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A138520 n

end

end A228864.P15748840300320804976

/-! ## A228864.P13950660641706691718

`A210458((2*n)%(n+1)+1)`
-/

namespace A228864.P13950660641706691718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210458 (2 * n % (n + 1) + 1)

end

end A228864.P13950660641706691718

/-! ## A228864.P14612994056648763295

`A210458(A028310(n))`
-/

namespace A228864.P14612994056648763295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210458 (A028310 n).toNat

end

end A228864.P14612994056648763295

/-! ## A228864.P10957980608170802516

`A210458(A000007(n)+n)`
-/

namespace A228864.P10957980608170802516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210458 (A000007 n + (n : ℤ)).toNat

end

end A228864.P10957980608170802516

/-! ## A228864.P15128883820554391842

`A210458(n-A006046(n)%2+1)`
-/

namespace A228864.P15128883820554391842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210458 ((n : ℤ) - Int.tmod (A006046 n) 2 + 1).toNat

end

end A228864.P15128883820554391842

/-! ## A228864.P17425597720655188246

`ceil(A225701(n)/5)`
-/

namespace A228864.P17425597720655188246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A225701 n : ℚ) / 5⌉

end

end A228864.P17425597720655188246

/-! ## A228864.P6430051754113946584

`abs(A138520(n))`
-/

namespace A228864.P6430051754113946584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138520 n|

end

end A228864.P6430051754113946584

/-! ## A228864.P14653960409690397593

`gcd(A000038(n), A138520(n))`
-/

namespace A228864.P14653960409690397593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A138520 n)

end

end A228864.P14653960409690397593

/-! ## A228864.P15204232538345766796

`A138520(n)/A138521(n)*A225701(n)`
-/

namespace A228864.P15204232538345766796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138520 n : ℚ) / (A138521 n : ℚ) * (A225701 n : ℚ)

end

end A228864.P15204232538345766796

/-! ## A228864.P10311756625783286418

`lcm(A006466(n²), A138520(n))`
-/

namespace A228864.P10311756625783286418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 (n ^ 2)) (A138520 n)

end

end A228864.P10311756625783286418

/-!
# A228865: Primes of the form n^2 + pi(n).

The programs for A228865, there is no canonical definition to state claims against.
-/

/-! ## A228865.P14719698550257812428

`A000720(A228828(n+1))+A228828(n+1)²`
-/

namespace A228865.P14719698550257812428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A228828 (n + 1)).toNat + A228828 (n + 1) ^ 2

end

end A228865.P14719698550257812428

/-! ## A228865.P5900259775969172822

`p?[A230980(n)+n²]`
-/

namespace A228865.P5900259775969172822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228865.P5900259775969172822

/-! ## A228865.P9735830609807903306

`p?[n²+A095117(n)-n]`
-/

namespace A228865.P9735830609807903306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A095117 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228865.P9735830609807903306

/-! ## A228865.P17846249138809639500

`p?[A000720(n+1)+(n+1)²]`
-/

namespace A228865.P17846249138809639500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228865.P17846249138809639500

/-! ## A228865.P7344239388314306203

`p?[A056172(2*n+1)+n²]`
-/

namespace A228865.P7344239388314306203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228865.P7344239388314306203

/-! ## A228865.P2906871010909671370

`p?[A242096(2*n+1)+n²]`
-/

namespace A228865.P2906871010909671370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (2 * n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228865.P2906871010909671370

/-! ## A228865.P16926083536715482419

`p?[∑[char[A000040(n+1)]]+n²]`
-/

namespace A228865.P16926083536715482419
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A228865.P16926083536715482419

/-! ## A228865.P5433141409560495089

`p?[A036234(n+1)+n*(n+2)]`
-/

namespace A228865.P5433141409560495089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) + (n * (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228865.P5433141409560495089

/-! ## A228865.P4393038222792696614

`p?[∑[A010051(n+1)]+(n+1)²]`
-/

namespace A228865.P4393038222792696614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228865.P4393038222792696614

/-! ## A228865.P13723257959997869134

`p?[∑[char[A014963(n+1)-1]]+n*(n+2)]`
-/

namespace A228865.P13723257959997869134
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n * (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A228865.P13723257959997869134

/-!
# A228866: G.f.: A(x) = 1 + x*B(x), where B(x) = 1 + x^2*C(x)^2, C(x) = 1 + x^3*D(x)^3, D(x) = 1 + x^4*E(x)^4, ...

The programs for A228866, there is no canonical definition to state claims against.
-/

/-! ## A228866.P5347237507837493214

`lcm(A104560(n), A266173(A059268(n)))`
-/

namespace A228866.P5347237507837493214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A104560 n) (A266173 (A059268 n).toNat)

end

end A228866.P5347237507837493214

/-! ## A228866.P3002723301572434676

`A127321(and(A075534(n+1), A099921(n+1)))`
-/

namespace A228866.P3002723301572434676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (Int.land (A075534 (n + 1)) (A099921 (n + 1))).toNat

end

end A228866.P3002723301572434676

/-!
# A228867: G.f. A(x) satisfies: A(x) = -x + x^2 + A(A(x)) + Series_Reversion(A(A(x))).

The programs for A228867, there is no canonical definition to state claims against.
-/

/-! ## A228867.P16350763774455893494

`2*A137281((4-6/(n+1))*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A228867.P16350763774455893494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * A137281 (SequenceMachineLib.roundAway ((4 - 6 / (n + 1 : ℚ)) * (a (n - 1) : ℚ))).toNat

end

end A228867.P16350763774455893494

/-!
# A228868: Sum of all numbers n>=2 such that in their Fermi-Dirac representation every A050376-factor does not exceed A050376(n).

The programs for A228868, there is no canonical definition to state claims against.
-/

/-! ## A228868.P8034386341558456538

`∏[A050376(n+1)+1]-1`
-/

namespace A228868.P8034386341558456538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A228868.P8034386341558456538

/-! ## A228868.P1329230394084441518

`∏[A084400(n+2)+1]-1`
-/

namespace A228868.P1329230394084441518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A228868.P1329230394084441518

/-! ## A228868.P5611114621292160659

`∏[record[A091732(n+1)+2]]-1`
-/

namespace A228868.P5611114621292160659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A228868.P5611114621292160659

/-! ## A228868.P11468584694203407978

`∏[record[A181894(n+2)]+1]-1`
-/

namespace A228868.P11468584694203407978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181894 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A228868.P11468584694203407978

/-! ## A228868.P3031217765068739997

`∏[record[A340087(n+1)]+2]-1`
-/

namespace A228868.P3031217765068739997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340087 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A228868.P3031217765068739997

/-! ## A228868.P13261932097244272598

`∏[A020725(A050376(n+1))]-1`
-/

namespace A228868.P13261932097244272598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A050376 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A228868.P13261932097244272598

/-!
# A228869: Numbers k such that 2 * (1^k + 2^k + 3^k + ... + k^k) == 0 (mod k).

The programs for A228869, the canonical program `A228869.P15727948815215387731` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228869 has offset 1).

The definition of A228869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228869.P15131652670304850260

`comp[A228870(n+1)-1]+1`
-/

namespace A228869.P15131652670304850260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228870 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A228869.P15131652670304850260

namespace A228869

/-- `comp[A228870(n+1)-1]+1` -/
def P15131652670304850260.Spec : Prop :=
  ∀ n, (P15131652670304850260.a n : ℤ) = A228869 (n + 1)

end A228869

/-! ## A228869.P15727948815215387731

`∪[2*n+1, A226872(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A228869

/-- `∪[2*n+1, A226872(n+1)]` -/
def P15727948815215387731.Spec : Prop :=
  ∀ n, (P15727948815215387731.a n : ℤ) = A228869 (n + 1)

theorem P15727948815215387731.correct : P15727948815215387731.Spec := by
  intro n
  simp only [A228869, Nat.add_sub_cancel]

end A228869

/-! ## A228869.P5353719878611906020

`eq[2, gcd(2*n, A141056(n))]`
-/

namespace A228869.P5353719878611906020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A141056 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228869.P5353719878611906020

namespace A228869

/-- `eq[2, gcd(2*n, A141056(n))]` -/
def P5353719878611906020.Spec : Prop :=
  ∀ n, (P5353719878611906020.a n : ℤ) = A228869 (n + 1)

end A228869

/-! ## A228869.P6191796758212766453

`eq[1, A226957(n+1)]+1`
-/

namespace A228869.P6191796758212766453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226957 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A228869.P6191796758212766453

namespace A228869

/-- `eq[1, A226957(n+1)]+1` -/
def P6191796758212766453.Spec : Prop :=
  ∀ n, (P6191796758212766453.a n : ℤ) = A228869 (n + 1)

end A228869

/-! ## A228869.P4736807202248080512

`eq[gcd(2, n), gcd(n, A027642(n))]`
-/

namespace A228869.P4736807202248080512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A027642 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228869.P4736807202248080512

namespace A228869

/-- `eq[gcd(2, n), gcd(n, A027642(n))]` -/
def P4736807202248080512.Spec : Prop :=
  ∀ n, (P4736807202248080512.a n : ℤ) = A228869 (n + 1)

end A228869

/-! ## A228869.P4720649992549711415

`eq[1, gcd(n+1, A141459(n+1))]+1`
-/

namespace A228869.P4720649992549711415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A141459 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A228869.P4720649992549711415

namespace A228869

/-- `eq[1, gcd(n+1, A141459(n+1))]+1` -/
def P4720649992549711415.Spec : Prop :=
  ∀ n, (P4720649992549711415.a n : ℤ) = A228869 (n + 1)

end A228869

/-! ## A228869.P7726059502962570256

`eq[A225821(n+1), A225821(A141310(n))]+1`
-/

namespace A228869.P7726059502962570256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225821 (A141310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A228869.P7726059502962570256

namespace A228869

/-- `eq[A225821(n+1), A225821(A141310(n))]+1` -/
def P7726059502962570256.Spec : Prop :=
  ∀ n, (P7726059502962570256.a n : ℤ) = A228869 (n + 1)

end A228869

/-! ## A228869.P6128714403976943664

`eq[A225821(A020639(n+1)), A225821(n+1)]+1`
-/

namespace A228869.P6128714403976943664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225821 (A020639 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A228869.P6128714403976943664

namespace A228869

/-- `eq[A225821(A020639(n+1)), A225821(n+1)]+1` -/
def P6128714403976943664.Spec : Prop :=
  ∀ n, (P6128714403976943664.a n : ℤ) = A228869 (n + 1)

end A228869

/-! ## A228869.P8346157649825624623

`record[(n+1)/A000120((n+1)/A300330(n+1))]`
-/

namespace A228869.P8346157649825624623
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000120 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A300330 (n + 1) : ℚ))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228869.P8346157649825624623

namespace A228869

/-- `record[(n+1)/A000120((n+1)/A300330(n+1))]` -/
def P8346157649825624623.Spec : Prop :=
  ∀ n, P8346157649825624623.a n = (A228869 (n + 1) : ℚ)

end A228869

/-! ## A228869.P3947971414115360006

`eq[A225821(n²+1), A225821(n+1)]+1`
-/

namespace A228869.P3947971414115360006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225821 (n ^ 2 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A228869.P3947971414115360006

namespace A228869

/-- `eq[A225821(n²+1), A225821(n+1)]+1` -/
def P3947971414115360006.Spec : Prop :=
  ∀ n, (P3947971414115360006.a n : ℤ) = A228869 (n + 1)

end A228869

/-!
# A228870: Numbers k such that 2 * (1^k + 2^k + 3^k + ... + k^k) is not 0 (mod k).

The programs for A228870, there is no canonical definition to state claims against.
-/

/-! ## A228870.P15833869751028999104

`2*A229307(n+1)`
-/

namespace A228870.P15833869751028999104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A229307 (n + 1)

end

end A228870.P15833869751028999104

/-! ## A228870.P13731345248929133455

`A229307(A000290(n+1)/(n+1))+A229307(n+1)`
-/

namespace A228870.P13731345248929133455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229307 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat + A229307 (n + 1)

end

end A228870.P13731345248929133455

/-! ## A228870.P4936622488980550106

`A229307(A000007(n+1)+n+1)+A229307(n+1)`
-/

namespace A228870.P4936622488980550106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229307 (A000007 (n + 1) + (n + 1 : ℤ)).toNat + A229307 (n + 1)

end

end A228870.P4936622488980550106

/-! ## A228870.P5082560267226503767

`A229307(n+1)+A229307(n+1)%A229307(n+2)`
-/

namespace A228870.P5082560267226503767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229307 (n + 1) + Int.tmod (A229307 (n + 1)) (A229307 (n + 2))

end

end A228870.P5082560267226503767

/-! ## A228870.P17476823431612947137

`A004277(A229307(n+1))`
-/

namespace A228870.P17476823431612947137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A229307 (n + 1)).toNat

end

end A228870.P17476823431612947137

/-! ## A228870.P4016089279224209297

`lt[2, gcd(n, A027642(n))]`
-/

namespace A228870.P4016089279224209297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A027642 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A228870.P4016089279224209297

/-! ## A228870.P12178488712644437346

`lt[1, A226957(n+1)]+1`
-/

namespace A228870.P12178488712644437346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226957 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A228870.P12178488712644437346

/-! ## A228870.P1900424485849172416

`lt[2, A225821(n+1)]+1`
-/

namespace A228870.P1900424485849172416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A228870.P1900424485849172416

/-! ## A228870.P4166905010035542568

`2*lt[2, A225821(A004277(n))]`
-/

namespace A228870.P4166905010035542568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225821 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A228870.P4166905010035542568

/-! ## A228870.P10218313195335249303

`lt[2, A225821(A004277(n)-n)]`
-/

namespace A228870.P10218313195335249303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225821 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A228870.P10218313195335249303

/-!
# A228871: Odd numbers producing 3 out-of-order odd numbers in the Collatz (3x+1) iteration.

The programs for A228871, the canonical program `A228871.P3781957026361510476` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228871 has offset 1).

The definition of A228871 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228871.P3781957026361510476

`65*a(n-1)-64*a(n-2)` with `a(0)=3, a(1)=227`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228871

/-- `65*a(n-1)-64*a(n-2)` -/
def P3781957026361510476.Spec : Prop :=
  ∀ n, P3781957026361510476.a n = A228871 (n + 1)

theorem P3781957026361510476.correct : P3781957026361510476.Spec := by
  intro n
  simp only [A228871, Nat.add_sub_cancel]

end A228871

/-! ## A228871.P7960137581136268307

`(2*(2^(6*(n+1)-2)-1)/3-1)/3`
-/

namespace A228871.P7960137581136268307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (((2 : ℚ) ^ ((6 * (n + 1) : ℤ) - 2 : ℤ) - 1) / 3) - 1) / 3

end

end A228871.P7960137581136268307

namespace A228871

/-- `(2*(2^(6*(n+1)-2)-1)/3-1)/3` -/
def P7960137581136268307.Spec : Prop :=
  ∀ n, P7960137581136268307.a n = (A228871 (n + 1) : ℚ)

end A228871

/-! ## A228871.P7484287698397243425

`64*a(n-1)+35` with `a(0)=3`
-/

namespace A228871.P7484287698397243425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  64 * a (n - 1) + 35

end

end A228871.P7484287698397243425

namespace A228871

/-- `64*a(n-1)+35` -/
def P7484287698397243425.Spec : Prop :=
  ∀ n, (P7484287698397243425.a n : ℤ) = A228871 (n + 1)

end A228871

/-! ## A228871.P906164828642347034

`A350053(Δ[n²])`
-/

namespace A228871.P906164828642347034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350053 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A228871.P906164828642347034

namespace A228871

/-- `A350053(Δ[n²])` -/
def P906164828642347034.Spec : Prop :=
  ∀ n, P906164828642347034.a n = A228871 (n + 1)

end A228871

/-! ## A228871.P7562911757318933182

`A172241(2*(n+1))`
-/

namespace A228871.P7562911757318933182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172241 (2 * (n + 1))

end

end A228871.P7562911757318933182

namespace A228871

/-- `A172241(2*(n+1))` -/
def P7562911757318933182.Spec : Prop :=
  ∀ n, P7562911757318933182.a n = A228871 (n + 1)

end A228871

/-! ## A228871.P9038085079737192300

`A037667(3*n+1)`
-/

namespace A228871.P9038085079737192300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037667 (3 * n + 1)

end

end A228871.P9038085079737192300

namespace A228871

/-- `A037667(3*n+1)` -/
def P9038085079737192300.Spec : Prop :=
  ∀ n, P9038085079737192300.a n = A228871 (n + 1)

end A228871

/-! ## A228871.P11189106195288333828

`A113854(3*n+2)`
-/

namespace A228871.P11189106195288333828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113854 (3 * n + 2)

end

end A228871.P11189106195288333828

namespace A228871

/-- `A113854(3*n+2)` -/
def P11189106195288333828.Spec : Prop :=
  ∀ n, P11189106195288333828.a n = A228871 (n + 1)

end A228871

/-! ## A228871.P9515757144799514681

`A172143(3*(n+1)²)`
-/

namespace A228871.P9515757144799514681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172143 (3 * (n + 1) ^ 2)

end

end A228871.P9515757144799514681

namespace A228871

/-- `A172143(3*(n+1)²)` -/
def P9515757144799514681.Spec : Prop :=
  ∀ n, P9515757144799514681.a n = A228871 (n + 1)

end A228871

/-! ## A228871.P7351023361414717633

`A131666(A016969(n))`
-/

namespace A228871.P7351023361414717633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (A016969 n).toNat

end

end A228871.P7351023361414717633

namespace A228871

/-- `A131666(A016969(n))` -/
def P7351023361414717633.Spec : Prop :=
  ∀ n, P7351023361414717633.a n = A228871 (n + 1)

end A228871

/-! ## A228871.P15410159361679305413

`A132780(A016957(n))`
-/

namespace A228871.P15410159361679305413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132780 (A016957 n).toNat

end

end A228871.P15410159361679305413

namespace A228871

/-- `A132780(A016957(n))` -/
def P15410159361679305413.Spec : Prop :=
  ∀ n, P15410159361679305413.a n = A228871 (n + 1)

end A228871

/-!
# A228872: Odd numbers producing 3 decreasing odd numbers in the Collatz (3x+1) iteration.

The programs for A228872, there is no canonical definition to state claims against.
-/

/-! ## A228872.P6481762549536367875

`∩[A062053(n+1), A249034(n+1)]`
-/

namespace A228872.P6481762549536367875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228872.P6481762549536367875

/-! ## A228872.P2888983536762343258

`∩[A062053(n+1), A375937(n+1)]`
-/

namespace A228872.P2888983536762343258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228872.P2888983536762343258

/-! ## A228872.P7568846337557655147

`∩[A062053(n+1), A016813(n)]`
-/

namespace A228872.P7568846337557655147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228872.P7568846337557655147

/-! ## A228872.P4105500483543154533

`∩[A062053(n+1), A222945(n)]`
-/

namespace A228872.P4105500483543154533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228872.P4105500483543154533

/-! ## A228872.P10851492785774885578

`∩[A004766(n+1), A062053(n+1)]`
-/

namespace A228872.P10851492785774885578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228872.P10851492785774885578

/-!
# A228873: a(n) = F(n) * F(n+1) * F(n+2) * F(n+3), the product of four consecutive Fibonacci numbers, A000045.

The programs for A228873, the canonical program `A228873.P17386157323288434337` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228873 has offset 1).

The definition of A228873 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059840, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A228873.P17386157323288434337

`2*A000217(A059840(n+3))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A228873

/-- `2*A000217(A059840(n+3))` -/
def P17386157323288434337.Spec : Prop :=
  ∀ n, P17386157323288434337.a n = A228873 (n + 1)

theorem P17386157323288434337.correct : P17386157323288434337.Spec := by
  intro n
  simp only [A228873, Nat.add_sub_cancel]

end A228873

/-! ## A228873.P17900359708535034589

`6*A001656(n)`
-/

namespace A228873.P17900359708535034589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A001656 n

end

end A228873.P17900359708535034589

namespace A228873

/-- `6*A001656(n)` -/
def P17900359708535034589.Spec : Prop :=
  ∀ n, P17900359708535034589.a n = A228873 (n + 1)

end A228873

/-! ## A228873.P18275495050464486890

`2*C(∑[A000045(n+2)²]+gcd(2, n), 2)`
-/

namespace A228873.P18275495050464486890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + (Nat.gcd 2 n : ℤ)).toNat 2

end

end A228873.P18275495050464486890

namespace A228873

/-- `2*C(∑[A000045(n+2)²]+gcd(2, n), 2)` -/
def P18275495050464486890.Spec : Prop :=
  ∀ n, (P18275495050464486890.a n : ℤ) = A228873 (n + 1)

end A228873

/-! ## A228873.P2211361994247222360

`A020701(n)*A065563(n+1)`
-/

namespace A228873.P2211361994247222360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n * A065563 (n + 1)

end

end A228873.P2211361994247222360

namespace A228873

/-- `A020701(n)*A065563(n+1)` -/
def P2211361994247222360.Spec : Prop :=
  ∀ n, P2211361994247222360.a n = A228873 (n + 1)

end A228873

/-! ## A228873.P17881656066375537437

`A001655(n)*A090991(n+1)`
-/

namespace A228873.P17881656066375537437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001655 n * A090991 (n + 1)

end

end A228873.P17881656066375537437

namespace A228873

/-- `A001655(n)*A090991(n+1)` -/
def P17881656066375537437.Spec : Prop :=
  ∀ n, P17881656066375537437.a n = A228873 (n + 1)

end A228873

/-! ## A228873.P14270248377625763338

`A001655(n)*A078642(n+2)`
-/

namespace A228873.P14270248377625763338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001655 n * A078642 (n + 2)

end

end A228873.P14270248377625763338

namespace A228873

/-- `A001655(n)*A078642(n+2)` -/
def P14270248377625763338.Spec : Prop :=
  ∀ n, P14270248377625763338.a n = A228873 (n + 1)

end A228873

/-! ## A228873.P13967268044430136825

`A020695(n)*A220362(n+2)`
-/

namespace A228873.P13967268044430136825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n * A220362 (n + 2)

end

end A228873.P13967268044430136825

namespace A228873

/-- `A020695(n)*A220362(n+2)` -/
def P13967268044430136825.Spec : Prop :=
  ∀ n, P13967268044430136825.a n = A228873 (n + 1)

end A228873

/-! ## A228873.P13955014450803055931

`∏[A090991(n+1)/A055389(n)]`
-/

namespace A228873.P13955014450803055931
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090991 (n + 1) : ℚ) / (A055389 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A228873.P13955014450803055931

namespace A228873

/-- `∏[A090991(n+1)/A055389(n)]` -/
def P13955014450803055931.Spec : Prop :=
  ∀ n, P13955014450803055931.a n = (A228873 (n + 1) : ℚ)

end A228873

/-! ## A228873.P16248381209850588833

`Δ[A077916(n)]²-Δ[A077916(n)]`
-/

namespace A228873.P16248381209850588833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077916 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - (f2 (n + 1) - f2 n)

end

end A228873.P16248381209850588833

namespace A228873

/-- `Δ[A077916(n)]²-Δ[A077916(n)]` -/
def P16248381209850588833.Spec : Prop :=
  ∀ n, P16248381209850588833.a n = A228873 (n + 1)

end A228873

/-! ## A228873.P13388817924373279776

`A000045(n+1)*A065563(n+2)`
-/

namespace A228873.P13388817924373279776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A065563 (n + 2)

end

end A228873.P13388817924373279776

namespace A228873

/-- `A000045(n+1)*A065563(n+2)` -/
def P13388817924373279776.Spec : Prop :=
  ∀ n, P13388817924373279776.a n = A228873 (n + 1)

end A228873

/-! ## A228873.P2247112306575566142

`A059929(n+1)*A059929(n+2)`
-/

namespace A228873.P2247112306575566142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 (n + 1) * A059929 (n + 2)

end

end A228873.P2247112306575566142

namespace A228873

/-- `A059929(n+1)*A059929(n+2)` -/
def P2247112306575566142.Spec : Prop :=
  ∀ n, P2247112306575566142.a n = A228873 (n + 1)

end A228873

/-! ## A228873.P5330639093959465450

`A001654(n+1)*A001654(n+3)`
-/

namespace A228873.P5330639093959465450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 1) * A001654 (n + 3)

end

end A228873.P5330639093959465450

namespace A228873

/-- `A001654(n+1)*A001654(n+3)` -/
def P5330639093959465450.Spec : Prop :=
  ∀ n, P5330639093959465450.a n = A228873 (n + 1)

end A228873

/-! ## A228873.P1387659266573873477

`A000045(n+2)*A220360(n+2)`
-/

namespace A228873.P1387659266573873477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A220360 (n + 2)

end

end A228873.P1387659266573873477

namespace A228873

/-- `A000045(n+2)*A220360(n+2)` -/
def P1387659266573873477.Spec : Prop :=
  ∀ n, P1387659266573873477.a n = A228873 (n + 1)

end A228873

/-! ## A228873.P1111347452121748143

`A065563(n+2)*A212804(n+2)`
-/

namespace A228873.P1111347452121748143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065563 (n + 2) * A212804 (n + 2)

end

end A228873.P1111347452121748143

namespace A228873

/-- `A065563(n+2)*A212804(n+2)` -/
def P1111347452121748143.Spec : Prop :=
  ∀ n, P1111347452121748143.a n = A228873 (n + 1)

end A228873

/-! ## A228873.P3463437832608784914

`A166536(n+1)²-A166536(n+1)`
-/

namespace A228873.P3463437832608784914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166536 (n + 1) ^ 2 - A166536 (n + 1)

end

end A228873.P3463437832608784914

namespace A228873

/-- `A166536(n+1)²-A166536(n+1)` -/
def P3463437832608784914.Spec : Prop :=
  ∀ n, P3463437832608784914.a n = A228873 (n + 1)

end A228873

/-! ## A228873.P890022743092400030

`2*A000045(n+1)*A001655(n+1)`
-/

namespace A228873.P890022743092400030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000045 (n + 1) * A001655 (n + 1))

end

end A228873.P890022743092400030

namespace A228873

/-- `2*A000045(n+1)*A001655(n+1)` -/
def P890022743092400030.Spec : Prop :=
  ∀ n, P890022743092400030.a n = A228873 (n + 1)

end A228873

/-! ## A228873.P9739837133255796626

`A070550(2*n+1)*A070550(2*n+3)`
-/

namespace A228873.P9739837133255796626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (2 * n + 1) * A070550 (2 * n + 3)

end

end A228873.P9739837133255796626

namespace A228873

/-- `A070550(2*n+1)*A070550(2*n+3)` -/
def P9739837133255796626.Spec : Prop :=
  ∀ n, P9739837133255796626.a n = A228873 (n + 1)

end A228873

/-! ## A228873.P2005638014053524040

`Δ[Δ[A080145(n+1)]]*A006498(2*n+1)`
-/

namespace A228873.P2005638014053524040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080145 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006498 (2 * n + 1)

end

end A228873.P2005638014053524040

namespace A228873

/-- `Δ[Δ[A080145(n+1)]]*A006498(2*n+1)` -/
def P2005638014053524040.Spec : Prop :=
  ∀ n, P2005638014053524040.a n = A228873 (n + 1)

end A228873

/-! ## A228873.P9889979501760225587

`A097083(2*(n+1))+A097083(2*(n+1))²`
-/

namespace A228873.P9889979501760225587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097083 (2 * (n + 1)) + A097083 (2 * (n + 1)) ^ 2

end

end A228873.P9889979501760225587

namespace A228873

/-- `A097083(2*(n+1))+A097083(2*(n+1))²` -/
def P9889979501760225587.Spec : Prop :=
  ∀ n, P9889979501760225587.a n = A228873 (n + 1)

end A228873

/-! ## A228873.P4800518875675434028

`(A000045(n)+A000032(n))*A001655(n+1)`
-/

namespace A228873.P4800518875675434028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 n + A000032 n) * A001655 (n + 1)

end

end A228873.P4800518875675434028

namespace A228873

/-- `(A000045(n)+A000032(n))*A001655(n+1)` -/
def P4800518875675434028.Spec : Prop :=
  ∀ n, P4800518875675434028.a n = A228873 (n + 1)

end A228873

/-!
# A228874: a(n) = L(n) * L(n+1) * L(n+2) * L(n+3), the product of four consecutive Lucas numbers, A000032.

The programs for A228874, the canonical program `A228874.P11533461817188704702` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228874 has offset 0).

The definition of A228874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228874.P11533461817188704702

`6*A247526(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A228874

/-- `6*A247526(n+2)` -/
def P11533461817188704702.Spec : Prop :=
  ∀ n, P11533461817188704702.a n = A228874 n

theorem P11533461817188704702.correct : P11533461817188704702.Spec := by
  intro n
  simp only [A228874]

end A228874

/-! ## A228874.P15640476329830166864

`A022112(n+2)*A085696(n)`
-/

namespace A228874.P15640476329830166864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 (n + 2) * A085696 n

end

end A228874.P15640476329830166864

namespace A228874

/-- `A022112(n+2)*A085696(n)` -/
def P15640476329830166864.Spec : Prop :=
  ∀ n, P15640476329830166864.a n = A228874 n

end A228874

/-! ## A228874.P12348106380177852795

`A075269(n+2)*A075269(n)`
-/

namespace A228874.P12348106380177852795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075269 (n + 2) * A075269 n

end

end A228874.P12348106380177852795

namespace A228874

/-- `A075269(n+2)*A075269(n)` -/
def P12348106380177852795.Spec : Prop :=
  ∀ n, P12348106380177852795.a n = A228874 n

end A228874

/-! ## A228874.P13657864043912244778

`A215602(n+2)*A215602(n)`
-/

namespace A228874.P13657864043912244778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215602 (n + 2) * A215602 n

end

end A228874.P13657864043912244778

namespace A228874

/-- `A215602(n+2)*A215602(n)` -/
def P13657864043912244778.Spec : Prop :=
  ∀ n, P13657864043912244778.a n = A228874 n

end A228874

/-! ## A228874.P9912400920999106588

`A292696(n+1)*A292696(n+2)`
-/

namespace A228874.P9912400920999106588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292696 (n + 1) * A292696 (n + 2)

end

end A228874.P9912400920999106588

namespace A228874

/-- `A292696(n+1)*A292696(n+2)` -/
def P9912400920999106588.Spec : Prop :=
  ∀ n, P9912400920999106588.a n = A228874 n

end A228874

/-! ## A228874.P14053237818472055360

`2*A000032(n)*A085696(n+1)`
-/

namespace A228874.P14053237818472055360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 n * A085696 (n + 1)

end

end A228874.P14053237818472055360

namespace A228874

/-- `2*A000032(n)*A085696(n+1)` -/
def P14053237818472055360.Spec : Prop :=
  ∀ n, P14053237818472055360.a n = A228874 n

end A228874

/-! ## A228874.P3872411827668673961

`Δ[A006499(2*n)]*A006499(2*n+1)`
-/

namespace A228874.P3872411827668673961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006499 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006499 (2 * n + 1)

end

end A228874.P3872411827668673961

namespace A228874

/-- `Δ[A006499(2*n)]*A006499(2*n+1)` -/
def P3872411827668673961.Spec : Prop :=
  ∀ n, P3872411827668673961.a n = A228874 n

end A228874

/-! ## A228874.P4552864590106576527

`(A022319(n+1)-A022319(n))*A085696(n+1)`
-/

namespace A228874.P4552864590106576527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022319 (n + 1) - A022319 n) * A085696 (n + 1)

end

end A228874.P4552864590106576527

namespace A228874

/-- `(A022319(n+1)-A022319(n))*A085696(n+1)` -/
def P4552864590106576527.Spec : Prop :=
  ∀ n, P4552864590106576527.a n = A228874 n

end A228874

/-! ## A228874.P5755699866253219598

`A000032(n+1)*A000032(n)*A000032(n+2)*A000032(n+3)`
-/

namespace A228874.P5755699866253219598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A000032 n * A000032 (n + 2) * A000032 (n + 3)

end

end A228874.P5755699866253219598

namespace A228874

/-- `A000032(n+1)*A000032(n)*A000032(n+2)*A000032(n+3)` -/
def P5755699866253219598.Spec : Prop :=
  ∀ n, P5755699866253219598.a n = A228874 n

end A228874

/-!
# A228875: Pairs of Pythagorean numbers differing by 6.

The programs for A228875, there is no canonical definition to state claims against.
-/

/-! ## A228875.P17176833686840019297

`∪[A228876(n+1), A228877(n+1)]`
-/

namespace A228875.P17176833686840019297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A228875.P17176833686840019297

/-! ## A228875.P16550008547745699390

`∪[A228876(n+1)+6, A228876(A269394(n+1))]`
-/

namespace A228875.P16550008547745699390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228876 (n + 1) + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228876 (A269394 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A228875.P16550008547745699390

/-! ## A228875.P2014594095493475904

`∪[A228877(n+1)-6, A228877(A269394(n+1))]`
-/

namespace A228875.P2014594095493475904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228877 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228877 (A269394 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A228875.P2014594095493475904

/-!
# A228876: Lower Pythagorean twins.

The programs for A228876, there is no canonical definition to state claims against.
-/

/-! ## A228876.P15634330477650308263

`A228877(n+1)-6`
-/

namespace A228876.P15634330477650308263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228877 (n + 1) - 6

end

end A228876.P15634330477650308263

/-! ## A228876.P11308353359668528796

`A228875(Δ[n²])`
-/

namespace A228876.P11308353359668528796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228875 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A228876.P11308353359668528796

/-! ## A228876.P650224602255978156

`A228875(2*(n+1))-6`
-/

namespace A228876.P650224602255978156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228875 (2 * (n + 1)) - 6

end

end A228876.P650224602255978156

/-! ## A228876.P8404874771246995479

`lcm(2, A228875(2*n+1))`
-/

namespace A228876.P8404874771246995479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A228875 (2 * n + 1))

end

end A228876.P8404874771246995479

/-! ## A228876.P18186567307107988507

`record[A228875((n+1)/2^val(n+1, 2))]`
-/

namespace A228876.P18186567307107988507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228875 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228876.P18186567307107988507

/-!
# A228877: Upper Pythagorean twins.

The programs for A228877, there is no canonical definition to state claims against.
-/

/-! ## A228877.P16606723250943156434

`A228876(n+1)+6`
-/

namespace A228877.P16606723250943156434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228876 (n + 1) + 6

end

end A228877.P16606723250943156434

/-! ## A228877.P578855644776985855

`A228875(2*(n+1))`
-/

namespace A228877.P578855644776985855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228875 (2 * (n + 1))

end

end A228877.P578855644776985855

/-! ## A228877.P3594622784807700009

`A228875(Δ[n²])+6`
-/

namespace A228877.P3594622784807700009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228875 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 6

end

end A228877.P3594622784807700009

/-! ## A228877.P5222654737709108601

`record[A228875(A004442(n)+1)]`
-/

namespace A228877.P5222654737709108601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228875 (A004442 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228877.P5222654737709108601

/-! ## A228877.P7732866733036768700

`record[A228875(A014681(n+1))]`
-/

namespace A228877.P7732866733036768700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228875 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228877.P7732866733036768700

/-!
# A228878: Happy squares: squares whose trajectory under iteration of sum of squares of digits map includes 1.

The programs for A228878, there is no canonical definition to state claims against.
-/

/-! ## A228878.P10006675817912323488

`∩[(n+1)², A140172(n+1)]`
-/

namespace A228878.P10006675817912323488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228878.P10006675817912323488

/-! ## A228878.P6462921863849273431

`∩[A140172(n+1), n²]`
-/

namespace A228878.P6462921863849273431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140172 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A228878.P6462921863849273431

/-! ## A228878.P981353215007691302

`A000027(∩[A140172(n+1), A000290(n)])`
-/

namespace A228878.P981353215007691302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A228878.P981353215007691302

/-! ## A228878.P11423726588272071837

`∩[A007770(n+1), n²]`
-/

namespace A228878.P11423726588272071837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A228878.P11423726588272071837

/-! ## A228878.P4709924265338784294

`filter[A140172(n+1), A353374(#)]`
-/

namespace A228878.P4709924265338784294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353374 (f1 j).toNat = 1) n)

end

end A228878.P4709924265338784294

/-!
# A228879: a(n+2) = 3*a(n), starting 4,7.

The programs for A228879, the canonical program `A228879.P6299281616363493398` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228879 has offset 0).

The definition of A228879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 417 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228879.P6299281616363493398

`3*a(n-2)` with `a(0)=4, a(1)=7`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228879

/-- `3*a(n-2)` -/
def P6299281616363493398.Spec : Prop :=
  ∀ n, (P6299281616363493398.a n : ℤ) = A228879 n

theorem P6299281616363493398.correct : P6299281616363493398.Spec := by
  intro n
  simp only [A228879]

end A228879

/-! ## A228879.P13146809498023786115

`a(n-2)/(1-2/3)` with `a(0)=4, a(1)=7`
-/

namespace A228879.P13146809498023786115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 7] fun n a =>
  a (n - 2) / (1 - (2 : ℚ) / 3)

end

end A228879.P13146809498023786115

namespace A228879

/-- `a(n-2)/(1-2/3)` -/
def P13146809498023786115.Spec : Prop :=
  ∀ n, P13146809498023786115.a n = (A228879 n : ℚ)

end A228879

/-! ## A228879.P3661703459478337018

`a(n-2)+a(n-2)+a(n-2)` with `a(0)=4, a(1)=7`
-/

namespace A228879.P3661703459478337018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 7] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 2))

end

end A228879.P3661703459478337018

namespace A228879

/-- `a(n-2)+a(n-2)+a(n-2)` -/
def P3661703459478337018.Spec : Prop :=
  ∀ n, (P3661703459478337018.a n : ℤ) = A228879 n

theorem P3661703459478337018.correct : P3661703459478337018.Spec := by
  intro n
  simp only [A228879, Nat.add_sub_cancel, A228879.P3661703459478337018.a, A228879.P6299281616363493398.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A228879

/-! ## A228879.P10483642150431944603

`A358027(n+2)+1`
-/

namespace A228879.P10483642150431944603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358027 (n + 2) + 1

end

end A228879.P10483642150431944603

namespace A228879

/-- `A358027(n+2)+1` -/
def P10483642150431944603.Spec : Prop :=
  ∀ n, P10483642150431944603.a n = A228879 n

end A228879

/-! ## A228879.P1940946651134058451

`A246080(3*n+4)`
-/

namespace A228879.P1940946651134058451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246080 (3 * n + 4)

end

end A228879.P1940946651134058451

namespace A228879

/-- `A246080(3*n+4)` -/
def P1940946651134058451.Spec : Prop :=
  ∀ n, P1940946651134058451.a n = A228879 n

end A228879

/-! ## A228879.P18246366270346744324

`∑[A083658(n+1)]+3`
-/

namespace A228879.P18246366270346744324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A228879.P18246366270346744324

namespace A228879

/-- `∑[A083658(n+1)]+3` -/
def P18246366270346744324.Spec : Prop :=
  ∀ n, P18246366270346744324.a n = A228879 n

end A228879

/-! ## A228879.P12891169333728934884

`gcd(2, n)²*A166481(n+1)`
-/

namespace A228879.P12891169333728934884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ 2 : ℤ) * A166481 (n + 1)

end

end A228879.P12891169333728934884

namespace A228879

/-- `gcd(2, n)²*A166481(n+1)` -/
def P12891169333728934884.Spec : Prop :=
  ∀ n, P12891169333728934884.a n = A228879 n

end A228879

/-! ## A228879.P17867009901372114605

`A010712(n)*A108411(n)`
-/

namespace A228879.P17867009901372114605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010712 n * A108411 n

end

end A228879.P17867009901372114605

namespace A228879

/-- `A010712(n)*A108411(n)` -/
def P17867009901372114605.Spec : Prop :=
  ∀ n, P17867009901372114605.a n = A228879 n

end A228879

/-! ## A228879.P11988484553540363262

`A083658(n+2)+A038754(n)`
-/

namespace A228879.P11988484553540363262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083658 (n + 2) + A038754 n

end

end A228879.P11988484553540363262

namespace A228879

/-- `A083658(n+2)+A038754(n)` -/
def P11988484553540363262.Spec : Prop :=
  ∀ n, P11988484553540363262.a n = A228879 n

end A228879

/-! ## A228879.P2047505851924710358

`A108411(n)+A038754(n+2)`
-/

namespace A228879.P2047505851924710358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n + A038754 (n + 2)

end

end A228879.P2047505851924710358

namespace A228879

/-- `A108411(n)+A038754(n+2)` -/
def P2047505851924710358.Spec : Prop :=
  ∀ n, P2047505851924710358.a n = A228879 n

end A228879

/-! ## A228879.P6653004856279449824

`A038754(n+2)+Δ[A038754(n)]`
-/

namespace A228879.P6653004856279449824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (n + 2) + (f1 (n + 1) - f1 n)

end

end A228879.P6653004856279449824

namespace A228879

/-- `A038754(n+2)+Δ[A038754(n)]` -/
def P6653004856279449824.Spec : Prop :=
  ∀ n, P6653004856279449824.a n = A228879 n

end A228879

/-! ## A228879.P5217878095923473412

`A068911(n+1)+A038754(n+1)`
-/

namespace A228879.P5217878095923473412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (n + 1) + A038754 (n + 1)

end

end A228879.P5217878095923473412

namespace A228879

/-- `A068911(n+1)+A038754(n+1)` -/
def P5217878095923473412.Spec : Prop :=
  ∀ n, P5217878095923473412.a n = A228879 n

end A228879

/-! ## A228879.P10225719403376080632

`A074324(n+1)+A056449(n+1)`
-/

namespace A228879.P10225719403376080632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (n + 1) + A056449 (n + 1)

end

end A228879.P10225719403376080632

namespace A228879

/-- `A074324(n+1)+A056449(n+1)` -/
def P10225719403376080632.Spec : Prop :=
  ∀ n, P10225719403376080632.a n = A228879 n

end A228879

/-! ## A228879.P4422467296782262742

`A211221(n+1)+A153339(n+1)`
-/

namespace A228879.P4422467296782262742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211221 (n + 1) + A153339 (n + 1)

end

end A228879.P4422467296782262742

namespace A228879

/-- `A211221(n+1)+A153339(n+1)` -/
def P4422467296782262742.Spec : Prop :=
  ∀ n, P4422467296782262742.a n = A228879 n

end A228879

/-! ## A228879.P14292560029364091462

`A166552(n+1)+A108411(n+2)`
-/

namespace A228879.P14292560029364091462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166552 (n + 1) + A108411 (n + 2)

end

end A228879.P14292560029364091462

namespace A228879

/-- `A166552(n+1)+A108411(n+2)` -/
def P14292560029364091462.Spec : Prop :=
  ∀ n, P14292560029364091462.a n = A228879 n

end A228879

/-! ## A228879.P4368028892232037291

`A211221(n+2)+A108411(n+1)`
-/

namespace A228879.P4368028892232037291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211221 (n + 2) + A108411 (n + 1)

end

end A228879.P4368028892232037291

namespace A228879

/-- `A211221(n+2)+A108411(n+1)` -/
def P4368028892232037291.Spec : Prop :=
  ∀ n, P4368028892232037291.a n = A228879 n

end A228879

/-! ## A228879.P2424441161518029322

`A038754(n+1)+2*A038754(n)`
-/

namespace A228879.P2424441161518029322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (n + 1) + 2 * A038754 n

end

end A228879.P2424441161518029322

namespace A228879

/-- `A038754(n+1)+2*A038754(n)` -/
def P2424441161518029322.Spec : Prop :=
  ∀ n, P2424441161518029322.a n = A228879 n

end A228879

/-! ## A228879.P1503972286252502666

`A117855(n+1)/2*A010712(n)`
-/

namespace A228879.P1503972286252502666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117855 (n + 1) : ℚ) / 2 * (A010712 n : ℚ)

end

end A228879.P1503972286252502666

namespace A228879

/-- `A117855(n+1)/2*A010712(n)` -/
def P1503972286252502666.Spec : Prop :=
  ∀ n, P1503972286252502666.a n = (A228879 n : ℚ)

end A228879

/-! ## A228879.P8429162098641593313

`A068911(n+1)+A062318(n+2)+1`
-/

namespace A228879.P8429162098641593313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (n + 1) + (A062318 (n + 2) + 1)

end

end A228879.P8429162098641593313

namespace A228879

/-- `A068911(n+1)+A062318(n+2)+1` -/
def P8429162098641593313.Spec : Prop :=
  ∀ n, P8429162098641593313.a n = A228879 n

end A228879

/-!
# A228880: Numbers of the form x^2*y*(2*x + y).

The programs for A228880, there is no canonical definition to state claims against.
-/

/-! ## A228880.P18252457039991429169

`A159335(A253652(n+1))`
-/

namespace A228880.P18252457039991429169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159335 (A253652 (n + 1)).toNat

end

end A228880.P18252457039991429169

/-! ## A228880.P2190924783494240974

`A000194(2*A253652(n+1))`
-/

namespace A228880.P2190924783494240974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * A253652 (n + 1)).toNat

end

end A228880.P2190924783494240974

/-! ## A228880.P2742893696765156090

`A000196(2*A253652(n+1))`
-/

namespace A228880.P2742893696765156090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * A253652 (n + 1)).toNat

end

end A228880.P2742893696765156090

/-! ## A228880.P1209542407706975319

`A259361(2*A253652(n+1))`
-/

namespace A228880.P1209542407706975319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (2 * A253652 (n + 1)).toNat

end

end A228880.P1209542407706975319

/-! ## A228880.P15333010710328705045

`A319290(2*A253652(n+1))`
-/

namespace A228880.P15333010710328705045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319290 (2 * A253652 (n + 1)).toNat

end

end A228880.P15333010710328705045

/-!
# A228882: Maximum sum of elements of an n X n matrix filled with numbers such that if a(j,k)=i, then all numbers 1 ... i-1 are represented in (a(j-1,k), a(j+1,k), a(j,k-1), a(j,k+1)).

The programs for A228882, there is no canonical definition to state claims against.
-/

/-! ## A228882.P6079221619961015124

`A314247(∑[n])+ceil(3*n/2)`
-/

namespace A228882.P6079221619961015124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314247 (∑ j ∈ Finset.range (n + 1), f1 j) + ⌈3 * ((n : ℚ) / 2)⌉

end

end A228882.P6079221619961015124

/-! ## A228882.P12476019013118497682

`A054897(A144560(n+1))`
-/

namespace A228882.P12476019013118497682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054897 (A144560 (n + 1)).toNat

end

end A228882.P12476019013118497682

/-! ## A228882.P14430024650689085785

`A267461(n)+∑[A312933(n)]`
-/

namespace A228882.P14430024650689085785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267461 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228882.P14430024650689085785

/-! ## A228882.P15560807618629948770

`A054897(A062786(2*(n+1)))`
-/

namespace A228882.P15560807618629948770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054897 (A062786 (2 * (n + 1))).toNat

end

end A228882.P15560807618629948770

/-! ## A228882.P2629330663532623546

`A038107(n)+A000969(2*n)`
-/

namespace A228882.P2629330663532623546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n + A000969 (2 * n)

end

end A228882.P2629330663532623546

/-!
# A228883: G.f. satisfies: x = A(x - A^2(x - A^3(x - A^4(x - A^5(x -...))))).

The programs for A228883, there is no canonical definition to state claims against.
-/

/-! ## A228883.P9328356387164409616

`Δ[A008612(∑[A247499(n)])]`
-/

namespace A228883.P9328356387164409616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247499 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228883.P9328356387164409616

/-! ## A228883.P11271153691758419906

`A008612(xor(∑{d}[n+1, #], A011792(n)))`
-/

namespace A228883.P11271153691758419906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (Int.xor ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A011792 n)).toNat

end

end A228883.P11271153691758419906

/-!
# A228884: Determinant of the n X n matrix with (i,j)-entry equal to the greatest common divisor of i-j and n.

The programs for A228884, there is no canonical definition to state claims against.
-/

/-! ## A228884.P18043517180723653581

`and(A056971(2*n), A349862(∑{d}[n+1, 2^(#-1)]))`
-/

namespace A228884.P18043517180723653581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056971 (2 * n)) (A349862 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ))).toNat)

end

end A228884.P18043517180723653581

/-! ## A228884.P13108248761294496391

`A034448(A307085(n+1)-A203571(n))`
-/

namespace A228884.P13108248761294496391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A307085 (n + 1) - A203571 n).toNat

end

end A228884.P13108248761294496391

/-!
# A228885: Determinant of the n X n matrix with (i,j)-entry equal to 1 or 0 according as i + j is coprime to n or not.

The programs for A228885, there is no canonical definition to state claims against.
-/

/-! ## A228885.P942503055262620828

`A057077(n+1)*A008966(n+1)*A349741(n+1)*A000010(n+1)`
-/

namespace A228885.P942503055262620828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A008966 (n + 1) * A349741 (n + 1) * A000010 (n + 1)

end

end A228885.P942503055262620828

/-!
# A228887: a(n) = binomial(3*n + 1,3).

The programs for A228887, the canonical program `A228887.P10799054166888556003` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228887 has offset 1).

The definition of A228887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228887.P10799054166888556003

`C(3*n+4, 3)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228887

/-- `C(3*n+4, 3)` -/
def P10799054166888556003.Spec : Prop :=
  ∀ n, (P10799054166888556003.a n : ℤ) = A228887 (n + 1)

theorem P10799054166888556003.correct : P10799054166888556003.Spec := by
  intro n
  simp only [A228887, Nat.add_sub_cancel]

end A228887

/-! ## A228887.P870172850223121851

`∑[∑[27*n]+4]`
-/

namespace A228887.P870172850223121851
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228887.P870172850223121851

namespace A228887

/-- `∑[∑[27*n]+4]` -/
def P870172850223121851.Spec : Prop :=
  ∀ n, (P870172850223121851.a n : ℤ) = A228887 (n + 1)

end A228887

/-! ## A228887.P14969623986234210643

`record[C(gcd(3, 1-n)+n+3, 3)]`
-/

namespace A228887.P14969623986234210643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.gcd 3 (1 - (n : ℤ)) + (n + 3)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228887.P14969623986234210643

namespace A228887

/-- `record[C(gcd(3, 1-n)+n+3, 3)]` -/
def P14969623986234210643.Spec : Prop :=
  ∀ n, (P14969623986234210643.a n : ℤ) = A228887 (n + 1)

end A228887

/-! ## A228887.P10925047481436385185

`A097321(n+1)/6`
-/

namespace A228887.P10925047481436385185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097321 (n + 1) : ℚ) / 6

end

end A228887.P10925047481436385185

namespace A228887

/-- `A097321(n+1)/6` -/
def P10925047481436385185.Spec : Prop :=
  ∀ n, P10925047481436385185.a n = (A228887 (n + 1) : ℚ)

end A228887

/-! ## A228887.P15986282208606518643

`A230018(n+1)-3*(n+1)`
-/

namespace A228887.P15986282208606518643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230018 (n + 1) - (3 * (n + 1) : ℤ)

end

end A228887.P15986282208606518643

namespace A228887

/-- `A230018(n+1)-3*(n+1)` -/
def P15986282208606518643.Spec : Prop :=
  ∀ n, P15986282208606518643.a n = A228887 (n + 1)

end A228887

/-! ## A228887.P2726949689602618125

`(n+1)/2*A136016(n+1)`
-/

namespace A228887.P2726949689602618125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A136016 (n + 1) : ℚ)

end

end A228887.P2726949689602618125

namespace A228887

/-- `(n+1)/2*A136016(n+1)` -/
def P2726949689602618125.Spec : Prop :=
  ∀ n, P2726949689602618125.a n = (A228887 (n + 1) : ℚ)

end A228887

/-! ## A228887.P7012900217407180496

`(3*n+4)*A000326(n+1)`
-/

namespace A228887.P7012900217407180496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 4 : ℤ) * A000326 (n + 1)

end

end A228887.P7012900217407180496

namespace A228887

/-- `(3*n+4)*A000326(n+1)` -/
def P7012900217407180496.Spec : Prop :=
  ∀ n, P7012900217407180496.a n = A228887 (n + 1)

end A228887

/-! ## A228887.P8312036737480124735

`A081267(n)+A062124(n)`
-/

namespace A228887.P8312036737480124735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081267 n + A062124 n

end

end A228887.P8312036737480124735

namespace A228887

/-- `A081267(n)+A062124(n)` -/
def P8312036737480124735.Spec : Prop :=
  ∀ n, P8312036737480124735.a n = A228887 (n + 1)

end A228887

/-! ## A228887.P16553694278766334396

`∑[A016789(n)]*A016789(n)`
-/

namespace A228887.P16553694278766334396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A016789 n

end

end A228887.P16553694278766334396

namespace A228887

/-- `∑[A016789(n)]*A016789(n)` -/
def P16553694278766334396.Spec : Prop :=
  ∀ n, P16553694278766334396.a n = A228887 (n + 1)

end A228887

/-! ## A228887.P10256479371016549497

`A281381(n)+A142962(n+1)`
-/

namespace A228887.P10256479371016549497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281381 n + A142962 (n + 1)

end

end A228887.P10256479371016549497

namespace A228887

/-- `A281381(n)+A142962(n+1)` -/
def P10256479371016549497.Spec : Prop :=
  ∀ n, P10256479371016549497.a n = A228887 (n + 1)

end A228887

/-! ## A228887.P1981815307180876716

`A199833(n+1)-A134481(n)`
-/

namespace A228887.P1981815307180876716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199833 (n + 1) - A134481 n

end

end A228887.P1981815307180876716

namespace A228887

/-- `A199833(n+1)-A134481(n)` -/
def P1981815307180876716.Spec : Prop :=
  ∀ n, P1981815307180876716.a n = A228887 (n + 1)

end A228887

/-! ## A228887.P12908123693490905179

`A085789(n+1)+A024215(n+1)`
-/

namespace A228887.P12908123693490905179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085789 (n + 1) + A024215 (n + 1)

end

end A228887.P12908123693490905179

namespace A228887

/-- `A085789(n+1)+A024215(n+1)` -/
def P12908123693490905179.Spec : Prop :=
  ∀ n, P12908123693490905179.a n = A228887 (n + 1)

end A228887

/-! ## A228887.P11184286960961880772

`A126335(n+1)+A006564(n+1)`
-/

namespace A228887.P11184286960961880772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126335 (n + 1) + A006564 (n + 1)

end

end A228887.P11184286960961880772

namespace A228887

/-- `A126335(n+1)+A006564(n+1)` -/
def P11184286960961880772.Spec : Prop :=
  ∀ n, P11184286960961880772.a n = A228887 (n + 1)

end A228887

/-! ## A228887.P3301930992965389948

`A000326(n+1)*A016777(n+1)`
-/

namespace A228887.P3301930992965389948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1) * A016777 (n + 1)

end

end A228887.P3301930992965389948

namespace A228887

/-- `A000326(n+1)*A016777(n+1)` -/
def P3301930992965389948.Spec : Prop :=
  ∀ n, P3301930992965389948.a n = A228887 (n + 1)

end A228887

/-! ## A228887.P17798326072276190468

`A157024(n+1)/3`
-/

namespace A228887.P17798326072276190468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157024 (n + 1) : ℚ) / 3

end

end A228887.P17798326072276190468

namespace A228887

/-- `A157024(n+1)/3` -/
def P17798326072276190468.Spec : Prop :=
  ∀ n, P17798326072276190468.a n = (A228887 (n + 1) : ℚ)

end A228887

/-! ## A228887.P621728476616901014

`3*A004188(n+1)+n+1`
-/

namespace A228887.P621728476616901014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004188 (n + 1) + (n + 1 : ℤ)

end

end A228887.P621728476616901014

namespace A228887

/-- `3*A004188(n+1)+n+1` -/
def P621728476616901014.Spec : Prop :=
  ∀ n, P621728476616901014.a n = A228887 (n + 1)

end A228887

/-! ## A228887.P17159752007723706441

`(A244728(n+1)-(n+1))/2`
-/

namespace A228887.P17159752007723706441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244728 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A228887.P17159752007723706441

namespace A228887

/-- `(A244728(n+1)-(n+1))/2` -/
def P17159752007723706441.Spec : Prop :=
  ∀ n, P17159752007723706441.a n = (A228887 (n + 1) : ℚ)

end A228887

/-! ## A228887.P6603031441764356630

`A005449(n+1)*(3*n+2)`
-/

namespace A228887.P6603031441764356630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (n + 1) * (3 * n + 2 : ℤ)

end

end A228887.P6603031441764356630

namespace A228887

/-- `A005449(n+1)*(3*n+2)` -/
def P6603031441764356630.Spec : Prop :=
  ∀ n, P6603031441764356630.a n = A228887 (n + 1)

end A228887

/-! ## A228887.P15206591434975428457

`Δ[A005449(n)]*A005449(n+1)`
-/

namespace A228887.P15206591434975428457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A005449 (n + 1)

end

end A228887.P15206591434975428457

namespace A228887

/-- `Δ[A005449(n)]*A005449(n+1)` -/
def P15206591434975428457.Spec : Prop :=
  ∀ n, P15206591434975428457.a n = A228887 (n + 1)

end A228887

/-! ## A228887.P8213388497370858316

`A035328(n+1)+A006003(n+1)`
-/

namespace A228887.P8213388497370858316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035328 (n + 1) + A006003 (n + 1)

end

end A228887.P8213388497370858316

namespace A228887

/-- `A035328(n+1)+A006003(n+1)` -/
def P8213388497370858316.Spec : Prop :=
  ∀ n, P8213388497370858316.a n = A228887 (n + 1)

end A228887

/-!
# A228888: a(n) = binomial(3*n+2,3).

The programs for A228888, the canonical program `A228888.P2937561705110500032` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228888 has offset 1).

The definition of A228888 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228888.P17749409179126587981

`1/6*3*(n+1)*(3*(n+1)+1)*(3*(n+1)+2)`
-/

namespace A228888.P17749409179126587981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * (3 * (n + 1) * ((3 * (n + 1) + 1) * (3 * (n + 1) + 2)) : ℚ)

end

end A228888.P17749409179126587981

namespace A228888

/-- `1/6*3*(n+1)*(3*(n+1)+1)*(3*(n+1)+2)` -/
def P17749409179126587981.Spec : Prop :=
  ∀ n, P17749409179126587981.a n = (A228888 (n + 1) : ℚ)

theorem P17749409179126587981.correct : P17749409179126587981.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A228888, Nat.add_sub_cancel, A228888.P17749409179126587981.a, A228888.P2937561705110500032.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A228888, Nat.add_sub_cancel, A228888.P17749409179126587981.a, A228888.P2937561705110500032.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A228888

/-! ## A228888.P2937561705110500032

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=10, a(1)=56, a(2)=165, a(3)=364`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228888

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2937561705110500032.Spec : Prop :=
  ∀ n, P2937561705110500032.a n = A228888 (n + 1)

theorem P2937561705110500032.correct : P2937561705110500032.Spec := by
  intro n
  simp only [A228888, Nat.add_sub_cancel]

end A228888

/-! ## A228888.P6098640844533864155

`C(3*n+5, 3)`
-/

namespace A228888.P6098640844533864155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n + 5) 3

end

end A228888.P6098640844533864155

namespace A228888

/-- `C(3*n+5, 3)` -/
def P6098640844533864155.Spec : Prop :=
  ∀ n, (P6098640844533864155.a n : ℤ) = A228888 (n + 1)

end A228888

/-! ## A228888.P14689954715454241697

`Δ[C(C(n+1, 2)+(n+1)², 2)]`
-/

namespace A228888.P14689954715454241697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (n + 1) 2 + (n + 1) ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A228888.P14689954715454241697

namespace A228888

/-- `Δ[C(C(n+1, 2)+(n+1)², 2)]` -/
def P14689954715454241697.Spec : Prop :=
  ∀ n, P14689954715454241697.a n = A228888 (n + 1)

end A228888

/-! ## A228888.P2459248465643718828

`∑[∑[a(n-1)+27]]+n+1` with `a(0)=9`
-/

namespace A228888.P2459248465643718828
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f2 =>
  f2 (n - 1) + 27

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A228888.P2459248465643718828

namespace A228888

/-- `∑[∑[a(n-1)+27]]+n+1` -/
def P2459248465643718828.Spec : Prop :=
  ∀ n, (P2459248465643718828.a n : ℤ) = A228888 (n + 1)

end A228888

/-! ## A228888.P12630858903721171804

`A228889(n+1)/6`
-/

namespace A228888.P12630858903721171804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228889 (n + 1) : ℚ) / 6

end

end A228888.P12630858903721171804

namespace A228888

/-- `A228889(n+1)/6` -/
def P12630858903721171804.Spec : Prop :=
  ∀ n, P12630858903721171804.a n = (A228888 (n + 1) : ℚ)

end A228888

/-! ## A228888.P547415038336811538

`∑[∑[9*A016777(n)]+1]`
-/

namespace A228888.P547415038336811538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A016777 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228888.P547415038336811538

namespace A228888

/-- `∑[∑[9*A016777(n)]+1]` -/
def P547415038336811538.Spec : Prop :=
  ∀ n, P547415038336811538.a n = A228888 (n + 1)

end A228888

/-! ## A228888.P12772951248936205164

`3*A085789(n+1)+n+1`
-/

namespace A228888.P12772951248936205164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A085789 (n + 1) + (n + 1 : ℤ)

end

end A228888.P12772951248936205164

namespace A228888

/-- `3*A085789(n+1)+n+1` -/
def P12772951248936205164.Spec : Prop :=
  ∀ n, P12772951248936205164.a n = A228888 (n + 1)

end A228888

/-! ## A228888.P2482899224488528645

`A086640(n+1)+A062124(n)`
-/

namespace A228888.P2482899224488528645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086640 (n + 1) + A062124 n

end

end A228888.P2482899224488528645

namespace A228888

/-- `A086640(n+1)+A062124(n)` -/
def P2482899224488528645.Spec : Prop :=
  ∀ n, P2482899224488528645.a n = A228888 (n + 1)

end A228888

/-! ## A228888.P2401912436605482597

`A017113(n)+A000561(n+3)`
-/

namespace A228888.P2401912436605482597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 n + A000561 (n + 3)

end

end A228888.P2401912436605482597

namespace A228888

/-- `A017113(n)+A000561(n+3)` -/
def P2401912436605482597.Spec : Prop :=
  ∀ n, P2401912436605482597.a n = A228888 (n + 1)

end A228888

/-! ## A228888.P17731526745698590379

`A085788(n+1)+A024394(n+1)`
-/

namespace A228888.P17731526745698590379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085788 (n + 1) + A024394 (n + 1)

end

end A228888.P17731526745698590379

namespace A228888

/-- `A085788(n+1)+A024394(n+1)` -/
def P17731526745698590379.Spec : Prop :=
  ∀ n, P17731526745698590379.a n = A228888 (n + 1)

end A228888

/-! ## A228888.P11121349626784788762

`A094421(n+1)-A085789(n+1)`
-/

namespace A228888.P11121349626784788762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094421 (n + 1) - A085789 (n + 1)

end

end A228888.P11121349626784788762

namespace A228888

/-- `A094421(n+1)-A085789(n+1)` -/
def P11121349626784788762.Spec : Prop :=
  ∀ n, P11121349626784788762.a n = A228888 (n + 1)

end A228888

/-! ## A228888.P2364732465629020054

`Δ[C(∑[n]+(n+1)², 2)]`
-/

namespace A228888.P2364732465629020054
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + (n + 1) ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A228888.P2364732465629020054

namespace A228888

/-- `Δ[C(∑[n]+(n+1)², 2)]` -/
def P2364732465629020054.Spec : Prop :=
  ∀ n, P2364732465629020054.a n = A228888 (n + 1)

end A228888

/-! ## A228888.P6662946501668121283

`∑[A152996(n+1)+1]`
-/

namespace A228888.P6662946501668121283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152996 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228888.P6662946501668121283

namespace A228888

/-- `∑[A152996(n+1)+1]` -/
def P6662946501668121283.Spec : Prop :=
  ∀ n, P6662946501668121283.a n = A228888 (n + 1)

end A228888

/-! ## A228888.P6924570619065386247

`3*(n+1)*A001504(n+1)/6`
-/

namespace A228888.P6924570619065386247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * ((n + 1 : ℤ) * A001504 (n + 1)) : ℚ) / 6

end

end A228888.P6924570619065386247

namespace A228888

/-- `3*(n+1)*A001504(n+1)/6` -/
def P6924570619065386247.Spec : Prop :=
  ∀ n, P6924570619065386247.a n = (A228888 (n + 1) : ℚ)

end A228888

/-! ## A228888.P16829715248195990152

`A005448(n+2)*A008486(n+1)-A004277(n+1)`
-/

namespace A228888.P16829715248195990152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (n + 2) * A008486 (n + 1) - A004277 (n + 1)

end

end A228888.P16829715248195990152

namespace A228888

/-- `A005448(n+2)*A008486(n+1)-A004277(n+1)` -/
def P16829715248195990152.Spec : Prop :=
  ∀ n, P16829715248195990152.a n = A228888 (n + 1)

end A228888

/-! ## A228888.P10353119539972596306

`(A086605(n+2)+n)/2`
-/

namespace A228888.P10353119539972596306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086605 (n + 2) + (n : ℤ) : ℚ) / 2

end

end A228888.P10353119539972596306

namespace A228888

/-- `(A086605(n+2)+n)/2` -/
def P10353119539972596306.Spec : Prop :=
  ∀ n, P10353119539972596306.a n = (A228888 (n + 1) : ℚ)

end A228888

/-! ## A228888.P12323899255786401517

`A006566(n+2)-A060544(n+2)`
-/

namespace A228888.P12323899255786401517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006566 (n + 2) - A060544 (n + 2)

end

end A228888.P12323899255786401517

namespace A228888

/-- `A006566(n+2)-A060544(n+2)` -/
def P12323899255786401517.Spec : Prop :=
  ∀ n, P12323899255786401517.a n = A228888 (n + 1)

end A228888

/-! ## A228888.P8738841129564160434

`A195309(2*(n+1))+A004188(n+1)`
-/

namespace A228888.P8738841129564160434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195309 (2 * (n + 1)) + A004188 (n + 1)

end

end A228888.P8738841129564160434

namespace A228888

/-- `A195309(2*(n+1))+A004188(n+1)` -/
def P8738841129564160434.Spec : Prop :=
  ∀ n, P8738841129564160434.a n = A228888 (n + 1)

end A228888

/-!
# A228889: a(n) = 3*n*(3*n + 1)*(3*n + 2).

The programs for A228889, the canonical program `A228889.P9824764175849198475` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228889 has offset 1).

The definition of A228889 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n+1)*(3*(n+1)+1)*(3*(n+1)+2)` (program `A228889.P9824764175849198475`, by `A228889.P9824764175849198475.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A228889.P9824764175849198475

`3*(n+1)*(3*(n+1)+1)*(3*(n+1)+2)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228889

/-- `3*(n+1)*(3*(n+1)+1)*(3*(n+1)+2)` -/
def P9824764175849198475.Spec : Prop :=
  ∀ n, (P9824764175849198475.a n : ℤ) = A228889 (n + 1)

theorem P9824764175849198475.correct : P9824764175849198475.Spec := by
  intro n
  simp only [A228889, Nat.add_sub_cancel]

end A228889

/-! ## A228889.P939431863353470815

`sqrt(A016782(n+1))-(3*n+4)`
-/

namespace A228889.P939431863353470815
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016782 (n + 1) : ℝ) - (3 * n + 4 : ℝ)

end

end A228889.P939431863353470815

namespace A228889

/-- `sqrt(A016782(n+1))-(3*n+4)` -/
def P939431863353470815.Spec : Prop :=
  ∀ n, P939431863353470815.a n = (A228889 (n + 1) : ℝ)

end A228889

/-! ## A228889.P7936869050985490096

`A016780(n+1)/A016777(n+1)-A016777(n+1)`
-/

namespace A228889.P7936869050985490096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016780 (n + 1) : ℚ) / (A016777 (n + 1) : ℚ) - (A016777 (n + 1) : ℚ)

end

end A228889.P7936869050985490096

namespace A228889

/-- `A016780(n+1)/A016777(n+1)-A016777(n+1)` -/
def P7936869050985490096.Spec : Prop :=
  ∀ n, P7936869050985490096.a n = (A228889 (n + 1) : ℚ)

end A228889

/-! ## A228889.P16870675541286663206

`A016784(n+1)/A016781(n+1)-A016777(n+1)`
-/

namespace A228889.P16870675541286663206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016784 (n + 1) : ℚ) / (A016781 (n + 1) : ℚ) - (A016777 (n + 1) : ℚ)

end

end A228889.P16870675541286663206

namespace A228889

/-- `A016784(n+1)/A016781(n+1)-A016777(n+1)` -/
def P16870675541286663206.Spec : Prop :=
  ∀ n, P16870675541286663206.a n = (A228889 (n + 1) : ℚ)

end A228889

/-! ## A228889.P15640366759477541714

`(A016784(n+1)-A016782(n+1))/A016781(n+1)`
-/

namespace A228889.P15640366759477541714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016784 (n + 1) - A016782 (n + 1) : ℚ) / (A016781 (n + 1) : ℚ)

end

end A228889.P15640366759477541714

namespace A228889

/-- `(A016784(n+1)-A016782(n+1))/A016781(n+1)` -/
def P15640366759477541714.Spec : Prop :=
  ∀ n, P15640366759477541714.a n = (A228889 (n + 1) : ℚ)

end A228889

/-! ## A228889.P8309861024258093906

`A016786(n+1)/A016783(n+1)-A016777(n+1)`
-/

namespace A228889.P8309861024258093906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016786 (n + 1) : ℚ) / (A016783 (n + 1) : ℚ) - (A016777 (n + 1) : ℚ)

end

end A228889.P8309861024258093906

namespace A228889

/-- `A016786(n+1)/A016783(n+1)-A016777(n+1)` -/
def P8309861024258093906.Spec : Prop :=
  ∀ n, P8309861024258093906.a n = (A228889 (n + 1) : ℚ)

end A228889

/-! ## A228889.P18164770875940924213

`(A016786(n+1)-A016784(n+1))/A016783(n+1)`
-/

namespace A228889.P18164770875940924213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016786 (n + 1) - A016784 (n + 1) : ℚ) / (A016783 (n + 1) : ℚ)

end

end A228889.P18164770875940924213

namespace A228889

/-- `(A016786(n+1)-A016784(n+1))/A016783(n+1)` -/
def P18164770875940924213.Spec : Prop :=
  ∀ n, P18164770875940924213.a n = (A228889 (n + 1) : ℚ)

end A228889

/-! ## A228889.P7830361953973620766

`A016787(n+1)/A016784(n+1)-A016777(n+1)`
-/

namespace A228889.P7830361953973620766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016787 (n + 1) : ℚ) / (A016784 (n + 1) : ℚ) - (A016777 (n + 1) : ℚ)

end

end A228889.P7830361953973620766

namespace A228889

/-- `A016787(n+1)/A016784(n+1)-A016777(n+1)` -/
def P7830361953973620766.Spec : Prop :=
  ∀ n, P7830361953973620766.a n = (A228889 (n + 1) : ℚ)

end A228889

/-! ## A228889.P9408185802468866467

`(A016787(n+1)-A016785(n+1))/A016784(n+1)`
-/

namespace A228889.P9408185802468866467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016787 (n + 1) - A016785 (n + 1) : ℚ) / (A016784 (n + 1) : ℚ)

end

end A228889.P9408185802468866467

namespace A228889

/-- `(A016787(n+1)-A016785(n+1))/A016784(n+1)` -/
def P9408185802468866467.Spec : Prop :=
  ∀ n, P9408185802468866467.a n = (A228889 (n + 1) : ℚ)

end A228889

/-! ## A228889.P11527910570901072825

`(A016788(n+1)-A016786(n+1))/A016785(n+1)`
-/

namespace A228889.P11527910570901072825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016788 (n + 1) - A016786 (n + 1) : ℚ) / (A016785 (n + 1) : ℚ)

end

end A228889.P11527910570901072825

namespace A228889

/-- `(A016788(n+1)-A016786(n+1))/A016785(n+1)` -/
def P11527910570901072825.Spec : Prop :=
  ∀ n, P11527910570901072825.a n = (A228889 (n + 1) : ℚ)

end A228889

/-! ## A228889.P7119145356540190941

`Δ[A135037(n+1)]`
-/

namespace A228889.P7119145356540190941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228889.P7119145356540190941

namespace A228889

/-- `Δ[A135037(n+1)]` -/
def P7119145356540190941.Spec : Prop :=
  ∀ n, P7119145356540190941.a n = A228889 (n + 1)

end A228889

/-! ## A228889.P2458121676202752074

`A016779(n+1)-(3*n+4)`
-/

namespace A228889.P2458121676202752074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016779 (n + 1) - (3 * n + 4 : ℤ)

end

end A228889.P2458121676202752074

namespace A228889

/-- `A016779(n+1)-(3*n+4)` -/
def P2458121676202752074.Spec : Prop :=
  ∀ n, P2458121676202752074.a n = A228889 (n + 1)

end A228889

/-! ## A228889.P13853860137445502857

`Δ[A045943(n)*A178977(n)]`
-/

namespace A228889.P13853860137445502857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n * A178977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228889.P13853860137445502857

namespace A228889

/-- `Δ[A045943(n)*A178977(n)]` -/
def P13853860137445502857.Spec : Prop :=
  ∀ n, P13853860137445502857.a n = A228889 (n + 1)

end A228889

/-! ## A228889.P14656541210716913237

`A135037(n+2)-A135037(n+1)`
-/

namespace A228889.P14656541210716913237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135037 (n + 2) - A135037 (n + 1)

end

end A228889.P14656541210716913237

namespace A228889

/-- `A135037(n+2)-A135037(n+1)` -/
def P14656541210716913237.Spec : Prop :=
  ∀ n, P14656541210716913237.a n = A228889 (n + 1)

end A228889

/-!
# A228890: Triangular array read by rows. T(n,k) is the number of 2-colored labeled graphs on n nodes with exactly k edges; n >= 0, 0 <= k <= A002620(n).

The programs for A228890, there is no canonical definition to state claims against.
-/

/-! ## A228890.P15986440065302287274

`A000005(xor(A002265(n), A042417(n)))`
-/

namespace A228890.P15986440065302287274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.xor (A002265 n) (A042417 n)).toNat

end

end A228890.P15986440065302287274

/-! ## A228890.P17463195487081299560

`A000005(lcm(A026371(n+1), A350490(n)))`
-/

namespace A228890.P17463195487081299560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (A026371 (n + 1)) (A350490 n))

end

end A228890.P17463195487081299560

/-! ## A228890.P9011078620487414668

`A000005(lcm(A065475(3*n+1), A283433(n)))`
-/

namespace A228890.P9011078620487414668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (A065475 (3 * n + 1)) (A283433 n))

end

end A228890.P9011078620487414668

/-! ## A228890.P18094116955893946212

`A090802(lt[A017827(2*n+1), A007294(n)])`
-/

namespace A228890.P18094116955893946212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090802 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A228890.P18094116955893946212

/-!
# A228891: Let A = A050376. Let Q be the smallest term of A more than 1 + Product_{i=1..n} A(i). a(n) = Q - Product_{i=1..n} A(i).

The programs for A228891, there is no canonical definition to state claims against.
-/

/-! ## A228891.P18392061087955196439

`A054844(A056835(n))-A190597(A001189(n+1))`
-/

namespace A228891.P18392061087955196439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (A056835 n).toNat - A190597 (A001189 (n + 1)).toNat

end

end A228891.P18392061087955196439

/-! ## A228891.P5564982720447789233

`A252505(A027434(n+1)!)-A190597(A001189(n+1))`
-/

namespace A228891.P5564982720447789233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252505 (Nat.factorial (A027434 (n + 1)).toNat) - A190597 (A001189 (n + 1)).toNat

end

end A228891.P5564982720447789233

/-!
# A228892: Triangular array read by rows. T(n,k) is the number of 2-colored labeled graphs on n nodes with exactly k connected components; n>=1, 1<=k<=n.

The programs for A228892, there is no canonical definition to state claims against.
-/

/-! ## A228892.P3569087776293975644

`2*A228859(n+1)*A059268(n)`
-/

namespace A228892.P3569087776293975644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A228859 (n + 1) * A059268 n

end

end A228892.P3569087776293975644

/-! ## A228892.P2558184599920063141

`2^A002260(n+1)*A228859(n+1)`
-/

namespace A228892.P2558184599920063141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002260 (n + 1) : ℤ) * (A228859 (n + 1) : ℚ)

end

end A228892.P2558184599920063141

/-! ## A228892.P1337246220897424554

`A005843(A059268(n))*A228859(n+1)`
-/

namespace A228892.P1337246220897424554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A059268 n).toNat * A228859 (n + 1)

end

end A228892.P1337246220897424554

/-! ## A228892.P533829696221010336

`A001316(A099627(n))*A228859(n+1)`
-/

namespace A228892.P533829696221010336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A099627 n).toNat * A228859 (n + 1)

end

end A228892.P533829696221010336

/-! ## A228892.P12930388507273821445

`A000079(A002260(n+1))*A228859(n+1)`
-/

namespace A228892.P12930388507273821445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002260 (n + 1)).toNat * A228859 (n + 1)

end

end A228892.P12930388507273821445

/-!
# A228893: Numbers k such that the concatenation of the frequency of each decimal digit of k is divisible by k.

The programs for A228893, there is no canonical definition to state claims against.
-/

/-! ## A228893.P4784386549300167628

`record[gcd(∑{digits}[n, 10^(9-#)], A028310(n))]`
-/

namespace A228893.P4784386549300167628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => (10 : ℚ) ^ (9 - (x : ℤ) : ℤ)).sum) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228893.P4784386549300167628

/-! ## A228893.P11556709126680975376

`A259711(lt[2, A319594(n+1)])`
-/

namespace A228893.P11556709126680975376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259711 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A228893.P11556709126680975376

/-! ## A228893.P2564471758377266260

`record[and(A001399(n+1), A341034(2*(n+1)))]`
-/

namespace A228893.P2564471758377266260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001399 (n + 1)) (A341034 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228893.P2564471758377266260

/-! ## A228893.P13880496166627943856

`A080757(n)+A012265(A001105(n))`
-/

namespace A228893.P13880496166627943856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 n + A012265 (A001105 n).toNat

end

end A228893.P13880496166627943856

/-! ## A228893.P17143767004485155989

`A000124(n)-A000195(A250032(n+1))`
-/

namespace A228893.P17143767004485155989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A000195 (A250032 (n + 1)).toNat

end

end A228893.P17143767004485155989

/-!
# A228894: Nodes of tree generated as follows: (2,1) is an edge, and if (x,y) is an edge, then (y,y+x) and (y,2y+x) are edges.

The programs for A228894, there is no canonical definition to state claims against.
-/

/-! ## A228894.P17961793759238303162

`lt[A379311(n+4), A122284(A002808(2*(n+2)))]`
-/

namespace A228894.P17961793759238303162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379311 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122284 (A002808 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A228894.P17961793759238303162

/-! ## A228894.P6914550668208899867

`∑[A333381(A202268(n+1))]`
-/

namespace A228894.P6914550668208899867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A202268 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228894.P6914550668208899867

/-! ## A228894.P18124536136533153221

`lt[A123716(A003415(n)), A089853(n)]`
-/

namespace A228894.P18124536136533153221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123716 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089853 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A228894.P18124536136533153221

/-!
# A228895: Nodes of tree generated as follows: (3,1) is an edge, and if (x,y) is an edge, then (y,y+x) and (y,2y+x) are edges.

The programs for A228895, there is no canonical definition to state claims against.
-/

/-! ## A228895.P6359521002902460714

`∑[∏{e}[A131646(n+4), #]]`
-/

namespace A228895.P6359521002902460714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131646 (n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228895.P6359521002902460714

/-! ## A228895.P10980134428245222321

`eq[0, A125104(A008366(n+1))]`
-/

namespace A228895.P10980134428245222321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125104 (A008366 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228895.P10980134428245222321

/-! ## A228895.P4128766672094488753

`eq[0, A125104(A322275(n+1))]`
-/

namespace A228895.P4128766672094488753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125104 (A322275 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228895.P4128766672094488753

/-! ## A228895.P11647206889577966779

`A059541(n+1)-A091950(2^n)`
-/

namespace A228895.P11647206889577966779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059541 (n + 1) - A091950 (2 ^ n)

end

end A228895.P11647206889577966779

/-! ## A228895.P9481846605007861996

`lt[A079510(A045319(n+5)), A340387(2*(n+2))]`
-/

namespace A228895.P9481846605007861996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079510 (A045319 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340387 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A228895.P9481846605007861996

/-!
# A228896: Nodes of tree generated as follows: (3,2) is an edge, and if (x,y) is an edge, then (y,y+x) and (y,2y+x) are edges.

The programs for A228896, there is no canonical definition to state claims against.
-/

/-! ## A228896.P7758619249196874783

`∑[A001221(A215985(n+8))]`
-/

namespace A228896.P7758619249196874783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A215985 (n + 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228896.P7758619249196874783

/-!
# A228897: Nodes of tree generated as follows: (1,2) is an edge, and if (x,y) is an edge, then (y,x+y) and (y,x*y) are edges.

The programs for A228897, there is no canonical definition to state claims against.
-/

/-! ## A228897.P13090247414851102782

`record[A065108(n+1)%A127290(3*n+2)]`
-/

namespace A228897.P13090247414851102782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065108 (n + 1)) (A127290 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228897.P13090247414851102782

/-! ## A228897.P3778065129667499520

`record[A031285(n)%A007000(A005092(n+1))]`
-/

namespace A228897.P3778065129667499520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031285 n) (A007000 (A005092 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228897.P3778065129667499520

/-! ## A228897.P15906170194258394337

`eq[A055641(A298296(n)), A343380(n)]`
-/

namespace A228897.P15906170194258394337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A298296 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228897.P15906170194258394337

/-! ## A228897.P4446875180068963198

`A286610(A109611(n+1)%A093512(3*n+5))`
-/

namespace A228897.P4446875180068963198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286610 (Int.tmod (A109611 (n + 1)) (A093512 (3 * n + 5))).toNat

end

end A228897.P4446875180068963198

/-! ## A228897.P17193775174792712787

`A065108(lt[A218970(n+2), A273662(3*n+2)])`
-/

namespace A228897.P17193775174792712787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218970 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273662 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065108 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A228897.P17193775174792712787

/-!
# A228898: Nodes of tree generated as follows: (1,2) is an edge, and if (x,y) is an edge, then (y,x+y) and (y,x^2 + y^2) are edges.

The programs for A228898, there is no canonical definition to state claims against.
-/

/-! ## A228898.P9026100430348991250

`A352695(n+1)-A352727(A352589(n))`
-/

namespace A228898.P9026100430348991250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352695 (n + 1) - A352727 (A352589 n).toNat

end

end A228898.P9026100430348991250

/-! ## A228898.P11389202134739069210

`A352695(n+1)-A014707(A287021(n))`
-/

namespace A228898.P11389202134739069210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352695 (n + 1) - A014707 (A287021 n).toNat

end

end A228898.P11389202134739069210

/-! ## A228898.P18231489442940999348

`A352695(n+1)-A276791(A292392(n+1))`
-/

namespace A228898.P18231489442940999348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352695 (n + 1) - A276791 (A292392 (n + 1)).toNat

end

end A228898.P18231489442940999348

/-! ## A228898.P12242523980190552975

`xor(A010054(A237878(n+2)), A352695(n+1))`
-/

namespace A228898.P12242523980190552975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010054 (A237878 (n + 2)).toNat) (A352695 (n + 1))

end

end A228898.P12242523980190552975

