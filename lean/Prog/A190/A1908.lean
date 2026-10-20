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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
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
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A190800: Primes p such that the polynomial x^2 + x + p generates only primes for x = 1..8.

The programs for A190800, there is no canonical definition to state claims against.
-/

/-! ## A190800.P8045540759089535520

`A191456(∏{p}[n+1, #]^∑{p}[n+1, ceil(n/#)])`
-/

namespace A190800.P8045540759089535520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191456 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), ⌈(n : ℚ) / (p : ℚ)⌉ : ℤ))).toNat

end

end A190800.P8045540759089535520

/-!
# A190801: Least semiprime whose prime factors differ by n!.

The programs for A190801, there is no canonical definition to state claims against.
-/

/-! ## A190801.P10415003571137459477

`A037152(n+1)*A037153(n+1)`
-/

namespace A190801.P10415003571137459477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037152 (n + 1) * A037153 (n + 1)

end

end A190801.P10415003571137459477

/-! ## A190801.P1595689753999644370

`lcm(A037152(A000027(n+1)), A037153(n+1))`
-/

namespace A190801.P1595689753999644370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A037152 (A000027 (n + 1)).toNat) (A037153 (n + 1))

end

end A190801.P1595689753999644370

/-! ## A190801.P3653987030075003992

`(A037153(n+1)+A000142(n+1))*A037153(n+1)`
-/

namespace A190801.P3653987030075003992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037153 (n + 1) + A000142 (n + 1)) * A037153 (n + 1)

end

end A190801.P3653987030075003992

/-! ## A190801.P31305669249688013

`(A343593(n+1)+A005095(n+1))*A037153(n+1)`
-/

namespace A190801.P31305669249688013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A343593 (n + 1) + A005095 (n + 1)) * A037153 (n + 1)

end

end A190801.P31305669249688013

/-! ## A190801.P18174299062323481572

`(A037152(n+1)-A000142(n+1))*A037152(n+1)`
-/

namespace A190801.P18174299062323481572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037152 (n + 1) - A000142 (n + 1)) * A037152 (n + 1)

end

end A190801.P18174299062323481572

/-!
# A190802: Gauss' approximation for the number of primes below 10^n.

The programs for A190802, there is no canonical definition to state claims against.
-/

/-! ## A190802.P15560060140365566206

`∑[A228067(n+1)]`
-/

namespace A190802.P15560060140365566206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190802.P15560060140365566206

/-! ## A190802.P9867094809549983003

`∑[record[A228067(A193739(n))]]`
-/

namespace A190802.P9867094809549983003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228067 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190802.P9867094809549983003

/-! ## A190802.P5880529170435958917

`∑[record[A228067(A286558(n))]]`
-/

namespace A190802.P5880529170435958917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228067 (A286558 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190802.P5880529170435958917

/-! ## A190802.P9042755911215007207

`A106313(n+1)+A006880(n+1)`
-/

namespace A190802.P9042755911215007207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106313 (n + 1) + A006880 (n + 1)

end

end A190802.P9042755911215007207

/-! ## A190802.P10198302124300687371

`A057754(n+1)+A106313(n+1)-A057752(n+1)`
-/

namespace A190802.P10198302124300687371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057754 (n + 1) + (A106313 (n + 1) - A057752 (n + 1))

end

end A190802.P10198302124300687371

/-!
# A190803: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 2x-1 and 3x-1 are in a.

The programs for A190803, there is no canonical definition to state claims against.
-/

/-! ## A190803.P12953695514053238059

`ceil(A190804(n+1)/2)`
-/

namespace A190803.P12953695514053238059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A190804 (n + 1) : ℚ) / 2⌉

end

end A190803.P12953695514053238059

/-! ## A190803.P967928234102373452

`ceil(A190805(n+1)/3)`
-/

namespace A190803.P967928234102373452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A190805 (n + 1) : ℚ) / 3⌉

end

end A190803.P967928234102373452

/-! ## A190803.P178410417911663605

`ceil(A190806(n+1)/4)`
-/

namespace A190803.P178410417911663605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A190806 (n + 1) : ℚ) / 4⌉

end

end A190803.P178410417911663605

/-! ## A190803.P14880643104953219536

`A190805(n+1)+1-A190804(n+1)`
-/

namespace A190803.P14880643104953219536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190805 (n + 1) + (1 - A190804 (n + 1))

end

end A190803.P14880643104953219536

/-! ## A190803.P3167701734583628819

`A190806(n+1)+1-A190805(n+1)`
-/

namespace A190803.P3167701734583628819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190806 (n + 1) + (1 - A190805 (n + 1))

end

end A190803.P3167701734583628819

/-! ## A190803.P1719749931617548105

`record[A190808(A032742(n+1))+A057427(n)]`
-/

namespace A190803.P1719749931617548105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190808 (A032742 (n + 1)).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190803.P1719749931617548105

/-! ## A190803.P17164836545006920460

`A078898(A190804(n+1)-1)+1`
-/

namespace A190803.P17164836545006920460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A190804 (n + 1) - 1).toNat + 1

end

end A190803.P17164836545006920460

/-! ## A190803.P15041520954399819331

`A000463(A190804(n+1))`
-/

namespace A190803.P15041520954399819331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A190804 (n + 1)).toNat

end

end A190803.P15041520954399819331

/-! ## A190803.P4435366165572968867

`A004526(A190804(n+1)+1)`
-/

namespace A190803.P4435366165572968867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A190804 (n + 1) + 1).toNat

end

end A190803.P4435366165572968867

/-! ## A190803.P13345954073837230032

`A032742(A190804(n+1)+1)`
-/

namespace A190803.P13345954073837230032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A190804 (n + 1) + 1).toNat

end

end A190803.P13345954073837230032

/-! ## A190803.P7698626373501391891

`A078898(A190804(n+1)+1)`
-/

namespace A190803.P7698626373501391891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A190804 (n + 1) + 1).toNat

end

end A190803.P7698626373501391891

/-! ## A190803.P6751301163949682249

`A080513(A190804(n+1)-1)`
-/

namespace A190803.P6751301163949682249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A190804 (n + 1) - 1).toNat

end

end A190803.P6751301163949682249

/-! ## A190803.P18183868580685369608

`A001651(A190804(n+1)+1)-A190804(n+1)`
-/

namespace A190803.P18183868580685369608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A190804 (n + 1) + 1).toNat - A190804 (n + 1)

end

end A190803.P18183868580685369608

/-! ## A190803.P18422589569763798942

`A008620(A190805(n+1))`
-/

namespace A190803.P18422589569763798942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A190805 (n + 1)).toNat

end

end A190803.P18422589569763798942

/-! ## A190803.P6158509026791339008

`A004396(A190805(n+1)+2)/2`
-/

namespace A190803.P6158509026791339008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004396 (A190805 (n + 1) + 2).toNat : ℚ) / 2

end

end A190803.P6158509026791339008

/-! ## A190803.P896970628909590601

`A004773(A190805(n+1)+1)-A190805(n+1)`
-/

namespace A190803.P896970628909590601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A190805 (n + 1) + 1).toNat - A190805 (n + 1)

end

end A190803.P896970628909590601

/-! ## A190803.P5525996216144190639

`A190805(n+1)-A004396(A190805(n+1)-1)`
-/

namespace A190803.P5525996216144190639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190805 (n + 1) - A004396 (A190805 (n + 1) - 1).toNat

end

end A190803.P5525996216144190639

/-! ## A190803.P14071171081602243040

`A008621(A190806(n+1))`
-/

namespace A190803.P14071171081602243040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A190806 (n + 1)).toNat

end

end A190803.P14071171081602243040

/-!
# A190804: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 2x-1 and 3x are in a.

The programs for A190804, there is no canonical definition to state claims against.
-/

/-! ## A190804.P11552915166693326544

`ceil(A190806(n+1)/2)`
-/

namespace A190804.P11552915166693326544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A190806 (n + 1) : ℚ) / 2⌉

end

end A190804.P11552915166693326544

/-! ## A190804.P8569103177912928414

`2*A190803(n+1)-1`
-/

namespace A190804.P8569103177912928414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190803 (n + 1) - 1

end

end A190804.P8569103177912928414

/-! ## A190804.P6322154112469097529

`A190805(n+1)+1-A190803(n+1)`
-/

namespace A190804.P6322154112469097529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190805 (n + 1) + (1 - A190803 (n + 1))

end

end A190804.P6322154112469097529

/-! ## A190804.P9748298428381060494

`2*A190805(n+1)-A190806(n+1)`
-/

namespace A190804.P9748298428381060494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190805 (n + 1) - A190806 (n + 1)

end

end A190804.P9748298428381060494

/-! ## A190804.P18163139024279903943

`A190803(n+1)+A190803(n+1)-A309873(n+1)²`
-/

namespace A190804.P18163139024279903943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190803 (n + 1) + (A190803 (n + 1) - A309873 (n + 1) ^ 2)

end

end A190804.P18163139024279903943

/-! ## A190804.P16239842183591148194

`A191116(n+2)%(A191114(n+2)-A190803(n+1))`
-/

namespace A190804.P16239842183591148194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191116 (n + 2)) (A191114 (n + 2) - A190803 (n + 1))

end

end A190804.P16239842183591148194

/-! ## A190804.P10764067209638600604

`A004273(A190803(n+1))`
-/

namespace A190804.P10764067209638600604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A190803 (n + 1)).toNat

end

end A190804.P10764067209638600604

/-! ## A190804.P14433082107948640640

`A023443(2*A190803(n+1))`
-/

namespace A190804.P14433082107948640640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A190803 (n + 1)).toNat

end

end A190804.P14433082107948640640

/-! ## A190804.P6649717773957915122

`A004396(A190805(n+1))`
-/

namespace A190804.P6649717773957915122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A190805 (n + 1)).toNat

end

end A190804.P6649717773957915122

/-! ## A190804.P16631593423110426473

`A004773(A190805(n+1)+1)/2`
-/

namespace A190804.P16631593423110426473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004773 (A190805 (n + 1) + 1).toNat : ℚ) / 2

end

end A190804.P16631593423110426473

/-! ## A190804.P12864988852918623587

`A190805(n+1)-A002264(A190805(n+1)+1)`
-/

namespace A190804.P12864988852918623587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190805 (n + 1) - A002264 (A190805 (n + 1) + 1).toNat

end

end A190804.P12864988852918623587

/-! ## A190804.P391630047805312462

`A000463(A190806(n+1))`
-/

namespace A190804.P391630047805312462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A190806 (n + 1)).toNat

end

end A190804.P391630047805312462

/-! ## A190804.P10424515523570708808

`A008620(2*A190805(n+1))`
-/

namespace A190804.P10424515523570708808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * A190805 (n + 1)).toNat

end

end A190804.P10424515523570708808

/-! ## A190804.P17061574663783380162

`A002264(2*(A190805(n+1)+1))`
-/

namespace A190804.P17061574663783380162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * (A190805 (n + 1) + 1)).toNat

end

end A190804.P17061574663783380162

/-! ## A190804.P66613957304374067

`A002264(A190805(n+1)+A190805(n+1)+1)`
-/

namespace A190804.P66613957304374067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A190805 (n + 1) + (A190805 (n + 1) + 1)).toNat

end

end A190804.P66613957304374067

/-! ## A190804.P17762550566758420628

`A008620(A190805(n+1)+A190805(n+1)-1)`
-/

namespace A190804.P17762550566758420628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A190805 (n + 1) + (A190805 (n + 1) - 1)).toNat

end

end A190804.P17762550566758420628

/-! ## A190804.P7323350791005083697

`A008621(2*A190806(n+1))`
-/

namespace A190804.P7323350791005083697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A190806 (n + 1)).toNat

end

end A190804.P7323350791005083697

/-! ## A190804.P691611261270450850

`A002265(2*(A190806(n+1)+1))`
-/

namespace A190804.P691611261270450850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A190806 (n + 1) + 1)).toNat

end

end A190804.P691611261270450850

/-! ## A190804.P10339976394023500013

`A008621(A190806(n+1)+A190806(n+1)+1)`
-/

namespace A190804.P10339976394023500013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A190806 (n + 1) + (A190806 (n + 1) + 1)).toNat

end

end A190804.P10339976394023500013

/-! ## A190804.P9426053791723147612

`A002265(A190806(n+1)+A190806(n+1)+2)`
-/

namespace A190804.P9426053791723147612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A190806 (n + 1) + (A190806 (n + 1) + 2)).toNat

end

end A190804.P9426053791723147612

/-!
# A190805: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 2x-1 and 3x+1 are in a.

The programs for A190805, there is no canonical definition to state claims against.
-/

/-! ## A190805.P15828181838476625804

`3*A190803(n+1)-2`
-/

namespace A190805.P15828181838476625804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A190803 (n + 1) - 2

end

end A190805.P15828181838476625804

/-! ## A190805.P4626954023856642759

`3*(A190804(n+1)+1)/2-2`
-/

namespace A190805.P4626954023856642759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A190804 (n + 1) + 1 : ℚ) / 2) - 2

end

end A190805.P4626954023856642759

/-! ## A190805.P9734516450980493763

`A190803(n+1)+A190804(n+1)-1`
-/

namespace A190805.P9734516450980493763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190803 (n + 1) + (A190804 (n + 1) - 1)

end

end A190805.P9734516450980493763

/-! ## A190805.P6903888434912910124

`A190806(n+1)+1-A190803(n+1)`
-/

namespace A190805.P6903888434912910124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190806 (n + 1) + (1 - A190803 (n + 1))

end

end A190805.P6903888434912910124

/-! ## A190805.P15129883598636572445

`(A190806(n+1)+A190804(n+1))/2`
-/

namespace A190805.P15129883598636572445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190806 (n + 1) + A190804 (n + 1) : ℚ) / 2

end

end A190805.P15129883598636572445

/-! ## A190805.P14094746334083550730

`A190804(n+1)+A078898(A190804(n+1)-1)`
-/

namespace A190805.P14094746334083550730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190804 (n + 1) + A078898 (A190804 (n + 1) - 1).toNat

end

end A190805.P14094746334083550730

/-! ## A190805.P8710182291558391584

`A001651(A190804(n+1))`
-/

namespace A190805.P8710182291558391584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A190804 (n + 1)).toNat

end

end A190805.P8710182291558391584

/-! ## A190805.P6795827255704061774

`A190804(n+1)+A004526(A190804(n+1)-1)`
-/

namespace A190805.P6795827255704061774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190804 (n + 1) + A004526 (A190804 (n + 1) - 1).toNat

end

end A190805.P6795827255704061774

/-! ## A190805.P4373269007725500465

`A006368(A190806(n+1))`
-/

namespace A190805.P4373269007725500465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A190806 (n + 1)).toNat

end

end A190805.P4373269007725500465

/-! ## A190805.P10810401785275217045

`A190806(n+1)-A002265(A190806(n+1)+1)`
-/

namespace A190805.P10810401785275217045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190806 (n + 1) - A002265 (A190806 (n + 1) + 1).toNat

end

end A190805.P10810401785275217045

/-! ## A190805.P14721609164534321266

`A004524(A190804(n+1)+2*A190804(n+1))`
-/

namespace A190805.P14721609164534321266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A190804 (n + 1) + 2 * A190804 (n + 1)).toNat

end

end A190805.P14721609164534321266

/-! ## A190805.P14195167068119543991

`A004526(A190804(n+1)+2*A190804(n+1))`
-/

namespace A190805.P14195167068119543991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A190804 (n + 1) + 2 * A190804 (n + 1)).toNat

end

end A190805.P14195167068119543991

/-! ## A190805.P5477829089117370457

`A008621(A190806(n+1)+2*A190806(n+1))`
-/

namespace A190805.P5477829089117370457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A190806 (n + 1) + 2 * A190806 (n + 1)).toNat

end

end A190805.P5477829089117370457

/-!
# A190806: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 2x-1 and 3x+2 are in a.

The programs for A190806, there is no canonical definition to state claims against.
-/

/-! ## A190806.P9457241902899224391

`2*A190804(n+1)-1`
-/

namespace A190806.P9457241902899224391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190804 (n + 1) - 1

end

end A190806.P9457241902899224391

/-! ## A190806.P12753235822175677009

`4*A190803(n+1)-3`
-/

namespace A190806.P12753235822175677009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A190803 (n + 1) - 3

end

end A190806.P12753235822175677009

/-! ## A190806.P15970378386741857512

`A190803(n+1)+A190805(n+1)-1`
-/

namespace A190806.P15970378386741857512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190803 (n + 1) + (A190805 (n + 1) - 1)

end

end A190806.P15970378386741857512

/-! ## A190806.P1220978800718017437

`A190805(n+1)+A190805(n+1)-A190804(n+1)`
-/

namespace A190806.P1220978800718017437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190805 (n + 1) + (A190805 (n + 1) - A190804 (n + 1))

end

end A190806.P1220978800718017437

/-! ## A190806.P12189692055676993445

`A190804(n+1)+A190804(n+1)-A008836(n+1)²`
-/

namespace A190806.P12189692055676993445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190804 (n + 1) + (A190804 (n + 1) - A008836 (n + 1) ^ 2)

end

end A190806.P12189692055676993445

/-! ## A190806.P14649837377714709131

`A042948(A190804(n+1)-1)+1`
-/

namespace A190806.P14649837377714709131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A190804 (n + 1) - 1).toNat + 1

end

end A190806.P14649837377714709131

/-! ## A190806.P13236616833329169788

`A004273(A190804(n+1))`
-/

namespace A190806.P13236616833329169788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A190804 (n + 1)).toNat

end

end A190806.P13236616833329169788

/-! ## A190806.P5627356381201748762

`A004273(A190803(n+1)+A190803(n+1)-1)`
-/

namespace A190806.P5627356381201748762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A190803 (n + 1) + (A190803 (n + 1) - 1)).toNat

end

end A190806.P5627356381201748762

/-! ## A190806.P8915322654523424741

`A237420(A190804(n+1)-1)+A190804(n+1)`
-/

namespace A190806.P8915322654523424741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 (A190804 (n + 1) - 1).toNat + A190804 (n + 1)

end

end A190806.P8915322654523424741

/-! ## A190806.P7566996613271841877

`A004773(A190805(n+1))`
-/

namespace A190806.P7566996613271841877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A190805 (n + 1)).toNat

end

end A190806.P7566996613271841877

/-! ## A190806.P13541244988085936666

`A190805(n+1)+A002264(A190805(n+1)+1)`
-/

namespace A190806.P13541244988085936666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190805 (n + 1) + A002264 (A190805 (n + 1) + 1).toNat

end

end A190806.P13541244988085936666

/-! ## A190806.P16832272126624919143

`A190804(n+1)+A004524(2*A190804(n+1))`
-/

namespace A190806.P16832272126624919143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190804 (n + 1) + A004524 (2 * A190804 (n + 1)).toNat

end

end A190806.P16832272126624919143

/-! ## A190806.P11244345073530804614

`A004396(2*A190805(n+1))`
-/

namespace A190806.P11244345073530804614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A190805 (n + 1)).toNat

end

end A190806.P11244345073530804614

/-! ## A190806.P3525365596452671917

`A004396(A190805(n+1)+A190805(n+1)-1)`
-/

namespace A190806.P3525365596452671917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A190805 (n + 1) + (A190805 (n + 1) - 1)).toNat

end

end A190806.P3525365596452671917

/-! ## A190806.P11220499374526741611

`A002264(2*2*A190805(n+1))`
-/

namespace A190806.P11220499374526741611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * (2 * A190805 (n + 1))).toNat

end

end A190806.P11220499374526741611

/-!
# A190807: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 2x and 3x-1 are in a.

The programs for A190807, there is no canonical definition to state claims against.
-/

/-! ## A190807.P8023358678560937945

`(A190811(n+1)+1)/2`
-/

namespace A190807.P8023358678560937945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190811 (n + 1) + 1 : ℚ) / 2

end

end A190807.P8023358678560937945

/-! ## A190807.P379764461713681112

`A000463(A190811(n+1))`
-/

namespace A190807.P379764461713681112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A190811 (n + 1)).toNat

end

end A190807.P379764461713681112

/-! ## A190807.P8864689234057851848

`A004525(A190811(n+1)+1)`
-/

namespace A190807.P8864689234057851848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A190811 (n + 1) + 1).toNat

end

end A190807.P8864689234057851848

/-! ## A190807.P9192953682573730031

`A004526(A190811(n+1)+1)`
-/

namespace A190807.P9192953682573730031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A190811 (n + 1) + 1).toNat

end

end A190807.P9192953682573730031

/-! ## A190807.P16835101054540647162

`A032742(A190811(n+1)+1)`
-/

namespace A190807.P16835101054540647162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A190811 (n + 1) + 1).toNat

end

end A190807.P16835101054540647162

/-! ## A190807.P7333082673365263552

`A078898(A190811(n+1)+1)`
-/

namespace A190807.P7333082673365263552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A190811 (n + 1) + 1).toNat

end

end A190807.P7333082673365263552

/-! ## A190807.P1145007509371399247

`A262610(A190811(n+1)+1)`
-/

namespace A190807.P1145007509371399247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262610 (A190811 (n + 1) + 1).toNat

end

end A190807.P1145007509371399247

/-!
# A190808: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 2x and 3x+1 are in a.

The programs for A190808, there is no canonical definition to state claims against.
-/

/-! ## A190808.P2545727644682787679

`A190803(n+2)-1`
-/

namespace A190808.P2545727644682787679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190803 (n + 2) - 1

end

end A190808.P2545727644682787679

/-! ## A190808.P12571398777825575743

`∑[abs(Δ[A190803(n+1)])]`
-/

namespace A190808.P12571398777825575743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190803 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190808.P12571398777825575743

/-! ## A190808.P18216820705590556706

`(A190804(n+2)-1)/2`
-/

namespace A190808.P18216820705590556706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190804 (n + 2) - 1 : ℚ) / 2

end

end A190808.P18216820705590556706

/-! ## A190808.P16797817563095993209

`(A190805(n+2)-1)/3`
-/

namespace A190808.P16797817563095993209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190805 (n + 2) - 1 : ℚ) / 3

end

end A190808.P16797817563095993209

/-! ## A190808.P12361481838608133703

`A190805(n+2)-A190804(n+2)`
-/

namespace A190808.P12361481838608133703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190805 (n + 2) - A190804 (n + 2)

end

end A190808.P12361481838608133703

/-! ## A190808.P5338829445933266483

`A190806(n+2)-A190805(n+2)`
-/

namespace A190808.P5338829445933266483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190806 (n + 2) - A190805 (n + 2)

end

end A190808.P5338829445933266483

/-! ## A190808.P2415528594381303695

`A190804(n+2)%A190803(n+2)`
-/

namespace A190808.P2415528594381303695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190804 (n + 2)) (A190803 (n + 2))

end

end A190808.P2415528594381303695

/-! ## A190808.P12620041361566413546

`A023443(A190803(n+2))`
-/

namespace A190808.P12620041361566413546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A190803 (n + 2)).toNat

end

end A190808.P12620041361566413546

/-! ## A190808.P11016347765295018381

`A032742(A190804(n+2)-1)`
-/

namespace A190808.P11016347765295018381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A190804 (n + 2) - 1).toNat

end

end A190808.P11016347765295018381

/-! ## A190808.P9000390247497374291

`A078898(A190804(n+2)-1)`
-/

namespace A190808.P9000390247497374291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A190804 (n + 2) - 1).toNat

end

end A190808.P9000390247497374291

/-! ## A190808.P2621176493478979126

`A000463(A190804(n+2)-2)`
-/

namespace A190808.P2621176493478979126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A190804 (n + 2) - 2).toNat

end

end A190808.P2621176493478979126

/-! ## A190808.P10839211867925545353

`A004524(A190804(n+2))`
-/

namespace A190808.P10839211867925545353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A190804 (n + 2)).toNat

end

end A190808.P10839211867925545353

/-! ## A190808.P2603823927452619765

`A002264(A190805(n+2))`
-/

namespace A190808.P2603823927452619765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A190805 (n + 2)).toNat

end

end A190808.P2603823927452619765

/-! ## A190808.P5394949129906504734

`A008620(A190805(n+2)-2)`
-/

namespace A190808.P5394949129906504734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A190805 (n + 2) - 2).toNat

end

end A190808.P5394949129906504734

/-! ## A190808.P9596403279177562103

`A008621(A190806(n+2)-2)`
-/

namespace A190808.P9596403279177562103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A190806 (n + 2) - 2).toNat

end

end A190808.P9596403279177562103

/-! ## A190808.P13499450862350768987

`A002265(A190806(n+2))`
-/

namespace A190808.P13499450862350768987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A190806 (n + 2)).toNat

end

end A190808.P13499450862350768987

/-!
# A190809: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 2x and 3x+2 are in a.

The programs for A190809, there is no canonical definition to state claims against.
-/

/-! ## A190809.P8140824940295349313

`lt[A120405(A120405(n+1)), A085068(n)]`
-/

namespace A190809.P8140824940295349313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120405 (A120405 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085068 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190809.P8140824940295349313

/-! ## A190809.P4963519293293549848

`A320574(A320574(n+1))+A179016(n)`
-/

namespace A190809.P4963519293293549848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320574 (A320574 (n + 1)).toNat + A179016 n

end

end A190809.P4963519293293549848

/-! ## A190809.P2171701123075451194

`lt[A246133(n+3), A246162(A246166(2*n+3))]`
-/

namespace A190809.P2171701123075451194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246133 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246162 (A246166 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190809.P2171701123075451194

/-!
# A190810: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 2x+1 and 3x-1 are in a.

The programs for A190810, there is no canonical definition to state claims against.
-/

/-! ## A190810.P9443763305847324365

`A190855(A348553(n)%A141214(n))`
-/

namespace A190810.P9443763305847324365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190855 (Int.tmod (A348553 n) (A141214 n)).toNat

end

end A190810.P9443763305847324365

/-! ## A190810.P2148529740244708052

`A190855(A348553(n))%A252532(A000124(n))`
-/

namespace A190810.P2148529740244708052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190855 (A348553 n).toNat) (A252532 (A000124 n).toNat)

end

end A190810.P2148529740244708052

/-! ## A190810.P13032909535306164527

`eq[ceil(acot(n)), A164799(A268674(n+1))]`
-/

namespace A190810.P13032909535306164527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164799 (A268674 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190810.P13032909535306164527

/-! ## A190810.P8939651499266131929

`eq[A057427(n), A164799(A268674(n+1))]`
-/

namespace A190810.P8939651499266131929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164799 (A268674 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190810.P8939651499266131929

/-!
# A190811: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 2x+1 and 3x are in a.

The programs for A190811, there is no canonical definition to state claims against.
-/

/-! ## A190811.P10186653546004781647

`2*A190807(n+1)-1`
-/

namespace A190811.P10186653546004781647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190807 (n + 1) - 1

end

end A190811.P10186653546004781647

/-! ## A190811.P2816246239849360397

`A190807(n+1)+A190807(n+1)-A043545(A046110(n))`
-/

namespace A190811.P2816246239849360397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190807 (n + 1) + (A190807 (n + 1) - A043545 (A046110 n).toNat)

end

end A190811.P2816246239849360397

/-! ## A190811.P10084368195991715497

`A190807(n+1)+A190807(n+1)-A001221(A006450(n+1))`
-/

namespace A190811.P10084368195991715497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190807 (n + 1) + (A190807 (n + 1) - A001221 (A006450 (n + 1)).toNat)

end

end A190811.P10084368195991715497

/-! ## A190811.P9124884814916597105

`A004273(A190807(n+1))`
-/

namespace A190811.P9124884814916597105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A190807 (n + 1)).toNat

end

end A190811.P9124884814916597105

/-! ## A190811.P7991395854859433326

`A005408(A190807(n+1)-1)`
-/

namespace A190811.P7991395854859433326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A190807 (n + 1) - 1).toNat

end

end A190811.P7991395854859433326

/-! ## A190811.P12846677863956521098

`A005843(A190807(n+1)-1)+1`
-/

namespace A190811.P12846677863956521098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A190807 (n + 1) - 1).toNat + 1

end

end A190811.P12846677863956521098

/-! ## A190811.P17815340935280008546

`A004483(2*A190807(n+1))`
-/

namespace A190811.P17815340935280008546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (2 * A190807 (n + 1)).toNat

end

end A190811.P17815340935280008546

/-! ## A190811.P9662870993687225641

`A014681(2*A190807(n+1))`
-/

namespace A190811.P9662870993687225641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A190807 (n + 1)).toNat

end

end A190811.P9662870993687225641

/-! ## A190811.P9744155710831930296

`A063196(2*A190807(n+1))`
-/

namespace A190811.P9744155710831930296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (2 * A190807 (n + 1)).toNat

end

end A190811.P9744155710831930296

/-! ## A190811.P16359768062962969974

`A190807(n+1)+A190807(n+1)-A001222(A340865(n+1))`
-/

namespace A190811.P16359768062962969974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190807 (n + 1) + (A190807 (n + 1) - A001222 (A340865 (n + 1)).toNat)

end

end A190811.P16359768062962969974

/-!
# A190812: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 2x+1 and 3x+2 are in a.

The programs for A190812, there is no canonical definition to state claims against.
-/

/-! ## A190812.P17531342020939330589

`∑[2*A061987(n)]-1`
-/

namespace A190812.P17531342020939330589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A190812.P17531342020939330589

/-! ## A190812.P15203522676855582022

`Δ[2*A259823(n)]-1`
-/

namespace A190812.P15203522676855582022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A190812.P15203522676855582022

/-! ## A190812.P11147397855838976794

`2*A069353(n+1)+1`
-/

namespace A190812.P11147397855838976794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069353 (n + 1) + 1

end

end A190812.P11147397855838976794

/-! ## A190812.P12642581998155496477

`2*A003586(n+1)-1`
-/

namespace A190812.P12642581998155496477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003586 (n + 1) - 1

end

end A190812.P12642581998155496477

/-! ## A190812.P15018579604518285366

`A033845(n+1)/3-1`
-/

namespace A190812.P15018579604518285366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033845 (n + 1) : ℚ) / 3 - 1

end

end A190812.P15018579604518285366

/-! ## A190812.P12891596426223757266

`2*A055600(n+1)-3`
-/

namespace A190812.P12891596426223757266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055600 (n + 1) - 3

end

end A190812.P12891596426223757266

/-! ## A190812.P12992372700534772976

`A069353(n+1)+A003586(n+1)`
-/

namespace A190812.P12992372700534772976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1) + A003586 (n + 1)

end

end A190812.P12992372700534772976

/-! ## A190812.P6370155211250835782

`A065119(n+1)-A055600(n+1)`
-/

namespace A190812.P6370155211250835782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065119 (n + 1) - A055600 (n + 1)

end

end A190812.P6370155211250835782

/-! ## A190812.P12239254372004793508

`A065119(n+1)-(A003586(n+1)+1)`
-/

namespace A190812.P12239254372004793508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065119 (n + 1) - (A003586 (n + 1) + 1)

end

end A190812.P12239254372004793508

/-! ## A190812.P12496183318159387621

`A003586(n+1)+A055600(n+1)-2`
-/

namespace A190812.P12496183318159387621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1) + (A055600 (n + 1) - 2)

end

end A190812.P12496183318159387621

/-! ## A190812.P6614703295698658545

`A065119(n+1)-(A069353(n+1)+2)`
-/

namespace A190812.P6614703295698658545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065119 (n + 1) - (A069353 (n + 1) + 2)

end

end A190812.P6614703295698658545

/-! ## A190812.P205656165470649323

`2*(A259823(n+1)-A259823(n))-1`
-/

namespace A190812.P205656165470649323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A259823 (n + 1) - A259823 n) - 1

end

end A190812.P205656165470649323

/-! ## A190812.P1213517166838488670

`2*(A347982(A140635(n+1))+A003586(n+1))+1`
-/

namespace A190812.P1213517166838488670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A347982 (A140635 (n + 1)).toNat + A003586 (n + 1)) + 1

end

end A190812.P1213517166838488670

/-! ## A190812.P16691042856839642532

`A003586(n+1)+A003586(n+1)-A008836(n+1)²`
-/

namespace A190812.P16691042856839642532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1) + (A003586 (n + 1) - A008836 (n + 1) ^ 2)

end

end A190812.P16691042856839642532

/-! ## A190812.P16962940624565199880

`A003586(A000027(n+1))+A003586(A000027(n+1))-1`
-/

namespace A190812.P16962940624565199880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (A000027 (n + 1)).toNat + (A003586 (A000027 (n + 1)).toNat - 1)

end

end A190812.P16962940624565199880

/-! ## A190812.P8476069027629501490

`A003586(n+1)+A003586(n+1)-A000120(A001316(n))`
-/

namespace A190812.P8476069027629501490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1) + (A003586 (n + 1) - A000120 (A001316 n).toNat)

end

end A190812.P8476069027629501490

/-! ## A190812.P9846755864943971539

`A007694(n+2)-1`
-/

namespace A190812.P9846755864943971539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 2) - 1

end

end A190812.P9846755864943971539

/-! ## A190812.P4227796079672096802

`∑[abs(Δ[A007694(n+1)])]`
-/

namespace A190812.P4227796079672096802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190812.P4227796079672096802

/-! ## A190812.P17398176835356268618

`A003586(n+1)+A003586(n+1)-A057427(n+1)`
-/

namespace A190812.P17398176835356268618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1) + (A003586 (n + 1) - A057427 (n + 1))

end

end A190812.P17398176835356268618

/-! ## A190812.P1209796330755040069

`sqrt(A063755(n+2))-1`
-/

namespace A190812.P1209796330755040069
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063755 (n + 2) : ℝ) - 1

end

end A190812.P1209796330755040069

/-!
# A190813: Positions of 0 in A189480.

The programs for A190813, the canonical program `A190813.P8999103964608104080` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190813 has offset 1).

The definition of A190813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190813.P8999103964608104080

`eq[n, A189480(A028310(n))+A028310(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190813

/-- `eq[n, A189480(A028310(n))+A028310(n)]` -/
def P8999103964608104080.Spec : Prop :=
  ∀ n, (P8999103964608104080.a n : ℤ) = A190813 (n + 1)

theorem P8999103964608104080.correct : P8999103964608104080.Spec := by
  intro n
  simp only [A190813, Nat.add_sub_cancel]

end A190813

/-! ## A190813.P5846204506263627738

`record[A025480(A190249(n+1))]`
-/

namespace A190813.P5846204506263627738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A190249 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190813.P5846204506263627738

namespace A190813

/-- `record[A025480(A190249(n+1))]` -/
def P5846204506263627738.Spec : Prop :=
  ∀ n, P5846204506263627738.a n = A190813 (n + 1)

end A190813

/-! ## A190813.P4021028186125977458

`record[A032742(A190249(A065033(n)))]`
-/

namespace A190813.P4021028186125977458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A190249 (A065033 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190813.P4021028186125977458

namespace A190813

/-- `record[A032742(A190249(A065033(n)))]` -/
def P4021028186125977458.Spec : Prop :=
  ∀ n, P4021028186125977458.a n = A190813 (n + 1)

end A190813

/-! ## A190813.P4622675762513208474

`record[A032742(A190249(A080513(n)))]`
-/

namespace A190813.P4622675762513208474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A190249 (A080513 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190813.P4622675762513208474

namespace A190813

/-- `record[A032742(A190249(A080513(n)))]` -/
def P4622675762513208474.Spec : Prop :=
  ∀ n, P4622675762513208474.a n = A190813 (n + 1)

end A190813

/-! ## A190813.P15461559024350648208

`record[A142150(A190249(A008620(n)))]`
-/

namespace A190813.P15461559024350648208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A190249 (A008620 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190813.P15461559024350648208

namespace A190813

/-- `record[A142150(A190249(A008620(n)))]` -/
def P15461559024350648208.Spec : Prop :=
  ∀ n, P15461559024350648208.a n = A190813 (n + 1)

end A190813

/-! ## A190813.P4168846418304039741

`record[A032742(A190249(A124808(n)))]`
-/

namespace A190813.P4168846418304039741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A190249 (A124808 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190813.P4168846418304039741

namespace A190813

/-- `record[A032742(A190249(A124808(n)))]` -/
def P4168846418304039741.Spec : Prop :=
  ∀ n, P4168846418304039741.a n = A190813 (n + 1)

end A190813

/-! ## A190813.P15260499841432466890

`record[A078898(A190249(A133310(n)))]`
-/

namespace A190813.P15260499841432466890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A190249 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190813.P15260499841432466890

namespace A190813

/-- `record[A078898(A190249(A133310(n)))]` -/
def P15260499841432466890.Spec : Prop :=
  ∀ n, P15260499841432466890.a n = A190813 (n + 1)

end A190813

/-! ## A190813.P16007723483722936294

`record[A032742(A190249(A344180(n)))]`
-/

namespace A190813.P16007723483722936294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A190249 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190813.P16007723483722936294

namespace A190813

/-- `record[A032742(A190249(A344180(n)))]` -/
def P16007723483722936294.Spec : Prop :=
  ∀ n, P16007723483722936294.a n = A190813 (n + 1)

end A190813

/-! ## A190813.P17665797468628529613

`record[A078898(A190249(A305433(n)))]`
-/

namespace A190813.P17665797468628529613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A190249 (A305433 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190813.P17665797468628529613

namespace A190813

/-- `record[A078898(A190249(A305433(n)))]` -/
def P17665797468628529613.Spec : Prop :=
  ∀ n, P17665797468628529613.a n = A190813 (n + 1)

end A190813

/-! ## A190813.P3325782575306870026

`eq[1, A327174(n)+A089808(A008574(n))]`
-/

namespace A190813.P3325782575306870026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 n + A089808 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190813.P3325782575306870026

namespace A190813

/-- `eq[1, A327174(n)+A089808(A008574(n))]` -/
def P3325782575306870026.Spec : Prop :=
  ∀ n, (P3325782575306870026.a n : ℤ) = A190813 (n + 1)

end A190813

/-! ## A190813.P5546152610680091933

`eq[A189480(A233583(n+1))+n, A233583(n+1)]`
-/

namespace A190813.P5546152610680091933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189480 (A233583 (n + 1)).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190813.P5546152610680091933

namespace A190813

/-- `eq[A189480(A233583(n+1))+n, A233583(n+1)]` -/
def P5546152610680091933.Spec : Prop :=
  ∀ n, (P5546152610680091933.a n : ℤ) = A190813 (n + 1)

end A190813

/-! ## A190813.P13786043497405700973

`eq[3, A115716(A276855(8*n))]`
-/

namespace A190813.P13786043497405700973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 (A276855 (8 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190813.P13786043497405700973

namespace A190813

/-- `eq[3, A115716(A276855(8*n))]` -/
def P13786043497405700973.Spec : Prop :=
  ∀ n, (P13786043497405700973.a n : ℤ) = A190813 (n + 1)

end A190813

/-!
# A190814: Initial primes of 5 consecutive primes with consecutive gaps 2, 4, 6, 8.

The programs for A190814, there is no canonical definition to state claims against.
-/

/-! ## A190814.P141425321830148109

`∩[A054823(n+1), A187057(n+1)]`
-/

namespace A190814.P141425321830148109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190814.P141425321830148109

/-! ## A190814.P1988697776266183031

`∩[A054819(n+1)-2, A187057(n+1)]`
-/

namespace A190814.P1988697776266183031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054819 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190814.P1988697776266183031

/-!
# A190815: A bisection of A049690.

The programs for A190815, the canonical program `A190815.P914547741741299528` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190815 has offset 1).

The definition of A190815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190815.P15364135788945634855

`A099958(n+1)-A037225(n)`
-/

namespace A190815.P15364135788945634855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099958 (n + 1) - A037225 n

end

end A190815.P15364135788945634855

namespace A190815

/-- `A099958(n+1)-A037225(n)` -/
def P15364135788945634855.Spec : Prop :=
  ∀ n, P15364135788945634855.a n = A190815 (n + 1)

end A190815

/-! ## A190815.P914547741741299528

`A049690(n)+A002088(2*n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A190815

/-- `A049690(n)+A002088(2*n)` -/
def P914547741741299528.Spec : Prop :=
  ∀ n, P914547741741299528.a n = A190815 (n + 1)

theorem P914547741741299528.correct : P914547741741299528.Spec := by
  intro n
  simp only [A190815, Nat.add_sub_cancel]

end A190815

/-! ## A190815.P12013381041598722352

`A099958(n+1)-A000010(2*n+1)`
-/

namespace A190815.P12013381041598722352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099958 (n + 1) - A000010 (2 * n + 1)

end

end A190815.P12013381041598722352

namespace A190815

/-- `A099958(n+1)-A000010(2*n+1)` -/
def P12013381041598722352.Spec : Prop :=
  ∀ n, P12013381041598722352.a n = A190815 (n + 1)

end A190815

/-! ## A190815.P4335083265391976558

`A099958(n+1)-A062570(2*n+1)`
-/

namespace A190815.P4335083265391976558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099958 (n + 1) - A062570 (2 * n + 1)

end

end A190815.P4335083265391976558

namespace A190815

/-- `A099958(n+1)-A062570(2*n+1)` -/
def P4335083265391976558.Spec : Prop :=
  ∀ n, P4335083265391976558.a n = A190815 (n + 1)

end A190815

/-! ## A190815.P12608696633422032448

`A049690(2*n)`
-/

namespace A190815.P12608696633422032448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 (2 * n)

end

end A190815.P12608696633422032448

namespace A190815

/-- `A049690(2*n)` -/
def P12608696633422032448.Spec : Prop :=
  ∀ n, P12608696633422032448.a n = A190815 (n + 1)

end A190815

/-! ## A190815.P14054832464793922408

`record[A049690(n%8+n)]`
-/

namespace A190815.P14054832464793922408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 (n % 8 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190815.P14054832464793922408

namespace A190815

/-- `record[A049690(n%8+n)]` -/
def P14054832464793922408.Spec : Prop :=
  ∀ n, P14054832464793922408.a n = A190815 (n + 1)

end A190815

/-! ## A190815.P16079141170849006324

`record[A049690(A093178(n)-1)]`
-/

namespace A190815.P16079141170849006324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 (A093178 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190815.P16079141170849006324

namespace A190815

/-- `record[A049690(A093178(n)-1)]` -/
def P16079141170849006324.Spec : Prop :=
  ∀ n, P16079141170849006324.a n = A190815 (n + 1)

end A190815

/-! ## A190815.P13706374801787722868

`record[A049690(n)/(A004442(n)-n)]`
-/

namespace A190815.P13706374801787722868
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049690 n : ℚ) / (A004442 n - (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190815.P13706374801787722868

namespace A190815

/-- `record[A049690(n)/(A004442(n)-n)]` -/
def P13706374801787722868.Spec : Prop :=
  ∀ n, P13706374801787722868.a n = (A190815 (n + 1) : ℚ)

end A190815

/-! ## A190815.P3276917708768856497

`A106481(2*n)+A002088(2*n)`
-/

namespace A190815.P3276917708768856497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 (2 * n) + A002088 (2 * n)

end

end A190815.P3276917708768856497

namespace A190815

/-- `A106481(2*n)+A002088(2*n)` -/
def P3276917708768856497.Spec : Prop :=
  ∀ n, P3276917708768856497.a n = A190815 (n + 1)

end A190815

/-! ## A190815.P72989682550713340

`A106481(4*n)`
-/

namespace A190815.P72989682550713340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 (4 * n)

end

end A190815.P72989682550713340

namespace A190815

/-- `A106481(4*n)` -/
def P72989682550713340.Spec : Prop :=
  ∀ n, P72989682550713340.a n = A190815 (n + 1)

end A190815

/-! ## A190815.P17097541018595691919

`A049689(2*n)+A002088(2*n)`
-/

namespace A190815.P17097541018595691919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049689 (2 * n) + A002088 (2 * n)

end

end A190815.P17097541018595691919

namespace A190815

/-- `A049689(2*n)+A002088(2*n)` -/
def P17097541018595691919.Spec : Prop :=
  ∀ n, P17097541018595691919.a n = A190815 (n + 1)

end A190815

/-! ## A190815.P685336851705294829

`A049617(2*n)-2*n`
-/

namespace A190815.P685336851705294829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049617 (2 * n) - (2 * n : ℤ)

end

end A190815.P685336851705294829

namespace A190815

/-- `A049617(2*n)-2*n` -/
def P685336851705294829.Spec : Prop :=
  ∀ n, P685336851705294829.a n = A190815 (n + 1)

end A190815

/-! ## A190815.P3693052478756405030

`A049689(4*n)`
-/

namespace A190815.P3693052478756405030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049689 (4 * n)

end

end A190815.P3693052478756405030

namespace A190815

/-- `A049689(4*n)` -/
def P3693052478756405030.Spec : Prop :=
  ∀ n, P3693052478756405030.a n = A190815 (n + 1)

end A190815

/-! ## A190815.P14149836419768090480

`record[record[A049689(n)]-A049689(n+1)]`
-/

namespace A190815.P14149836419768090480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049689 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - A049689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190815.P14149836419768090480

namespace A190815

/-- `record[record[A049689(n)]-A049689(n+1)]` -/
def P14149836419768090480.Spec : Prop :=
  ∀ n, P14149836419768090480.a n = A190815 (n + 1)

end A190815

/-!
# A190816: a(n) = 5*n^2 - 4*n + 1.

The programs for A190816, the canonical program `A190816.P8283183310090663644` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190816 has offset 0).

The definition of A190816 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n²-4*n+1` (program `A190816.P8283183310090663644`, by `A190816.P8283183310090663644.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190816.P8283183310090663644

`5*n²-4*n+1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190816

/-- `5*n²-4*n+1` -/
def P8283183310090663644.Spec : Prop :=
  ∀ n, P8283183310090663644.a n = A190816 n

theorem P8283183310090663644.correct : P8283183310090663644.Spec := by
  intro n
  simp only [A190816]

end A190816

/-! ## A190816.P13955781377325863613

`∑[a(n-1)+10]` with `a(0)=1, a(1)=1`
-/

namespace A190816.P13955781377325863613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190816.P13955781377325863613

namespace A190816

/-- `∑[a(n-1)+10]` -/
def P13955781377325863613.Spec : Prop :=
  ∀ n, (P13955781377325863613.a n : ℤ) = A190816 n

end A190816

/-! ## A190816.P15780618037858447203

`∑[ogf((1-x+10x^2)/(1-2x+x^2))]`
-/

namespace A190816.P15780618037858447203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 10] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190816.P15780618037858447203

namespace A190816

/-- `∑[ogf((1-x+10x^2)/(1-2x+x^2))]` -/
def P15780618037858447203.Spec : Prop :=
  ∀ n, P15780618037858447203.a n = A190816 n

end A190816

/-! ## A190816.P3250396613048514544

`ogf((1-x+10x^2)/(1-3x+3x^2-x^3))`
-/

namespace A190816.P3250396613048514544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 10] [1, -3, 3, -1] n

end

end A190816.P3250396613048514544

namespace A190816

/-- `ogf((1-x+10x^2)/(1-3x+3x^2-x^3))` -/
def P3250396613048514544.Spec : Prop :=
  ∀ n, P3250396613048514544.a n = A190816 n

end A190816

/-! ## A190816.P9608887735193096289

`((5-a(n-1))²+4)/a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A190816.P9608887735193096289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((5 - a (n - 1)) ^ 2 + 4) / a (n - 2)

end

end A190816.P9608887735193096289

namespace A190816

/-- `((5-a(n-1))²+4)/a(n-2)` -/
def P9608887735193096289.Spec : Prop :=
  ∀ n, P9608887735193096289.a n = (A190816 n : ℚ)

end A190816

/-! ## A190816.P12844586569674417441

`floor(2*(a(n-1)+5)-a(n-2))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A190816.P12844586569674417441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) + 5) - a (n - 2)

end

end A190816.P12844586569674417441

namespace A190816

/-- `floor(2*(a(n-1)+5)-a(n-2))` -/
def P12844586569674417441.Spec : Prop :=
  ∀ n, P12844586569674417441.a n = A190816 n

theorem P12844586569674417441.correct : P12844586569674417441.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A190816, Nat.add_sub_cancel, A190816.P12844586569674417441.a, A190816.P8283183310090663644.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A190816, Nat.add_sub_cancel, A190816.P12844586569674417441.a, A190816.P8283183310090663644.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A190816

/-! ## A190816.P2103485131383999741

`(A154254(n)+n²)/2`
-/

namespace A190816.P2103485131383999741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154254 n + (n ^ 2 : ℤ) : ℚ) / 2

end

end A190816.P2103485131383999741

namespace A190816

/-- `(A154254(n)+n²)/2` -/
def P2103485131383999741.Spec : Prop :=
  ∀ n, P2103485131383999741.a n = (A190816 n : ℚ)

end A190816

/-! ## A190816.P8478694803070553633

`(A051874(n)+2+n)/2`
-/

namespace A190816.P8478694803070553633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051874 n + 2 + (n : ℤ) : ℚ) / 2

end

end A190816.P8478694803070553633

namespace A190816

/-- `(A051874(n)+2+n)/2` -/
def P8478694803070553633.Spec : Prop :=
  ∀ n, P8478694803070553633.a n = (A190816 n : ℚ)

end A190816

/-! ## A190816.P3635459051462403958

`(A158186(n)+1-n)/2`
-/

namespace A190816.P3635459051462403958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158186 n + (1 - (n : ℤ)) : ℚ) / 2

end

end A190816.P3635459051462403958

namespace A190816

/-- `(A158186(n)+1-n)/2` -/
def P3635459051462403958.Spec : Prop :=
  ∀ n, P3635459051462403958.a n = (A190816 n : ℚ)

end A190816

/-! ## A190816.P7660111048977805820

`(A263226(n)+3+n)/3`
-/

namespace A190816.P7660111048977805820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263226 n + 3 + (n : ℤ) : ℚ) / 3

end

end A190816.P7660111048977805820

namespace A190816

/-- `(A263226(n)+3+n)/3` -/
def P7660111048977805820.Spec : Prop :=
  ∀ n, P7660111048977805820.a n = (A190816 n : ℚ)

end A190816

/-! ## A190816.P7865183002093307950

`abs(2*A000566(n)+1-n)`
-/

namespace A190816.P7865183002093307950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A000566 n + 1 - (n : ℤ)|

end

end A190816.P7865183002093307950

namespace A190816

/-- `abs(2*A000566(n)+1-n)` -/
def P7865183002093307950.Spec : Prop :=
  ∀ n, P7865183002093307950.a n = A190816 n

end A190816

/-! ## A190816.P3439521541000892438

`abs((n-1)*A016861(n)+2)`
-/

namespace A190816.P3439521541000892438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1) * A016861 n + 2|

end

end A190816.P3439521541000892438

namespace A190816

/-- `abs((n-1)*A016861(n)+2)` -/
def P3439521541000892438.Spec : Prop :=
  ∀ n, P3439521541000892438.a n = A190816 n

end A190816

/-! ## A190816.P9174337271648826925

`abs((n-1)*A016873(n)+3-n)`
-/

namespace A190816.P9174337271648826925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1) * A016873 n + 3 - (n : ℤ)|

end

end A190816.P9174337271648826925

namespace A190816

/-- `abs((n-1)*A016873(n)+3-n)` -/
def P9174337271648826925.Spec : Prop :=
  ∀ n, P9174337271648826925.a n = A190816 n

end A190816

/-! ## A190816.P4447430306862482126

`xor(A010684(n), A051624(n))`
-/

namespace A190816.P4447430306862482126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010684 n) (A051624 n)

end

end A190816.P4447430306862482126

namespace A190816

/-- `xor(A010684(n), A051624(n))` -/
def P4447430306862482126.Spec : Prop :=
  ∀ n, P4447430306862482126.a n = A190816 n

end A190816

/-! ## A190816.P14599714420061044326

`abs(1-A192136(n)+n-A192136(n))`
-/

namespace A190816.P14599714420061044326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A192136 n + (n : ℤ) - A192136 n|

end

end A190816.P14599714420061044326

namespace A190816

/-- `abs(1-A192136(n)+n-A192136(n))` -/
def P14599714420061044326.Spec : Prop :=
  ∀ n, P14599714420061044326.a n = A190816 n

end A190816

/-! ## A190816.P6691372919789170328

`record[1-A266085(n)]`
-/

namespace A190816.P6691372919789170328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A266085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190816.P6691372919789170328

namespace A190816

/-- `record[1-A266085(n)]` -/
def P6691372919789170328.Spec : Prop :=
  ∀ n, P6691372919789170328.a n = A190816 n

end A190816

/-! ## A190816.P13762427921996760132

`A062317(A004277(n))`
-/

namespace A190816.P13762427921996760132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062317 (A004277 n).toNat

end

end A190816.P13762427921996760132

namespace A190816

/-- `A062317(A004277(n))` -/
def P13762427921996760132.Spec : Prop :=
  ∀ n, P13762427921996760132.a n = A190816 n

end A190816

/-! ## A190816.P3541106921612110422

`A062317(A004275(n+1))`
-/

namespace A190816.P3541106921612110422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062317 (A004275 (n + 1)).toNat

end

end A190816.P3541106921612110422

namespace A190816

/-- `A062317(A004275(n+1))` -/
def P3541106921612110422.Spec : Prop :=
  ∀ n, P3541106921612110422.a n = A190816 n

end A190816

/-! ## A190816.P1555615952214650574

`A062317(A004273(n)+1)`
-/

namespace A190816.P1555615952214650574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062317 (A004273 n + 1).toNat

end

end A190816.P1555615952214650574

namespace A190816

/-- `A062317(A004273(n)+1)` -/
def P1555615952214650574.Spec : Prop :=
  ∀ n, P1555615952214650574.a n = A190816 n

end A190816

/-!
# A190817: Initial primes of 6 consecutive primes with consecutive gaps 2,4,6,8,10.

The programs for A190817, there is no canonical definition to state claims against.
-/

/-! ## A190817.P10290310916951326919

`∩[A054828(n+1), A187058(n+1)]`
-/

namespace A190817.P10290310916951326919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190817.P10290310916951326919

/-!
# A190818: Expansion of e.g.f.: 1/(1-2*tanh(x)).

The programs for A190818, there is no canonical definition to state claims against.
-/

/-! ## A190818.P1180330983806912519

`(A057427(n)+1)*A122704(n)`
-/

namespace A190818.P1180330983806912519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A122704 n

end

end A190818.P1180330983806912519

/-! ## A190818.P16262507285770471089

`(A178334(n)+1)*A122704(n)`
-/

namespace A190818.P16262507285770471089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178334 n + 1) * A122704 n

end

end A190818.P16262507285770471089

/-! ## A190818.P317634329766743378

`(A123227(n)+A122704(n))/2`
-/

namespace A190818.P317634329766743378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123227 n + A122704 n : ℚ) / 2

end

end A190818.P317634329766743378

/-! ## A190818.P12515086215884305439

`gcd(2, A008458(n))*A122704(n)`
-/

namespace A190818.P12515086215884305439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A008458 n) : ℤ) * A122704 n

end

end A190818.P12515086215884305439

/-! ## A190818.P9723940393590865006

`(A157532(n+1)-1)*A122704(n)`
-/

namespace A190818.P9723940393590865006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157532 (n + 1) - 1) * A122704 n

end

end A190818.P9723940393590865006

/-! ## A190818.P6305013637286655908

`A020639(A008574(n))*A122704(n)`
-/

namespace A190818.P6305013637286655908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A122704 n

end

end A190818.P6305013637286655908

/-! ## A190818.P15191846496252155459

`A059268(A000124(n))*A122704(n)`
-/

namespace A190818.P15191846496252155459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A000124 n).toNat * A122704 n

end

end A190818.P15191846496252155459

/-! ## A190818.P5713756809631631432

`A102363(A178334(n))*A122704(n)`
-/

namespace A190818.P5713756809631631432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (A178334 n).toNat * A122704 n

end

end A190818.P5713756809631631432

/-! ## A190818.P710426087580811367

`A020639(A005574(n+1))*A122704(n)`
-/

namespace A190818.P710426087580811367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005574 (n + 1)).toNat * A122704 n

end

end A190818.P710426087580811367

/-!
# A190820: In base-2 lunar arithmetic, number of distinct squares of length 2n+1.

The programs for A190820, there is no canonical definition to state claims against.
-/

/-! ## A190820.P8026367373914503497

`A172471(A094855(n)+1)`
-/

namespace A190820.P8026367373914503497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A094855 n + 1).toNat

end

end A190820.P8026367373914503497

/-! ## A190820.P8310780294987654158

`A172471(or(2, A094855(n)))`
-/

namespace A190820.P8310780294987654158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (Int.lor 2 (A094855 n)).toNat

end

end A190820.P8310780294987654158

/-! ## A190820.P12294976457070706152

`A172471(1-(n-A094855(n)))`
-/

namespace A190820.P12294976457070706152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (1 - ((n : ℤ) - A094855 n)).toNat

end

end A190820.P12294976457070706152

/-! ## A190820.P12207883315410102299

`A172471(A061551(2*n+1)+1)`
-/

namespace A190820.P12207883315410102299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A061551 (2 * n + 1) + 1).toNat

end

end A190820.P12207883315410102299

/-! ## A190820.P11009793461937585770

`A102480(n)+A046155(A084787(n))`
-/

namespace A190820.P11009793461937585770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102480 n + A046155 (A084787 n).toNat

end

end A190820.P11009793461937585770

/-!
# A190821: Prime numbers p where d(p-1) = d(p+1) increases to a record.

The programs for A190821, there is no canonical definition to state claims against.
-/

/-! ## A190821.P9560580672640457144

`A350935(record[A335876(n+1)])`
-/

namespace A190821.P9560580672640457144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350935 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A190821.P9560580672640457144

/-! ## A190821.P2119013630793965440

`p?[A350935(n+1)%A157967(n+1)]`
-/

namespace A190821.P2119013630793965440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350935 (n + 1)) (A157967 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A190821.P2119013630793965440

/-! ## A190821.P11815547093047338171

`p?[A350934(2*n)]`
-/

namespace A190821.P11815547093047338171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350934 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A190821.P11815547093047338171

/-!
# A190822: G.f. satisfies: A(x) = Product_{n>=1} (1 + x^n) * (1 + x^(2n)*A(x)).

The programs for A190822, there is no canonical definition to state claims against.
-/

/-! ## A190822.P5504195507429640145

`A210357(A122893(n))`
-/

namespace A190822.P5504195507429640145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A122893 n).toNat

end

end A190822.P5504195507429640145

/-! ## A190822.P8211210818506132946

`A020915(A153894(n))%A267880(n+1)`
-/

namespace A190822.P8211210818506132946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020915 (A153894 n).toNat) (A267880 (n + 1))

end

end A190822.P8211210818506132946

/-! ## A190822.P17747631150605350441

`A051889(A119587(n)+1)+A025480(A011782(n))`
-/

namespace A190822.P17747631150605350441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A119587 n + 1).toNat + A025480 (A011782 n).toNat

end

end A190822.P17747631150605350441

/-! ## A190822.P12069384754445041874

`A023193(round(11^(n/3)))`
-/

namespace A190822.P12069384754445041874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (SequenceMachineLib.roundAway ((11 : ℝ) ^ ((n : ℚ) / 3 : ℝ))).toNat

end

end A190822.P12069384754445041874

/-! ## A190822.P13187616959978981825

`A001462(A078481(n+1))`
-/

namespace A190822.P13187616959978981825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A078481 (n + 1)).toNat

end

end A190822.P13187616959978981825

/-!
# A190823: Number of permutations of 2 copies of 1..n introduced in order 1..n with no element equal to another within a distance of 2.

The programs for A190823, there is no canonical definition to state claims against.
-/

/-! ## A190823.P1023727764094695453

`A265373(round(1/acot(∑[n]))+n)`
-/

namespace A190823.P1023727764094695453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265373 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) + (n : ℤ)).toNat

end

end A190823.P1023727764094695453

/-! ## A190823.P873247170617390707

`A265373(∑[n]+round(sqrt(n²+1)))`
-/

namespace A190823.P873247170617390707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265373 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A190823.P873247170617390707

/-! ## A190823.P18055759234034580425

`A265373(A134189(n+1))^gcd(11, n)`
-/

namespace A190823.P18055759234034580425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265373 (A134189 (n + 1)).toNat ^ Nat.gcd 11 n

end

end A190823.P18055759234034580425

/-! ## A190823.P3997340602811531227

`A265373(A134189(n+1))+A025469(n)`
-/

namespace A190823.P3997340602811531227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265373 (A134189 (n + 1)).toNat + A025469 n

end

end A190823.P3997340602811531227

/-! ## A190823.P12688671345600773397

`A265373(A347553(n+3))+A011734(n)`
-/

namespace A190823.P12688671345600773397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265373 (A347553 (n + 3)).toNat + A011734 n

end

end A190823.P12688671345600773397

/-!
# A190824: Number of permutations of 2 copies of 1..n introduced in order 1..n with no element equal to another within a distance of 3.

The programs for A190824, there is no canonical definition to state claims against.
-/

/-! ## A190824.P2021952358771902945

`A343344(∑[C(n, 3)+n]+1-xor(1, n))`
-/

namespace A190824.P2021952358771902945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343344 (∑ j ∈ Finset.range (n + 1), f1 j + 1 - Nat.xor 1 n)

end

end A190824.P2021952358771902945

/-! ## A190824.P9921193184240692017

`A100860(a(n-1)+1)+9` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1`
-/

namespace A190824.P9921193184240692017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 1] fun n a =>
  A100860 (a (n - 1) + 1).toNat + 9

end

end A190824.P9921193184240692017

/-! ## A190824.P8873830861912201825

`A343344(A191315(n+1))`
-/

namespace A190824.P8873830861912201825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343344 (A191315 (n + 1)).toNat

end

end A190824.P8873830861912201825

/-!
# A190826: Number of permutations of 3 copies of 1..n introduced in order 1..n with no element equal to another within a distance of 1.

The programs for A190826, there is no canonical definition to state claims against.
-/

/-! ## A190826.P7671488732830139437

`A193638(n)/n!`
-/

namespace A190826.P7671488732830139437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193638 n : ℚ) / (Nat.factorial n : ℚ)

end

end A190826.P7671488732830139437

/-! ## A190826.P1084821383764622152

`A193624(n)/(6^n*n!)`
-/

namespace A190826.P1084821383764622152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193624 n : ℚ) / (6 ^ n * Nat.factorial n : ℚ)

end

end A190826.P1084821383764622152

/-! ## A190826.P13246546908482932502

`A192990(C(n+2, 3))/(6^n*n!)`
-/

namespace A190826.P13246546908482932502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192990 (Nat.choose (n + 2) 3) : ℚ) / (6 ^ n * Nat.factorial n : ℚ)

end

end A190826.P13246546908482932502

/-! ## A190826.P10102946158090366468

`A193638(n)/A000142(n)`
-/

namespace A190826.P10102946158090366468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193638 n : ℚ) / (A000142 n : ℚ)

end

end A190826.P10102946158090366468

/-!
# A190827: Number of permutations of 3 copies of 1..n introduced in order 1..n with no element equal to another within a distance of 2.

The programs for A190827, there is no canonical definition to state claims against.
-/

/-! ## A190827.P17542979752713595556

`A081636(n+1)%A209862(A081623(n))`
-/

namespace A190827.P17542979752713595556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081636 (n + 1)) (A209862 (A081623 n).toNat)

end

end A190827.P17542979752713595556

/-!
# A190828: Number of permutations of 3 copies of 1..n introduced in order 1..n with no element equal to another within a distance of 3.

The programs for A190828, there is no canonical definition to state claims against.
-/

/-! ## A190828.P12089830343914033978

`A049986(n^C(n, 2))`
-/

namespace A190828.P12089830343914033978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049986 (n ^ Nat.choose n 2)

end

end A190828.P12089830343914033978

/-!
# A190829: Number of permutations of 3 copies of 1..n introduced in order 1..n with no element equal to another within a distance of 4.

The programs for A190829, there is no canonical definition to state claims against.
-/

/-! ## A190829.P13288875182885696456

`floor(A006688(n)/63)`
-/

namespace A190829.P13288875182885696456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006688 n : ℚ) / 63⌋

end

end A190829.P13288875182885696456

/-! ## A190829.P16205895464624532530

`A131488(A008998(n))`
-/

namespace A190829.P16205895464624532530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131488 (A008998 n).toNat

end

end A190829.P16205895464624532530

/-!
# A190830: Number of permutations of 4 copies of 1..n introduced in order 1..n with no element equal to another within a distance of 1.

The programs for A190830, there is no canonical definition to state claims against.
-/

/-! ## A190830.P10293315213778073136

`A321633(n)/n!`
-/

namespace A190830.P10293315213778073136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321633 n : ℚ) / (Nat.factorial n : ℚ)

end

end A190830.P10293315213778073136

/-! ## A190830.P14755692816129709803

`A321633(n)/A000142(n)`
-/

namespace A190830.P14755692816129709803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321633 n : ℚ) / (A000142 n : ℚ)

end

end A190830.P14755692816129709803

/-! ## A190830.P11220588074487876947

`abs(A321633(n)/A133942(n))`
-/

namespace A190830.P11220588074487876947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A321633 n : ℚ) / (A133942 n : ℚ)|

end

end A190830.P11220588074487876947

/-! ## A190830.P11391450755355022853

`A321633(n)/∏[A028310(n)]`
-/

namespace A190830.P11391450755355022853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321633 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A190830.P11391450755355022853

/-!
# A190832: Number of permutations of 4 copies of 1..n introduced in order 1..n with no element equal to another within a distance of 3.

The programs for A190832, there is no canonical definition to state claims against.
-/

/-! ## A190832.P15719781629426819121

`∑[A391203(A041875(n))]`
-/

namespace A190832.P15719781629426819121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391203 (A041875 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190832.P15719781629426819121

/-!
# A190833: Number of permutations of 5 copies of 1..n introduced in order 1..n with no element equal to another within a distance of 1.

The programs for A190833, there is no canonical definition to state claims against.
-/

/-! ## A190833.P12245025555527047006

`A322126(n)/n!`
-/

namespace A190833.P12245025555527047006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322126 n : ℚ) / (Nat.factorial n : ℚ)

end

end A190833.P12245025555527047006

/-! ## A190833.P11940998672039497264

`A322126(n)/A000142(n)`
-/

namespace A190833.P11940998672039497264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322126 n : ℚ) / (A000142 n : ℚ)

end

end A190833.P11940998672039497264

/-! ## A190833.P11590700566621981128

`A322126(n)/A068106(A000096(n))`
-/

namespace A190833.P11590700566621981128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322126 n : ℚ) / (A068106 (A000096 n).toNat : ℚ)

end

end A190833.P11590700566621981128

/-! ## A190833.P4661474647912714448

`A322126(n)/A166350(A179865(n+1))`
-/

namespace A190833.P4661474647912714448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322126 n : ℚ) / (A166350 (A179865 (n + 1)).toNat : ℚ)

end

end A190833.P4661474647912714448

/-! ## A190833.P13766003062482781471

`A322013(A052905(n)+10)`
-/

namespace A190833.P13766003062482781471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322013 (A052905 n + 10).toNat

end

end A190833.P13766003062482781471

/-!
# A190835: Number of permutations of 6 copies of 1..n introduced in order 1..n with no element equal to another within a distance of 1.

The programs for A190835, there is no canonical definition to state claims against.
-/

/-! ## A190835.P2352890083569291118

`A322013(A027379(n+2)+9)`
-/

namespace A190835.P2352890083569291118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322013 (A027379 (n + 2) + 9).toNat

end

end A190835.P2352890083569291118

/-! ## A190835.P1665809428261512993

`A322013(A046691(n+2)+10)`
-/

namespace A190835.P1665809428261512993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322013 (A046691 (n + 2) + 10).toNat

end

end A190835.P1665809428261512993

/-! ## A190835.P11021564783342872422

`A321382(n)/n!`
-/

namespace A190835.P11021564783342872422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321382 n : ℚ) / (Nat.factorial n : ℚ)

end

end A190835.P11021564783342872422

/-! ## A190835.P3933013232096983509

`A321382(n)/A000142(n)`
-/

namespace A190835.P3933013232096983509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321382 n : ℚ) / (A000142 n : ℚ)

end

end A190835.P3933013232096983509

/-! ## A190835.P12433733243495120111

`A321382(n)/A068106(A000096(n))`
-/

namespace A190835.P12433733243495120111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321382 n : ℚ) / (A068106 (A000096 n).toNat : ℚ)

end

end A190835.P12433733243495120111

/-!
# A190836: Number of permutations of 7 copies of 1..n introduced in order 1..n with no element equal to another within a distance of 1.

The programs for A190836, there is no canonical definition to state claims against.
-/

/-! ## A190836.P13602154006322314935

`A322095(n)/n!`
-/

namespace A190836.P13602154006322314935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322095 n : ℚ) / (Nat.factorial n : ℚ)

end

end A190836.P13602154006322314935

/-! ## A190836.P7362888803886580001

`A322095(n)/A000142(n)`
-/

namespace A190836.P7362888803886580001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322095 n : ℚ) / (A000142 n : ℚ)

end

end A190836.P7362888803886580001

/-!
# A190837: Number of permutations of 8 copies of 1..n introduced in order 1..n with no element equal to another within a distance of 1.

The programs for A190837, there is no canonical definition to state claims against.
-/

/-! ## A190837.P13539532359417106322

`A322096(n)/n!`
-/

namespace A190837.P13539532359417106322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322096 n : ℚ) / (Nat.factorial n : ℚ)

end

end A190837.P13539532359417106322

/-! ## A190837.P9242144324780270670

`A322096(n)/A000142(n)`
-/

namespace A190837.P9242144324780270670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322096 n : ℚ) / (A000142 n : ℚ)

end

end A190837.P9242144324780270670

/-! ## A190837.P14276170151139661479

`A322096(n)/A068106(A000096(n))`
-/

namespace A190837.P14276170151139661479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322096 n : ℚ) / (A068106 (A000096 n).toNat : ℚ)

end

end A190837.P14276170151139661479

/-! ## A190837.P5878567079770216528

`A322096(n)/A166350(A179865(n+1))`
-/

namespace A190837.P5878567079770216528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322096 n : ℚ) / (A166350 (A179865 (n + 1)).toNat : ℚ)

end

end A190837.P5878567079770216528

/-!
# A190839: a(n) is the greatest prime divisor of 10^(2*n)+10^n+1.

The programs for A190839, there is no canonical definition to state claims against.
-/

/-! ## A190839.P15723648289694753278

`A003020(3*(n+1))`
-/

namespace A190839.P15723648289694753278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003020 (3 * (n + 1))

end

end A190839.P15723648289694753278

/-! ## A190839.P2194368491169435690

`A005422(3*(n+1))`
-/

namespace A190839.P2194368491169435690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005422 (3 * (n + 1))

end

end A190839.P2194368491169435690

/-! ## A190839.P16632608630461701501

`or(1, A005422(A008486(n+1)))`
-/

namespace A190839.P16632608630461701501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005422 (A008486 (n + 1)).toNat)

end

end A190839.P16632608630461701501

/-! ## A190839.P4916385317858070148

`A249627(3*(n+1))/3`
-/

namespace A190839.P4916385317858070148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249627 (3 * (n + 1)) : ℚ) / 3

end

end A190839.P4916385317858070148

/-!
# A190840: a(n+1) = 4*a(n)*(a(n)+1) for a(0) = 1.

The programs for A190840, the canonical program `A190840.P16179213371737038528` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190840 has offset 0).

The definition of A190840 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190840.P16179213371737038528

`(1+sqrt(2))^2^(n+1)/4+(1-sqrt(2))^2^(n+1)/4-1/2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190840

/-- `(1+sqrt(2))^2^(n+1)/4+(1-sqrt(2))^2^(n+1)/4-1/2` -/
def P16179213371737038528.Spec : Prop :=
  ∀ n, P16179213371737038528.a n = (A190840 n : ℝ)

end A190840

/-! ## A190840.P11136593732217713379

`∏[(2-a(n-1))²]` with `a(0)=1, a(1)=8`
-/

namespace A190840.P11136593732217713379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  (2 - f1 (n - 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A190840.P11136593732217713379

namespace A190840

/-- `∏[(2-a(n-1))²]` -/
def P11136593732217713379.Spec : Prop :=
  ∀ n, P11136593732217713379.a n = A190840 n

end A190840

/-! ## A190840.P540747875929107879

`8*C(a(n-1)+1, 2)` with `a(0)=1`
-/

namespace A190840.P540747875929107879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  8 * Nat.choose (a (n - 1) + 1) 2

end

end A190840.P540747875929107879

namespace A190840

/-- `8*C(a(n-1)+1, 2)` -/
def P540747875929107879.Spec : Prop :=
  ∀ n, (P540747875929107879.a n : ℤ) = A190840 n

end A190840

/-!
# A190841: Integers in (1+A190803)/2.

The programs for A190841, there is no canonical definition to state claims against.
-/

/-! ## A190841.P11388707835814505847

`ceil(A190845(n+1)/3)`
-/

namespace A190841.P11388707835814505847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A190845 (n + 1) : ℚ) / 3⌉

end

end A190841.P11388707835814505847

/-! ## A190841.P4351066200680936752

`record[A025480(A190808(n+1))+1]`
-/

namespace A190841.P4351066200680936752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A190808 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190841.P4351066200680936752

/-! ## A190841.P16506735862735684992

`record[A057427(n)+A032742(A190808(n+1))]`
-/

namespace A190841.P16506735862735684992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A032742 (A190808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190841.P16506735862735684992

/-! ## A190841.P7736495653372369681

`record[A001057(A190803(n+1))]`
-/

namespace A190841.P7736495653372369681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A190803 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190841.P7736495653372369681

/-! ## A190841.P4221361279280377189

`record[A003602(A190803(n+2))]`
-/

namespace A190841.P4221361279280377189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A190803 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190841.P4221361279280377189

/-! ## A190841.P3882357910153107858

`record[A003602(A190808(n+1)+1)]`
-/

namespace A190841.P3882357910153107858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A190808 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190841.P3882357910153107858

/-! ## A190841.P1021757464862328594

`record[A025480(A190803(n+1)+1)]`
-/

namespace A190841.P1021757464862328594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A190803 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190841.P1021757464862328594

/-! ## A190841.P16505881785552622666

`record[A032742(A190803(n+1)+1)]`
-/

namespace A190841.P16505881785552622666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A190803 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190841.P16505881785552622666

/-! ## A190841.P9585428600875281819

`record[A032742(A190808(n+1)+2)]`
-/

namespace A190841.P9585428600875281819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A190808 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190841.P9585428600875281819

/-! ## A190841.P11566766474547294099

`record[A057979(A190803(n+1)+2)]`
-/

namespace A190841.P11566766474547294099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A190803 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190841.P11566766474547294099

/-! ## A190841.P16664929023942973732

`record[A101279(A190803(n+1)+2)]`
-/

namespace A190841.P16664929023942973732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A190803 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190841.P16664929023942973732

/-! ## A190841.P12817500537255789439

`A008620(A190845(n+1))`
-/

namespace A190841.P12817500537255789439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A190845 (n + 1)).toNat

end

end A190841.P12817500537255789439

/-!
# A190842: Integers in (1+A190803)/3.

The programs for A190842, there is no canonical definition to state claims against.
-/

/-! ## A190842.P14621250772383049596

`ceil(A190844(n+1)/2)`
-/

namespace A190842.P14621250772383049596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A190844 (n + 1) : ℚ) / 2⌉

end

end A190842.P14621250772383049596

/-! ## A190842.P13890002549989886695

`(A190848(n+1)+3)/4`
-/

namespace A190842.P13890002549989886695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190848 (n + 1) + 3 : ℚ) / 4

end

end A190842.P13890002549989886695

/-! ## A190842.P8501703639011161069

`A190852(n)+a(n%A014963(n))` with `a(0)=1`
-/

namespace A190842.P8501703639011161069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A190852 n + a (Int.tmod (n : ℤ) (A014963 n)).toNat

end

end A190842.P8501703639011161069

/-! ## A190842.P4688471571334712520

`A278537(A190844(n+1)+1)`
-/

namespace A190842.P4688471571334712520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (A190844 (n + 1) + 1).toNat

end

end A190842.P4688471571334712520

/-! ## A190842.P6489249175229173069

`A000463(A190844(n+1))`
-/

namespace A190842.P6489249175229173069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A190844 (n + 1)).toNat

end

end A190842.P6489249175229173069

/-! ## A190842.P13780879431213609949

`record[A092092(A190803(n+1))]`
-/

namespace A190842.P13780879431213609949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (A190803 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190842.P13780879431213609949

/-! ## A190842.P12652231122122337495

`record[A092092(A190808(n+1)+1)]`
-/

namespace A190842.P12652231122122337495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (A190808 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190842.P12652231122122337495

/-! ## A190842.P8220516302848190750

`A008621(A190848(n+1))`
-/

namespace A190842.P8220516302848190750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A190848 (n + 1)).toNat

end

end A190842.P8220516302848190750

/-! ## A190842.P3419298485200307076

`record[A078898(A190804(n+1))]`
-/

namespace A190842.P3419298485200307076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A190804 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190842.P3419298485200307076

/-!
# A190843: a(n) = [2*n*e] - 2*[n*e], where [ ] = floor and e is the natural logarithm base.

The programs for A190843, the canonical program `A190843.P3116096983495934928` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190843 has offset 1).

The definition of A190843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190843.P3116096983495934928

`floor(2*(n+1)*e)-2*floor((n+1)*e)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190843

/-- `floor(2*(n+1)*e)-2*floor((n+1)*e)` -/
def P3116096983495934928.Spec : Prop :=
  ∀ n, P3116096983495934928.a n = A190843 (n + 1)

theorem P3116096983495934928.correct : P3116096983495934928.Spec := by
  intro n
  simp only [A190843, Nat.add_sub_cancel]

end A190843

/-! ## A190843.P12191982829959366774

`floor(2*e*(n+1))%2`
-/

namespace A190843.P12191982829959366774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * (Real.exp 1 * (n + 1 : ℝ))⌋ 2

end

end A190843.P12191982829959366774

namespace A190843

/-- `floor(2*e*(n+1))%2` -/
def P12191982829959366774.Spec : Prop :=
  ∀ n, P12191982829959366774.a n = A190843 (n + 1)

end A190843

/-! ## A190843.P9831614728386304254

`and(1, floor(2*e*(n+1)))`
-/

namespace A190843.P9831614728386304254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊2 * (Real.exp 1 * (n + 1 : ℝ))⌋

end

end A190843.P9831614728386304254

namespace A190843

/-- `and(1, floor(2*e*(n+1)))` -/
def P9831614728386304254.Spec : Prop :=
  ∀ n, P9831614728386304254.a n = A190843 (n + 1)

end A190843

/-! ## A190843.P17746201249569002875

`round(acot(A024573(n+1)))`
-/

namespace A190843.P17746201249569002875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A024573 (n + 1) : ℝ))

end

end A190843.P17746201249569002875

namespace A190843

/-- `round(acot(A024573(n+1)))` -/
def P17746201249569002875.Spec : Prop :=
  ∀ n, P17746201249569002875.a n = A190843 (n + 1)

end A190843

/-! ## A190843.P12675041443627091624

`char[A190860(n+1)-1]`
-/

namespace A190843.P12675041443627091624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190860 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190843.P12675041443627091624

namespace A190843

/-- `char[A190860(n+1)-1]` -/
def P12675041443627091624.Spec : Prop :=
  ∀ n, (P12675041443627091624.a n : ℤ) = A190843 (n + 1)

end A190843

/-! ## A190843.P7786370173588531533

`C(A005117(n+1), A005117(n+1)*A024573(n+1))`
-/

namespace A190843.P7786370173588531533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005117 (n + 1)).toNat (A005117 (n + 1) * A024573 (n + 1)).toNat

end

end A190843.P7786370173588531533

namespace A190843

/-- `C(A005117(n+1), A005117(n+1)*A024573(n+1))` -/
def P7786370173588531533.Spec : Prop :=
  ∀ n, (P7786370173588531533.a n : ℤ) = A190843 (n + 1)

end A190843

/-! ## A190843.P11889295084129982745

`C(A049419(n+1), A024573(n+1)*A049419(n+1))`
-/

namespace A190843.P11889295084129982745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049419 (n + 1)).toNat (A024573 (n + 1) * A049419 (n + 1)).toNat

end

end A190843.P11889295084129982745

namespace A190843

/-- `C(A049419(n+1), A024573(n+1)*A049419(n+1))` -/
def P11889295084129982745.Spec : Prop :=
  ∀ n, (P11889295084129982745.a n : ℤ) = A190843 (n + 1)

end A190843

/-! ## A190843.P7058252610233406499

`C(A257509(n+1), A024573(n+1)*A257509(n+1))`
-/

namespace A190843.P7058252610233406499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A257509 (n + 1)).toNat (A024573 (n + 1) * A257509 (n + 1)).toNat

end

end A190843.P7058252610233406499

namespace A190843

/-- `C(A257509(n+1), A024573(n+1)*A257509(n+1))` -/
def P7058252610233406499.Spec : Prop :=
  ∀ n, (P7058252610233406499.a n : ℤ) = A190843 (n + 1)

end A190843

/-! ## A190843.P15863248236271210954

`A000035(A195182(n+1))`
-/

namespace A190843.P15863248236271210954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A195182 (n + 1)).toNat

end

end A190843.P15863248236271210954

namespace A190843

/-- `A000035(A195182(n+1))` -/
def P15863248236271210954.Spec : Prop :=
  ∀ n, P15863248236271210954.a n = A190843 (n + 1)

end A190843

/-! ## A190843.P3898631798645504999

`val(A022852(n+1), A121384(n+1))`
-/

namespace A190843.P3898631798645504999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A022852 (n + 1)).toNat (A121384 (n + 1)).toNat

end

end A190843.P3898631798645504999

namespace A190843

/-- `val(A022852(n+1), A121384(n+1))` -/
def P3898631798645504999.Spec : Prop :=
  ∀ n, (P3898631798645504999.a n : ℤ) = A190843 (n + 1)

end A190843

/-! ## A190843.P14321378448652455097

`A000166(A121384(n+1)-A022852(n+1))`
-/

namespace A190843.P14321378448652455097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (A121384 (n + 1) - A022852 (n + 1)).toNat

end

end A190843.P14321378448652455097

namespace A190843

/-- `A000166(A121384(n+1)-A022852(n+1))` -/
def P14321378448652455097.Spec : Prop :=
  ∀ n, P14321378448652455097.a n = A190843 (n + 1)

end A190843

/-! ## A190843.P3581519767544715987

`A171386(A024573(n+1)+2)`
-/

namespace A190843.P3581519767544715987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171386 (A024573 (n + 1) + 2).toNat

end

end A190843.P3581519767544715987

namespace A190843

/-- `A171386(A024573(n+1)+2)` -/
def P3581519767544715987.Spec : Prop :=
  ∀ n, P3581519767544715987.a n = A190843 (n + 1)

end A190843

/-! ## A190843.P11369379867863139734

`C(A049419(A005117(n+1)), A024573(n+1))`
-/

namespace A190843.P11369379867863139734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049419 (A005117 (n + 1)).toNat).toNat (A024573 (n + 1)).toNat

end

end A190843.P11369379867863139734

namespace A190843

/-- `C(A049419(A005117(n+1)), A024573(n+1))` -/
def P11369379867863139734.Spec : Prop :=
  ∀ n, (P11369379867863139734.a n : ℤ) = A190843 (n + 1)

end A190843

/-!
# A190844: Integers in A190804/3; contains A190804 as a proper subsequence.

The programs for A190844, there is no canonical definition to state claims against.
-/

/-! ## A190844.P15986648967222077835

`2*A190842(n+1)-1`
-/

namespace A190844.P15986648967222077835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190842 (n + 1) - 1

end

end A190844.P15986648967222077835

/-! ## A190844.P3513259056774074403

`(A190848(n+1)+1)/2`
-/

namespace A190844.P3513259056774074403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190848 (n + 1) + 1 : ℚ) / 2

end

end A190844.P3513259056774074403

/-! ## A190844.P17183553913721355930

`A005408(A190842(n+1)-1)`
-/

namespace A190844.P17183553913721355930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A190842 (n + 1) - 1).toNat

end

end A190844.P17183553913721355930

/-! ## A190844.P1793351490643885514

`A004273(A190842(n+1))`
-/

namespace A190844.P1793351490643885514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A190842 (n + 1)).toNat

end

end A190844.P1793351490643885514

/-! ## A190844.P7264699928038911998

`A014681(2*A190842(n+1))`
-/

namespace A190844.P7264699928038911998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A190842 (n + 1)).toNat

end

end A190844.P7264699928038911998

/-! ## A190844.P13896739593732591954

`A023443(2*A190842(n+1))`
-/

namespace A190844.P13896739593732591954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A190842 (n + 1)).toNat

end

end A190844.P13896739593732591954

/-! ## A190844.P1090267353853277429

`record[A092092(A190808(n+1))]`
-/

namespace A190844.P1090267353853277429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (A190808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190844.P1090267353853277429

/-! ## A190844.P13592316521432136342

`record[A092092(A190803(n+2)-1)]`
-/

namespace A190844.P13592316521432136342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (A190803 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190844.P13592316521432136342

/-! ## A190844.P9176359815925670706

`record[A006083(A190804(n+1))]`
-/

namespace A190844.P9176359815925670706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006083 (A190804 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190844.P9176359815925670706

/-! ## A190844.P4695462915666646561

`A000463(A190848(n+1))`
-/

namespace A190844.P4695462915666646561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A190848 (n + 1)).toNat

end

end A190844.P4695462915666646561

/-! ## A190844.P12063261308868359861

`record[A032742(A190804(n+2))]`
-/

namespace A190844.P12063261308868359861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A190804 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190844.P12063261308868359861

/-! ## A190844.P17847440736690491425

`A008621(2*A190848(n+1))`
-/

namespace A190844.P17847440736690491425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A190848 (n + 1)).toNat

end

end A190844.P17847440736690491425

/-! ## A190844.P13276475410619682322

`A002265(2*(A190848(n+1)+1))`
-/

namespace A190844.P13276475410619682322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A190848 (n + 1) + 1)).toNat

end

end A190844.P13276475410619682322

/-! ## A190844.P10277049183561324266

`A008621(A190848(n+1)+A190848(n+1)+1)`
-/

namespace A190844.P10277049183561324266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A190848 (n + 1) + (A190848 (n + 1) + 1)).toNat

end

end A190844.P10277049183561324266

/-! ## A190844.P11923436928576445436

`A002265(A190848(n+1)+A190848(n+1)+2)`
-/

namespace A190844.P11923436928576445436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A190848 (n + 1) + (A190848 (n + 1) + 2)).toNat

end

end A190844.P11923436928576445436

/-! ## A190844.P12804162184834123324

`record[A078898(A190804(n+2)-2)]`
-/

namespace A190844.P12804162184834123324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A190804 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190844.P12804162184834123324

/-!
# A190845: Integers in (1+A190805)/2; contains A190805 as a proper subsequence.

The programs for A190845, there is no canonical definition to state claims against.
-/

/-! ## A190845.P10314962599916066743

`3*A190841(n+1)-2`
-/

namespace A190845.P10314962599916066743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A190841 (n + 1) - 2

end

end A190845.P10314962599916066743

/-! ## A190845.P209731152494034720

`A008486(A190841(n+1))-2`
-/

namespace A190845.P209731152494034720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A190841 (n + 1)).toNat - 2

end

end A190845.P209731152494034720

/-! ## A190845.P3151127339536850814

`record[A001057(A190805(n+1))]`
-/

namespace A190845.P3151127339536850814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A190805 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190845.P3151127339536850814

/-! ## A190845.P9263969200683175562

`record[A001057(A190808(n+1))]`
-/

namespace A190845.P9263969200683175562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A190808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190845.P9263969200683175562

/-! ## A190845.P17105920674885716402

`record[A032742(A190803(n+1))]`
-/

namespace A190845.P17105920674885716402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A190803 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190845.P17105920674885716402

/-! ## A190845.P12539222189365066659

`record[A003602(A190805(n+2))]`
-/

namespace A190845.P12539222189365066659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A190805 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190845.P12539222189365066659

/-! ## A190845.P16076867694062073943

`record[A003602(A190808(n+2))]`
-/

namespace A190845.P16076867694062073943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A190808 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190845.P16076867694062073943

/-! ## A190845.P17229295843145447894

`record[A025480(A190803(n+2))]`
-/

namespace A190845.P17229295843145447894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A190803 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190845.P17229295843145447894

/-! ## A190845.P7660121250737013180

`record[A025480(A190808(n+1)+1)]`
-/

namespace A190845.P7660121250737013180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A190808 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190845.P7660121250737013180

/-! ## A190845.P3553430698115752413

`record[A032742(A190808(n+1)+1)]`
-/

namespace A190845.P3553430698115752413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A190808 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190845.P3553430698115752413

/-! ## A190845.P7638159482394737443

`record[A057979(A190803(n+1)+1)]`
-/

namespace A190845.P7638159482394737443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A190803 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190845.P7638159482394737443

/-! ## A190845.P5941140230747968722

`record[A101279(A190803(n+1)+1)]`
-/

namespace A190845.P5941140230747968722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A190803 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190845.P5941140230747968722

/-! ## A190845.P815999699825075334

`record[A001057(A190803(n+2)-1)]`
-/

namespace A190845.P815999699825075334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A190803 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190845.P815999699825075334

/-! ## A190845.P1129109174711435381

`record[A003602(A190803(n+2)-1)]`
-/

namespace A190845.P1129109174711435381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A190803 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190845.P1129109174711435381

/-!
# A190846: (Squarefree part of (ABC))/C for A=1, C=A+B, as a function of B, rounded to the nearest integer.

The programs for A190846, there is no canonical definition to state claims against.
-/

/-! ## A190846.P2423954042711569887

`round((n+1)/A003557(∑[2*(n+1)]))`
-/

namespace A190846.P2423954042711569887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))

end

end A190846.P2423954042711569887

/-!
# A190847: Positions of 0 in A190843; complement of A190860.

The programs for A190847, the canonical program `A190847.P16688717561457991775` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190847 has offset 1).

The definition of A190847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190847.P16688717561457991775

`comp[A190860(n+1)-1]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190847

/-- `comp[A190860(n+1)-1]+1` -/
def P16688717561457991775.Spec : Prop :=
  ∀ n, (P16688717561457991775.a n : ℤ) = A190847 (n + 1)

theorem P16688717561457991775.correct : P16688717561457991775.Spec := by
  intro n
  simp only [A190847, Nat.add_sub_cancel]

end A190847

/-! ## A190847.P11710377786707092319

`eq[1, A019426(A195182(n))]`
-/

namespace A190847.P11710377786707092319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A195182 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190847.P11710377786707092319

namespace A190847

/-- `eq[1, A019426(A195182(n))]` -/
def P11710377786707092319.Spec : Prop :=
  ∀ n, (P11710377786707092319.a n : ℤ) = A190847 (n + 1)

end A190847

/-! ## A190847.P10047437302996793517

`lt[1, A019425(A195182(n)+1)]`
-/

namespace A190847.P10047437302996793517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A195182 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A190847.P10047437302996793517

namespace A190847

/-- `lt[1, A019425(A195182(n)+1)]` -/
def P10047437302996793517.Spec : Prop :=
  ∀ n, (P10047437302996793517.a n : ℤ) = A190847 (n + 1)

end A190847

/-! ## A190847.P7676756909090252764

`lt[2, A019426(A195182(n)+1)]`
-/

namespace A190847.P7676756909090252764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A195182 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A190847.P7676756909090252764

namespace A190847

/-- `lt[2, A019426(A195182(n)+1)]` -/
def P7676756909090252764.Spec : Prop :=
  ∀ n, (P7676756909090252764.a n : ℤ) = A190847 (n + 1)

end A190847

/-! ## A190847.P14703124708303616340

`eq[A000007(n), A000035(A195182(n))]`
-/

namespace A190847.P14703124708303616340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A195182 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190847.P14703124708303616340

namespace A190847

/-- `eq[A000007(n), A000035(A195182(n))]` -/
def P14703124708303616340.Spec : Prop :=
  ∀ n, (P14703124708303616340.a n : ℤ) = A190847 (n + 1)

end A190847

/-! ## A190847.P14772620531701461648

`eq[A000035(A195182(n)), A000038(n)]`
-/

namespace A190847.P14772620531701461648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A195182 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190847.P14772620531701461648

namespace A190847

/-- `eq[A000035(A195182(n)), A000038(n)]` -/
def P14772620531701461648.Spec : Prop :=
  ∀ n, (P14772620531701461648.a n : ℤ) = A190847 (n + 1)

end A190847

/-! ## A190847.P12522345944947234042

`eq[A033999(A195182(n)), A057427(n)]`
-/

namespace A190847.P12522345944947234042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A195182 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190847.P12522345944947234042

namespace A190847

/-- `eq[A033999(A195182(n)), A057427(n)]` -/
def P12522345944947234042.Spec : Prop :=
  ∀ n, (P12522345944947234042.a n : ℤ) = A190847 (n + 1)

end A190847

/-! ## A190847.P17535080061701775018

`lt[A019426(A195182(n)), A195182(2*n)]`
-/

namespace A190847.P17535080061701775018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A195182 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195182 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190847.P17535080061701775018

namespace A190847

/-- `lt[A019426(A195182(n)), A195182(2*n)]` -/
def P17535080061701775018.Spec : Prop :=
  ∀ n, (P17535080061701775018.a n : ℤ) = A190847 (n + 1)

end A190847

/-! ## A190847.P4329538760003400371

`eq[1, A019425(A276853(n))]`
-/

namespace A190847.P4329538760003400371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A276853 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190847.P4329538760003400371

namespace A190847

/-- `eq[1, A019425(A276853(n))]` -/
def P4329538760003400371.Spec : Prop :=
  ∀ n, (P4329538760003400371.a n : ℤ) = A190847 (n + 1)

end A190847

/-! ## A190847.P942566347482615418

`lt[1, A035464(A022843(2*n)+2)]`
-/

namespace A190847.P942566347482615418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035464 (A022843 (2 * n) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A190847.P942566347482615418

namespace A190847

/-- `lt[1, A035464(A022843(2*n)+2)]` -/
def P942566347482615418.Spec : Prop :=
  ∀ n, (P942566347482615418.a n : ℤ) = A190847 (n + 1)

end A190847

/-! ## A190847.P3844599999403842552

`eq[1, A019427(A195182(n)²)]`
-/

namespace A190847.P3844599999403842552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (A195182 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190847.P3844599999403842552

namespace A190847

/-- `eq[1, A019427(A195182(n)²)]` -/
def P3844599999403842552.Spec : Prop :=
  ∀ n, (P3844599999403842552.a n : ℤ) = A190847 (n + 1)

end A190847

/-! ## A190847.P3806538731001653598

`eq[1, A019428(A195182(n)²)]`
-/

namespace A190847.P3806538731001653598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A195182 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190847.P3806538731001653598

namespace A190847

/-- `eq[1, A019428(A195182(n)²)]` -/
def P3806538731001653598.Spec : Prop :=
  ∀ n, (P3806538731001653598.a n : ℤ) = A190847 (n + 1)

end A190847

/-! ## A190847.P15465098317228711002

`eq[1, A019431(A195182(n)²)]`
-/

namespace A190847.P15465098317228711002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 (A195182 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190847.P15465098317228711002

namespace A190847

/-- `eq[1, A019431(A195182(n)²)]` -/
def P15465098317228711002.Spec : Prop :=
  ∀ n, (P15465098317228711002.a n : ℤ) = A190847 (n + 1)

end A190847

/-! ## A190847.P16388466942109504064

`lt[A019425(A195182(n)²), n]`
-/

namespace A190847.P16388466942109504064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A195182 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A190847.P16388466942109504064

namespace A190847

/-- `lt[A019425(A195182(n)²), n]` -/
def P16388466942109504064.Spec : Prop :=
  ∀ n, (P16388466942109504064.a n : ℤ) = A190847 (n + 1)

end A190847

/-! ## A190847.P14243719010783847580

`lt[A019426(A195182(n)²), n]`
-/

namespace A190847.P14243719010783847580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A195182 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A190847.P14243719010783847580

namespace A190847

/-- `lt[A019426(A195182(n)²), n]` -/
def P14243719010783847580.Spec : Prop :=
  ∀ n, (P14243719010783847580.a n : ℤ) = A190847 (n + 1)

end A190847

/-!
# A190848: Integers in (-2+A190806)/3; contains A190806 as a proper subsequence.

The programs for A190848, there is no canonical definition to state claims against.
-/

/-! ## A190848.P4680566441914042519

`2*A190844(n+1)-1`
-/

namespace A190848.P4680566441914042519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190844 (n + 1) - 1

end

end A190848.P4680566441914042519

/-! ## A190848.P3683607310552553388

`4*A190842(n+1)-3`
-/

namespace A190848.P3683607310552553388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A190842 (n + 1) - 3

end

end A190848.P3683607310552553388

/-! ## A190848.P3960819402669030846

`A016813(A190842(n+1)-1)`
-/

namespace A190848.P3960819402669030846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A190842 (n + 1) - 1).toNat

end

end A190848.P3960819402669030846

/-! ## A190848.P6229821417054417156

`or(1, A000069(A190844(n+1)))`
-/

namespace A190848.P6229821417054417156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000069 (A190844 (n + 1)).toNat)

end

end A190848.P6229821417054417156

/-! ## A190848.P3566009088321672060

`A005408(A190842(n+1)+A190842(n+1)-2)`
-/

namespace A190848.P3566009088321672060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A190842 (n + 1) + (A190842 (n + 1) - 2)).toNat

end

end A190848.P3566009088321672060

/-! ## A190848.P1524820360381220290

`A004273(A190844(n+1))`
-/

namespace A190848.P1524820360381220290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A190844 (n + 1)).toNat

end

end A190848.P1524820360381220290

/-! ## A190848.P1851174706237425110

`A004273(A190842(n+1)+A190842(n+1)-1)`
-/

namespace A190848.P1851174706237425110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A190842 (n + 1) + (A190842 (n + 1) - 1)).toNat

end

end A190848.P1851174706237425110

/-! ## A190848.P16312712376257662712

`A190844(n+1)+A004524(2*A190844(n+1))`
-/

namespace A190848.P16312712376257662712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190844 (n + 1) + A004524 (2 * A190844 (n + 1)).toNat

end

end A190848.P16312712376257662712

/-! ## A190848.P4212901200192345549

`record[A092092(A190808(n+2)-1)]`
-/

namespace A190848.P4212901200192345549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (A190808 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190848.P4212901200192345549

/-! ## A190848.P654251007342036286

`record[A006083(A190804(n+2)-2)]`
-/

namespace A190848.P654251007342036286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006083 (A190804 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190848.P654251007342036286

/-! ## A190848.P18349743282681630767

`record[A032742(A190804(n+2)-2)]`
-/

namespace A190848.P18349743282681630767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A190804 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190848.P18349743282681630767

/-!
# A190849: Integers in (A190807)/2; contains A190807 as a proper subsequence.

The programs for A190849, there is no canonical definition to state claims against.
-/

/-! ## A190849.P10441535522979906991

`ceil(record[A000265(A007448(n))]/2)`
-/

namespace A190849.P10441535522979906991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A007448 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌉

end

end A190849.P10441535522979906991

/-! ## A190849.P12184921668129435824

`eq[1, A132138(2*n+1)]+1`
-/

namespace A190849.P12184921668129435824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132138 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190849.P12184921668129435824

/-! ## A190849.P7042293647463906728

`record[A001057(A007448(n))]`
-/

namespace A190849.P7042293647463906728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A007448 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190849.P7042293647463906728

/-! ## A190849.P3641721928879889706

`record[A001057(A002977(n+1))]`
-/

namespace A190849.P3641721928879889706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A002977 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190849.P3641721928879889706

/-! ## A190849.P5730847680355809711

`record[A142150(A007448(n)+1)]`
-/

namespace A190849.P5730847680355809711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A007448 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190849.P5730847680355809711

/-! ## A190849.P2401000188347571336

`record[A032742(A190807(n+1))]`
-/

namespace A190849.P2401000188347571336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A190807 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190849.P2401000188347571336

/-! ## A190849.P10998939732082171015

`record[A003602(A276786(n+1))]`
-/

namespace A190849.P10998939732082171015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A276786 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190849.P10998939732082171015

/-! ## A190849.P18280347618996027602

`record[A057979(A007448(n)+2)]`
-/

namespace A190849.P18280347618996027602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A007448 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190849.P18280347618996027602

/-! ## A190849.P2028457775777198947

`record[A101279(A007448(n)+2)]`
-/

namespace A190849.P2028457775777198947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A007448 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190849.P2028457775777198947

/-! ## A190849.P16589165064162281766

`record[A110514(A007448(n)-1)]`
-/

namespace A190849.P16589165064162281766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A007448 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190849.P16589165064162281766

/-! ## A190849.P2699497553360256990

`record[A025480(A190807(n+2))]`
-/

namespace A190849.P2699497553360256990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A190807 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190849.P2699497553360256990

/-! ## A190849.P5112675172597061535

`record[A003602(A007448(2*n))]`
-/

namespace A190849.P5112675172597061535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A007448 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190849.P5112675172597061535

/-! ## A190849.P7414172506361172201

`record[A032742(A002977(n+1)+1)]`
-/

namespace A190849.P7414172506361172201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A002977 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190849.P7414172506361172201

/-! ## A190849.P15749514585063138779

`record[A032742(A276786(n+1)+1)]`
-/

namespace A190849.P15749514585063138779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A276786 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190849.P15749514585063138779

/-! ## A190849.P16604395040452967214

`record[A057979(A002977(n+1)+2)]`
-/

namespace A190849.P16604395040452967214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A002977 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190849.P16604395040452967214

/-! ## A190849.P14141796588818037418

`record[A101279(A002977(n+1)+2)]`
-/

namespace A190849.P14141796588818037418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A002977 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190849.P14141796588818037418

/-! ## A190849.P722044505676078958

`record[A101279(A276786(n+1)+2)]`
-/

namespace A190849.P722044505676078958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A276786 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190849.P722044505676078958

/-! ## A190849.P14089521289981922715

`record[A003602(n+1)*A132138(n+1)]`
-/

namespace A190849.P14089521289981922715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) * A132138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190849.P14089521289981922715

/-! ## A190849.P16550052813644293296

`A000463(record[A000265(A007448(n))])`
-/

namespace A190849.P16550052813644293296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A007448 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A190849.P16550052813644293296

/-! ## A190849.P10172186834181625703

`record[A003602(A007448(n))]%A000040(n+1)`
-/

namespace A190849.P10172186834181625703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A007448 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000040 (n + 1))

end

end A190849.P10172186834181625703

/-!
# A190850: Integers in (1+A190807)/3; contains A190807 as a proper subsequence.

The programs for A190850, there is no canonical definition to state claims against.
-/

/-! ## A190850.P3805025050264128013

`(A190857(n+1)+1)/2`
-/

namespace A190850.P3805025050264128013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190857 (n + 1) + 1 : ℚ) / 2

end

end A190850.P3805025050264128013

/-! ## A190850.P9411586504784178873

`A014682(A190857(n+1)+1)`
-/

namespace A190850.P9411586504784178873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A190857 (n + 1) + 1).toNat

end

end A190850.P9411586504784178873

/-! ## A190850.P18392460768801196238

`A260739(A190857(n+1)+1)`
-/

namespace A190850.P18392460768801196238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A190857 (n + 1) + 1).toNat

end

end A190850.P18392460768801196238

/-! ## A190850.P7171993504087258190

`A000463(A190857(n+1))`
-/

namespace A190850.P7171993504087258190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A190857 (n + 1)).toNat

end

end A190850.P7171993504087258190

/-! ## A190850.P1642389169685224485

`A026741(A190857(n+1)+1)`
-/

namespace A190850.P1642389169685224485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A190857 (n + 1) + 1).toNat

end

end A190850.P1642389169685224485

/-! ## A190850.P9900617021005553565

`A065033(A190857(n+1)+1)`
-/

namespace A190850.P9900617021005553565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A190857 (n + 1) + 1).toNat

end

end A190850.P9900617021005553565

/-! ## A190850.P16871709232077909501

`A004524(A190857(n+1)+2)`
-/

namespace A190850.P16871709232077909501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A190857 (n + 1) + 2).toNat

end

end A190850.P16871709232077909501

/-! ## A190850.P16295972249353648213

`record[A117910(A007448(n))]`
-/

namespace A190850.P16295972249353648213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A007448 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190850.P16295972249353648213

/-! ## A190850.P10454577492911869793

`record[A117910(A002977(n+1))]`
-/

namespace A190850.P10454577492911869793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A002977 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190850.P10454577492911869793

/-! ## A190850.P8385240640750022593

`record[A103627(A190807(n+2))+1]`
-/

namespace A190850.P8385240640750022593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A190807 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190850.P8385240640750022593

/-! ## A190850.P14614361582726235283

`A008620(record[A051176(A007448(n))])`
-/

namespace A190850.P14614361582726235283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A007448 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A190850.P14614361582726235283

/-! ## A190850.P12674029664479276803

`A008620(record[A106610(A007448(n))])`
-/

namespace A190850.P12674029664479276803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A007448 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A190850.P12674029664479276803

/-! ## A190850.P16844516035241040829

`A087507(record[A051176(A007448(n))])`
-/

namespace A190850.P16844516035241040829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A007448 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087507 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A190850.P16844516035241040829

/-! ## A190850.P13436017271979443590

`A001057(record[A166711(A007448(n))])`
-/

namespace A190850.P13436017271979443590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166711 (A007448 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A190850.P13436017271979443590

/-! ## A190850.P3832035658787532926

`A110655(record[A058281(A007448(n))])`
-/

namespace A190850.P3832035658787532926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 (A007448 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A190850.P3832035658787532926

/-! ## A190850.P13674309568302789631

`record[A078898(A190811(n+1))]`
-/

namespace A190850.P13674309568302789631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A190811 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190850.P13674309568302789631

/-!
# A190851: Integers in (A190808)/2; contains A190808 as a proper subsequence.

The programs for A190851, there is no canonical definition to state claims against.
-/

/-! ## A190851.P4479497576570570422

`A190841(n+2)-1`
-/

namespace A190851.P4479497576570570422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190841 (n + 2) - 1

end

end A190851.P4479497576570570422

/-! ## A190851.P7175335143262620293

`floor(A190845(n+2)/3)`
-/

namespace A190851.P7175335143262620293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A190845 (n + 2) : ℚ) / 3⌋

end

end A190851.P7175335143262620293

/-! ## A190851.P10814962041495819691

`∑[abs(Δ[A190841(n+1)])]`
-/

namespace A190851.P10814962041495819691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190841 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190851.P10814962041495819691

/-! ## A190851.P816429968750097378

`∑[A000027(Δ[A190841(n+1)])]`
-/

namespace A190851.P816429968750097378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190841 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190851.P816429968750097378

/-! ## A190851.P17333462597543323881

`A023443(A190841(n+2))`
-/

namespace A190851.P17333462597543323881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A190841 (n + 2)).toNat

end

end A190851.P17333462597543323881

/-! ## A190851.P14728871217629798198

`record[A032742(A190808(n+1))]`
-/

namespace A190851.P14728871217629798198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A190808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190851.P14728871217629798198

/-! ## A190851.P12953381139647190256

`record[A025480(A190808(n+2))]`
-/

namespace A190851.P12953381139647190256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A190808 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190851.P12953381139647190256

/-! ## A190851.P1559464482511732733

`record[A001057(A190808(n+2)-1)]`
-/

namespace A190851.P1559464482511732733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A190808 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190851.P1559464482511732733

/-! ## A190851.P7769805761186872134

`record[A003602(A190808(n+2)-1)]`
-/

namespace A190851.P7769805761186872134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A190808 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190851.P7769805761186872134

/-! ## A190851.P17207352711637175869

`record[A032742(A190803(n+2)-1)]`
-/

namespace A190851.P17207352711637175869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A190803 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190851.P17207352711637175869

/-! ## A190851.P1669884585879704374

`record[A101279(A190803(n+1))]`
-/

namespace A190851.P1669884585879704374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A190803 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190851.P1669884585879704374

/-! ## A190851.P2800887657351955556

`record[A057979(A190803(n+2))]`
-/

namespace A190851.P2800887657351955556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A190803 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190851.P2800887657351955556

/-! ## A190851.P9080666827966801467

`A002264(A190845(n+2))`
-/

namespace A190851.P9080666827966801467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A190845 (n + 2)).toNat

end

end A190851.P9080666827966801467

/-!
# A190852: Integers in (-1+A190808)/3; contains A190808 as a proper subsequence.

The programs for A190852, there is no canonical definition to state claims against.
-/

/-! ## A190852.P4169047688087641006

`∪[A190808(n+1), A190848(n+1)]`
-/

namespace A190852.P4169047688087641006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190852.P4169047688087641006

/-! ## A190852.P754271864366312800

`A190842(n+2)-1`
-/

namespace A190852.P754271864366312800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190842 (n + 2) - 1

end

end A190852.P754271864366312800

/-! ## A190852.P6974744492451495541

`floor(A190844(n+2)/2)`
-/

namespace A190852.P6974744492451495541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A190844 (n + 2) : ℚ) / 2⌋

end

end A190852.P6974744492451495541

/-! ## A190852.P14098446555939372511

`∑[abs(Δ[A190842(n+1)])]`
-/

namespace A190852.P14098446555939372511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190842 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190852.P14098446555939372511

/-! ## A190852.P7415176489874070849

`(A190844(n+2)+A033999(2*n+1))/2`
-/

namespace A190852.P7415176489874070849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190844 (n + 2) + A033999 (2 * n + 1) : ℚ) / 2

end

end A190852.P7415176489874070849

/-! ## A190852.P7436454711234533884

`A023443(A190842(n+2))`
-/

namespace A190852.P7436454711234533884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A190842 (n + 2)).toNat

end

end A190852.P7436454711234533884

/-! ## A190852.P18343050143817202864

`A278537(A190844(n+2)-1)`
-/

namespace A190852.P18343050143817202864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (A190844 (n + 2) - 1).toNat

end

end A190852.P18343050143817202864

/-! ## A190852.P8599653632498969059

`A004524(A190844(n+2))`
-/

namespace A190852.P8599653632498969059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A190844 (n + 2)).toNat

end

end A190852.P8599653632498969059

/-! ## A190852.P18011429120324215597

`record[A092092(A190808(n+1)+1)-(n+2)%(n+1)]`
-/

namespace A190852.P18011429120324215597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (A190808 (n + 1) + 1).toNat - (((n + 2) % (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190852.P18011429120324215597

/-! ## A190852.P14466637802305618219

`record[A101279(A004396(A190803(n+1)))]`
-/

namespace A190852.P14466637802305618219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A004396 (A190803 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190852.P14466637802305618219

/-! ## A190852.P17734858692451008857

`record[A092092(A190803(n+1))-A057427(n)]`
-/

namespace A190852.P17734858692451008857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (A190803 (n + 1)).toNat - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190852.P17734858692451008857

/-! ## A190852.P3743766945104803764

`record[A092092(A190803(n+1))-A104138(n)%2]`
-/

namespace A190852.P3743766945104803764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (A190803 (n + 1)).toNat - Int.tmod (A104138 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190852.P3743766945104803764

/-! ## A190852.P2507468211275807921

`A008621(A190848(n+2)-2)`
-/

namespace A190852.P2507468211275807921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A190848 (n + 2) - 2).toNat

end

end A190852.P2507468211275807921

/-! ## A190852.P11082172284365348071

`A002265(A190848(n+2))`
-/

namespace A190852.P11082172284365348071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A190848 (n + 2)).toNat

end

end A190852.P11082172284365348071

/-! ## A190852.P17572084964014203423

`record[A078898(A190804(n+1))-A057427(n)]`
-/

namespace A190852.P17572084964014203423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A190804 (n + 1)).toNat - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190852.P17572084964014203423

/-!
# A190853: Integers in (A190809)/2; contains A190809 as a proper subsequence.

The programs for A190853, there is no canonical definition to state claims against.
-/

/-! ## A190853.P17530477079522499085

`record[A032742(A190809(n+1))]`
-/

namespace A190853.P17530477079522499085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A190809 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190853.P17530477079522499085

/-! ## A190853.P12864841561358102465

`record[A078898(A190809(n+2))]`
-/

namespace A190853.P12864841561358102465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A190809 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190853.P12864841561358102465

/-! ## A190853.P14011296337478952026

`record[A057979(A190809(n+1)+1)]`
-/

namespace A190853.P14011296337478952026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A190809 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190853.P14011296337478952026

/-! ## A190853.P10255788198135947035

`record[A166514(A190809(A028310(n)))]`
-/

namespace A190853.P10255788198135947035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (A190809 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190853.P10255788198135947035

/-! ## A190853.P4667890445795557183

`record[A166514(A190809(A065033(n)))]`
-/

namespace A190853.P4667890445795557183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (A190809 (A065033 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190853.P4667890445795557183

/-! ## A190853.P4828901947171106299

`record[A142150(2*n+1)+A142150(A190809(n+2))]`
-/

namespace A190853.P4828901947171106299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 * n + 1) + A142150 (A190809 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190853.P4828901947171106299

/-! ## A190853.P3533058414054780407

`record[A142150(A190809(A231151(n+2)))]`
-/

namespace A190853.P3533058414054780407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A190809 (A231151 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190853.P3533058414054780407

/-!
# A190854: Integers in (-2+A190809)/3; contains A190809 as a proper subsequence.

The programs for A190854, there is no canonical definition to state claims against.
-/

/-! ## A190854.P2100057840839764857

`∑[A001176(∑[A165831(n+1)])]`
-/

namespace A190854.P2100057840839764857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165831 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190854.P2100057840839764857

/-! ## A190854.P4819758726665028143

`eq[A001065(A027759(n+1)), A279255(n)]`
-/

namespace A190854.P4819758726665028143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A027759 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190854.P4819758726665028143

/-! ## A190854.P4068840372300435609

`lt[A142153(A117535(n)), A020639(n+1)]`
-/

namespace A190854.P4068840372300435609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142153 (A117535 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190854.P4068840372300435609

/-! ## A190854.P10890652635801107416

`lt[A000700(n), A260439(A102510(n+2))]`
-/

namespace A190854.P10890652635801107416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260439 (A102510 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190854.P10890652635801107416

/-! ## A190854.P15408791588675924811

`eq[A217605(A023141(n+1)), A378357(3*(n+1))]`
-/

namespace A190854.P15408791588675924811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217605 (A023141 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378357 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190854.P15408791588675924811

/-!
# A190855: Integers in (-1+A190810)/2; contains A190810 as a proper subsequence.

The programs for A190855, there is no canonical definition to state claims against.
-/

/-! ## A190855.P18428203007258598069

`record[A101279(A190810(n+1))]`
-/

namespace A190855.P18428203007258598069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A190810 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190855.P18428203007258598069

/-! ## A190855.P18073425605061824721

`record[A101279(A190856(n+1))]`
-/

namespace A190855.P18073425605061824721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A190856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190855.P18073425605061824721

/-! ## A190855.P1661889936193809490

`record[A057979(A190810(n+2))]`
-/

namespace A190855.P1661889936193809490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A190810 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190855.P1661889936193809490

/-! ## A190855.P5293754572361588671

`record[A057428(n)+A003602(A190810(n+1))]`
-/

namespace A190855.P5293754572361588671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A003602 (A190810 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190855.P5293754572361588671

/-! ## A190855.P4190656715468270660

`record[A003602(A190810(n+1))-A057427(n)]`
-/

namespace A190855.P4190656715468270660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A190810 (n + 1)).toNat - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190855.P4190656715468270660

/-!
# A190856: Integers in (1+A190810)/3; contains A190810 as a proper subsequence.

The programs for A190856, there is no canonical definition to state claims against.
-/

/-! ## A190856.P14330982551358382664

`lt[A187360(A334031(n+4)), A018851(n)]`
-/

namespace A190856.P14330982551358382664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187360 (A334031 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190856.P14330982551358382664

/-! ## A190856.P16248474434049953262

`lt[A058360(A079216(n+3)), A344570(n+1)]`
-/

namespace A190856.P16248474434049953262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058360 (A079216 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344570 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190856.P16248474434049953262

/-! ## A190856.P6405125836554566284

`lt[A226444(A164368(n+1)), A259273(n)]`
-/

namespace A190856.P6405125836554566284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 (A164368 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259273 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190856.P6405125836554566284

/-! ## A190856.P2026175138536890854

`∑[A183328(A139318(A057508(3*n+2)))]`
-/

namespace A190856.P2026175138536890854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183328 (A139318 (A057508 (3 * n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190856.P2026175138536890854

/-! ## A190856.P18360965621773518380

`lt[A103421(n+1), A007088(A094302(n+1))]`
-/

namespace A190856.P18360965621773518380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A094302 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190856.P18360965621773518380

/-!
# A190857: Integers in (A190811)/3; contains A190811 as a proper subsequence.

The programs for A190857, there is no canonical definition to state claims against.
-/

/-! ## A190857.P557220064612421553

`2*A190850(n+1)-1`
-/

namespace A190857.P557220064612421553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190850 (n + 1) - 1

end

end A190857.P557220064612421553

/-! ## A190857.P16955619788047611756

`A190850(A000027(n+1))+A190850(n+1)-1`
-/

namespace A190857.P16955619788047611756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190850 (A000027 (n + 1)).toNat + (A190850 (n + 1) - 1)

end

end A190857.P16955619788047611756

/-! ## A190857.P2735902762824726205

`A004273(A190850(n+1))`
-/

namespace A190857.P2735902762824726205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A190850 (n + 1)).toNat

end

end A190857.P2735902762824726205

/-! ## A190857.P13110316199504868855

`A005408(A190850(n+1)-1)`
-/

namespace A190857.P13110316199504868855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A190850 (n + 1) - 1).toNat

end

end A190857.P13110316199504868855

/-! ## A190857.P1222313426989043399

`A023443(2*A190850(n+1))`
-/

namespace A190857.P1222313426989043399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A190850 (n + 1)).toNat

end

end A190857.P1222313426989043399

/-! ## A190857.P3826659535900477941

`record[A166711(A007448(n))]`
-/

namespace A190857.P3826659535900477941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166711 (A007448 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190857.P3826659535900477941

/-! ## A190857.P10334185520305961951

`record[A006083(A002977(n+1))]`
-/

namespace A190857.P10334185520305961951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006083 (A002977 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190857.P10334185520305961951

/-! ## A190857.P4577382592538259441

`record[A006083(A190811(n+1))]`
-/

namespace A190857.P4577382592538259441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006083 (A190811 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190857.P4577382592538259441

/-! ## A190857.P16870165561092829208

`A004396(record[A038502(A007448(n))])`
-/

namespace A190857.P16870165561092829208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A007448 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A190857.P16870165561092829208

/-! ## A190857.P8972202300098118386

`A004396(record[A051176(A007448(n))])`
-/

namespace A190857.P8972202300098118386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A007448 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A190857.P8972202300098118386

/-! ## A190857.P136451842255049047

`A004525(record[A058281(A007448(n))])`
-/

namespace A190857.P136451842255049047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 (A007448 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A190857.P136451842255049047

/-! ## A190857.P13001517966871767305

`A008619(record[A058281(A007448(n))])`
-/

namespace A190857.P13001517966871767305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 (A007448 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A190857.P13001517966871767305

/-! ## A190857.P12642243132106576173

`record[A006083(A007448(n+1))]`
-/

namespace A190857.P12642243132106576173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006083 (A007448 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190857.P12642243132106576173

/-! ## A190857.P12592185022084781143

`record[A103627(A276786(n+1))]`
-/

namespace A190857.P12592185022084781143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A276786 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190857.P12592185022084781143

/-! ## A190857.P6710809036196581683

`eq[3*n, A007448(A019426(n))]`
-/

namespace A190857.P6710809036196581683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007448 (A019426 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190857.P6710809036196581683

/-! ## A190857.P2542686179207229799

`record[A117910(A007448(n+1)-2)]`
-/

namespace A190857.P2542686179207229799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A007448 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190857.P2542686179207229799

/-! ## A190857.P6129657528523963310

`record[A103627(A190807(n+2)-1)]`
-/

namespace A190857.P6129657528523963310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A190807 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190857.P6129657528523963310

/-! ## A190857.P2746575136933465779

`record[A103627(A007448(2*n+1))]`
-/

namespace A190857.P2746575136933465779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A007448 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190857.P2746575136933465779

/-! ## A190857.P15907627293049105149

`record[A117910(A002977(n+2)-2)]`
-/

namespace A190857.P15907627293049105149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A002977 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190857.P15907627293049105149

/-!
# A190858: Integers in (-1+A002977)/2; contains A002977 as a proper subsequence.

The programs for A190858, there is no canonical definition to state claims against.
-/

/-! ## A190858.P13484127121276282409

`A190849(n+2)-1`
-/

namespace A190858.P13484127121276282409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190849 (n + 2) - 1

end

end A190858.P13484127121276282409

/-! ## A190858.P14499566995938493670

`A004483(A190849(n+2))`
-/

namespace A190858.P14499566995938493670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A190849 (n + 2)).toNat

end

end A190858.P14499566995938493670

/-! ## A190858.P636982620932218792

`record[A101279(A007448(n))]`
-/

namespace A190858.P636982620932218792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A007448 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190858.P636982620932218792

/-! ## A190858.P17557399921781867051

`record[A057979(A007448(n+1))]`
-/

namespace A190858.P17557399921781867051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A007448 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190858.P17557399921781867051

/-! ## A190858.P8088034598705339433

`record[A101279(A002977(n+1))]`
-/

namespace A190858.P8088034598705339433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A002977 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190858.P8088034598705339433

/-! ## A190858.P3011806320653327055

`record[A101279(A276786(n+1))]`
-/

namespace A190858.P3011806320653327055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A276786 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190858.P3011806320653327055

/-! ## A190858.P848723783270250718

`record[A057979(A002977(n+2))]`
-/

namespace A190858.P848723783270250718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A002977 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190858.P848723783270250718

/-! ## A190858.P4232459406072802652

`eq[A007448(n), A131738(n)]/2`
-/

namespace A190858.P4232459406072802652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007448 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A190858.P4232459406072802652

/-! ## A190858.P8453848329974032627

`record[A142150(A007448(n+1)-1)]`
-/

namespace A190858.P8453848329974032627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A007448 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190858.P8453848329974032627

/-! ## A190858.P5063143988386815134

`record[A001057(A007448(n+1)-2)]`
-/

namespace A190858.P5063143988386815134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A007448 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190858.P5063143988386815134

/-! ## A190858.P16823137819991864148

`record[A003602(A007448(n+1)-2)]`
-/

namespace A190858.P16823137819991864148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A007448 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190858.P16823137819991864148

/-! ## A190858.P1040354935896625887

`record[A032742(A002977(n+2)-1)]`
-/

namespace A190858.P1040354935896625887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A002977 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190858.P1040354935896625887

/-! ## A190858.P466644648796448371

`record[A032742(A276786(n+2)-1)]`
-/

namespace A190858.P466644648796448371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A276786 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190858.P466644648796448371

/-! ## A190858.P486041220632906521

`record[A001057(A002977(n+2)-2)]`
-/

namespace A190858.P486041220632906521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A002977 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190858.P486041220632906521

/-! ## A190858.P16431952735259380656

`record[A003602(A276786(n+2)-2)]`
-/

namespace A190858.P16431952735259380656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A276786 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190858.P16431952735259380656

/-! ## A190858.P9536497562769909476

`record[A101279(n+1)*A132138(n+1)]`
-/

namespace A190858.P9536497562769909476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (n + 1) * A132138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190858.P9536497562769909476

/-! ## A190858.P243480412792348767

`eq[A132126(n+1), A132138(2*n+1)]`
-/

namespace A190858.P243480412792348767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132138 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190858.P243480412792348767

/-! ## A190858.P6312845263507417654

`eq[A043545(2*n), A132138(2*n+1)]`
-/

namespace A190858.P6312845263507417654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132138 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190858.P6312845263507417654

/-! ## A190858.P202801247668954533

`lt[1, A007448(2*n)*A132138(2*n+1)]`
-/

namespace A190858.P202801247668954533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007448 (2 * n) * A132138 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A190858.P202801247668954533

/-! ## A190858.P14290791679287604706

`A004525(eq[A007448(n), A131738(n)])`
-/

namespace A190858.P14290791679287604706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007448 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A190858.P14290791679287604706

/-!
# A190859: Integers in (-1+A002977)/3; contains A002977 as a proper subsequence.

The programs for A190859, there is no canonical definition to state claims against.
-/

/-! ## A190859.P8961248883102683522

`A190850(n+2)-1`
-/

namespace A190859.P8961248883102683522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190850 (n + 2) - 1

end

end A190859.P8961248883102683522

/-! ## A190859.P5018149574450321023

`∑[abs(Δ[A190850(n+1)])]`
-/

namespace A190859.P5018149574450321023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190850 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190859.P5018149574450321023

/-! ## A190859.P11111975630669762605

`(A190857(n+2)-1)/2`
-/

namespace A190859.P11111975630669762605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190857 (n + 2) - 1 : ℚ) / 2

end

end A190859.P11111975630669762605

/-! ## A190859.P15370590761186669183

`∑[Δ[A190857(n+1)]/2]`
-/

namespace A190859.P15370590761186669183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190857 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190859.P15370590761186669183

/-! ## A190859.P17121677378267010744

`∑[A000027(Δ[A190850(n+1)])]`
-/

namespace A190859.P17121677378267010744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190850 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190859.P17121677378267010744

/-! ## A190859.P8582578220574345182

`∑[A260739(Δ[A190857(n+1)])]`
-/

namespace A190859.P8582578220574345182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190857 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190859.P8582578220574345182

/-! ## A190859.P9145114058522303614

`∑[Δ[A190850(n+1)]%A000040(n+1)]`
-/

namespace A190859.P9145114058522303614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190850 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190859.P9145114058522303614

/-! ## A190859.P2956930010760978662

`A014682(A190857(n+2)-1)`
-/

namespace A190859.P2956930010760978662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A190857 (n + 2) - 1).toNat

end

end A190859.P2956930010760978662

/-! ## A190859.P15545133953063476552

`A023443(A190850(n+2))`
-/

namespace A190859.P15545133953063476552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A190850 (n + 2)).toNat

end

end A190859.P15545133953063476552

/-! ## A190859.P1649779609875132360

`A260739(A190857(n+2)-1)`
-/

namespace A190859.P1649779609875132360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A190857 (n + 2) - 1).toNat

end

end A190859.P1649779609875132360

/-! ## A190859.P5282498117343797905

`A004524(A190857(n+2))`
-/

namespace A190859.P5282498117343797905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A190857 (n + 2)).toNat

end

end A190859.P5282498117343797905

/-! ## A190859.P2917246816798328449

`A026741(A190857(n+2)-1)`
-/

namespace A190859.P2917246816798328449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A190857 (n + 2) - 1).toNat

end

end A190859.P2917246816798328449

/-! ## A190859.P14756880128248831892

`A065033(A190857(n+2)-1)`
-/

namespace A190859.P14756880128248831892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A190857 (n + 2) - 1).toNat

end

end A190859.P14756880128248831892

/-! ## A190859.P10437319696903355421

`record[A103627(A190807(n+1))]`
-/

namespace A190859.P10437319696903355421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A190807 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190859.P10437319696903355421

/-! ## A190859.P3653971303076933276

`record[A103627(A007448(n+1)+1)]`
-/

namespace A190859.P3653971303076933276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A007448 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190859.P3653971303076933276

/-! ## A190859.P6981520491668531669

`record[A103627(A276786(n+2)+1)]`
-/

namespace A190859.P6981520491668531669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A276786 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190859.P6981520491668531669

/-!
# A190860: Positions of 1 in A190843; complement of A190847.

The programs for A190860, the canonical program `A190860.P1276307951638633825` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190860 has offset 1).

The definition of A190860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190860.P1276307951638633825

`eq[1, gcd(4, floor(2*e*n))]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190860

/-- `eq[1, gcd(4, floor(2*e*n))]` -/
def P1276307951638633825.Spec : Prop :=
  ∀ n, (P1276307951638633825.a n : ℤ) = A190860 (n + 1)

theorem P1276307951638633825.correct : P1276307951638633825.Spec := by
  intro n
  simp only [A190860, Nat.add_sub_cancel]

end A190860

/-! ## A190860.P5596366741498636746

`filter[n+1, A190843(#)]`
-/

namespace A190860.P5596366741498636746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190843 (f1 j) = 1) n)

end

end A190860.P5596366741498636746

namespace A190860

/-- `filter[n+1, A190843(#)]` -/
def P5596366741498636746.Spec : Prop :=
  ∀ n, (P5596366741498636746.a n : ℤ) = A190860 (n + 1)

end A190860

/-! ## A190860.P2258403705723283540

`eq[1, A024573(n+1)]+1`
-/

namespace A190860.P2258403705723283540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024573 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190860.P2258403705723283540

namespace A190860

/-- `eq[1, A024573(n+1)]+1` -/
def P2258403705723283540.Spec : Prop :=
  ∀ n, (P2258403705723283540.a n : ℤ) = A190860 (n + 1)

end A190860

/-! ## A190860.P9299196974077412256

`eq[2, A020639(A276853(n)+1)]`
-/

namespace A190860.P9299196974077412256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A276853 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190860.P9299196974077412256

namespace A190860

/-- `eq[2, A020639(A276853(n)+1)]` -/
def P9299196974077412256.Spec : Prop :=
  ∀ n, (P9299196974077412256.a n : ℤ) = A190860 (n + 1)

end A190860

/-! ## A190860.P8846557206743487946

`record[A000027(n+1)/A024573(n+1)]`
-/

namespace A190860.P8846557206743487946
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A024573 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190860.P8846557206743487946

namespace A190860

/-- `record[A000027(n+1)/A024573(n+1)]` -/
def P8846557206743487946.Spec : Prop :=
  ∀ n, P8846557206743487946.a n = (A190860 (n + 1) : ℚ)

end A190860

/-! ## A190860.P16799830326784989013

`eq[1, A000035(A195182(n))]`
-/

namespace A190860.P16799830326784989013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A195182 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190860.P16799830326784989013

namespace A190860

/-- `eq[1, A000035(A195182(n))]` -/
def P16799830326784989013.Spec : Prop :=
  ∀ n, (P16799830326784989013.a n : ℤ) = A190860 (n + 1)

end A190860

/-! ## A190860.P415661601410287510

`eq[1, A019426(A195182(n)+1)]`
-/

namespace A190860.P415661601410287510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A195182 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190860.P415661601410287510

namespace A190860

/-- `eq[1, A019426(A195182(n)+1)]` -/
def P415661601410287510.Spec : Prop :=
  ∀ n, (P415661601410287510.a n : ℤ) = A190860 (n + 1)

end A190860

/-! ## A190860.P949254966037228709

`eq[1, A019427(A195182(n)+1)]`
-/

namespace A190860.P949254966037228709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (A195182 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190860.P949254966037228709

namespace A190860

/-- `eq[1, A019427(A195182(n)+1)]` -/
def P949254966037228709.Spec : Prop :=
  ∀ n, (P949254966037228709.a n : ℤ) = A190860 (n + 1)

end A190860

/-! ## A190860.P6400247538581235447

`eq[1, A019428(A195182(n)+1)]`
-/

namespace A190860.P6400247538581235447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A195182 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190860.P6400247538581235447

namespace A190860

/-- `eq[1, A019428(A195182(n)+1)]` -/
def P6400247538581235447.Spec : Prop :=
  ∀ n, (P6400247538581235447.a n : ℤ) = A190860 (n + 1)

end A190860

/-! ## A190860.P1958549259501030970

`eq[1, A019431(A195182(n)+1)]`
-/

namespace A190860.P1958549259501030970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 (A195182 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190860.P1958549259501030970

namespace A190860

/-- `eq[1, A019431(A195182(n)+1)]` -/
def P1958549259501030970.Spec : Prop :=
  ∀ n, (P1958549259501030970.a n : ℤ) = A190860 (n + 1)

end A190860

/-! ## A190860.P17879322470765917626

`lt[1, A019425(A195182(n)+2)]`
-/

namespace A190860.P17879322470765917626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A195182 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A190860.P17879322470765917626

namespace A190860

/-- `lt[1, A019425(A195182(n)+2)]` -/
def P17879322470765917626.Spec : Prop :=
  ∀ n, (P17879322470765917626.a n : ℤ) = A190860 (n + 1)

end A190860

/-! ## A190860.P11138679938611191131

`eq[A000038(n), A135481(A195182(n)+1)]`
-/

namespace A190860.P11138679938611191131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A195182 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190860.P11138679938611191131

namespace A190860

/-- `eq[A000038(n), A135481(A195182(n)+1)]` -/
def P11138679938611191131.Spec : Prop :=
  ∀ n, (P11138679938611191131.a n : ℤ) = A190860 (n + 1)

end A190860

/-! ## A190860.P13744626269923371864

`eq[2, A020639(A022843(2*n)+1)]`
-/

namespace A190860.P13744626269923371864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A022843 (2 * n) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190860.P13744626269923371864

namespace A190860

/-- `eq[2, A020639(A022843(2*n)+1)]` -/
def P13744626269923371864.Spec : Prop :=
  ∀ n, (P13744626269923371864.a n : ℤ) = A190860 (n + 1)

end A190860

/-! ## A190860.P11982302184479083093

`eq[1, A019426(A276853(n)+1)]`
-/

namespace A190860.P11982302184479083093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A276853 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190860.P11982302184479083093

namespace A190860

/-- `eq[1, A019426(A276853(n)+1)]` -/
def P11982302184479083093.Spec : Prop :=
  ∀ n, (P11982302184479083093.a n : ℤ) = A190860 (n + 1)

end A190860

/-! ## A190860.P10844234888067586052

`record[A008621(4*n)/A024573(n+1)]`
-/

namespace A190860.P10844234888067586052
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008621 (4 * n) : ℚ) / (A024573 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190860.P10844234888067586052

namespace A190860

/-- `record[A008621(4*n)/A024573(n+1)]` -/
def P10844234888067586052.Spec : Prop :=
  ∀ n, P10844234888067586052.a n = (A190860 (n + 1) : ℚ)

end A190860

/-! ## A190860.P12291378788729563763

`eq[2, A000034(A276853(n))]`
-/

namespace A190860.P12291378788729563763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A276853 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190860.P12291378788729563763

namespace A190860

/-- `eq[2, A000034(A276853(n))]` -/
def P12291378788729563763.Spec : Prop :=
  ∀ n, (P12291378788729563763.a n : ℤ) = A190860 (n + 1)

end A190860

/-! ## A190860.P11796131899179281215

`eq[1, A009531(A195182(n)²)]`
-/

namespace A190860.P11796131899179281215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A195182 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190860.P11796131899179281215

namespace A190860

/-- `eq[1, A009531(A195182(n)²)]` -/
def P11796131899179281215.Spec : Prop :=
  ∀ n, (P11796131899179281215.a n : ℤ) = A190860 (n + 1)

end A190860

/-!
# A190861: G.f. satisfies A(x) = Product_{n>=1} (1 + x^n*A(x))/(1-x^n).

The programs for A190861, there is no canonical definition to state claims against.
-/

/-! ## A190861.P14902773095045419565

`A070824(A208653(n+1))+A066158(n+1)`
-/

namespace A190861.P14902773095045419565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A208653 (n + 1)).toNat + A066158 (n + 1)

end

end A190861.P14902773095045419565

/-! ## A190861.P9082374165621434564

`A389596(A067324(n))`
-/

namespace A190861.P9082374165621434564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389596 (A067324 n).toNat

end

end A190861.P9082374165621434564

/-! ## A190861.P1480382373695533539

`A076436(A156043(n+1))`
-/

namespace A190861.P1480382373695533539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076436 (A156043 (n + 1)).toNat

end

end A190861.P1480382373695533539

/-!
# A190862: G.f. satisfies: A(x) = Product_{n>=1} (1 + x^n*A(x))/(1 - x^n*A(x)).

The programs for A190862, there is no canonical definition to state claims against.
-/

/-! ## A190862.P11697757420631389096

`A007226(n)-A214701(A054872(n))`
-/

namespace A190862.P11697757420631389096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 n - A214701 (A054872 n).toNat

end

end A190862.P11697757420631389096

/-! ## A190862.P11283038860167101160

`A054899(8*2*C(3*n, n)/(n+1))`
-/

namespace A190862.P11283038860167101160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (SequenceMachineLib.roundAway (8 * (2 * ((Nat.choose (3 * n) n : ℚ) / (n + 1 : ℚ))))).toNat

end

end A190862.P11283038860167101160

/-!
# A190864: Expansion of 1/(1-x*sqrt(1+4*x^2)).

The programs for A190864, there is no canonical definition to state claims against.
-/

/-! ## A190864.P9421428834675407518

`A160124(n)+A051119(A337693(n))`
-/

namespace A190864.P9421428834675407518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160124 n + A051119 (A337693 n).toNat

end

end A190864.P9421428834675407518

/-!
# A190865: E.g.f. exp(x+x^3/6).

The programs for A190865, there is no canonical definition to state claims against.
-/

/-! ## A190865.P1303409112240107515

`A362043(∑[n+2]-1)`
-/

namespace A190865.P1303409112240107515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362043 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A190865.P1303409112240107515

/-! ## A190865.P11867309334867608728

`A362043(A034856(n+1))+A165656(A107286(n))`
-/

namespace A190865.P11867309334867608728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362043 (A034856 (n + 1)).toNat + A165656 (A107286 n).toNat

end

end A190865.P11867309334867608728

/-! ## A190865.P2602044049421172586

`A362043(A034856(n+1))+A165656(A125184(n))`
-/

namespace A190865.P2602044049421172586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362043 (A034856 (n + 1)).toNat + A165656 (A125184 n).toNat

end

end A190865.P2602044049421172586

/-! ## A190865.P11242011788275846432

`A275422(∑[n+4]+2)`
-/

namespace A190865.P11242011788275846432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A190865.P11242011788275846432

/-! ## A190865.P9085132148347475680

`A362043(A034856(n+1))%A103436(n)`
-/

namespace A190865.P9085132148347475680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362043 (A034856 (n + 1)).toNat) (A103436 n)

end

end A190865.P9085132148347475680

/-!
# A190866: Let E(n) be the average number of steps required for the addition of two binary numbers of length n; sequence gives a(n) = 2^(2n-1)*E(n).

The programs for A190866, there is no canonical definition to state claims against.
-/

/-! ## A190866.P7643088603974584502

`A258833(A000108(n)*A045944(n))`
-/

namespace A190866.P7643088603974584502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258833 (A000108 n * A045944 n).toNat

end

end A190866.P7643088603974584502

/-!
# A190867: Count of the 3-full divisors of n.

The programs for A190867, the canonical program `A190867.P1110231429264261340` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190867 has offset 1).

The definition of A190867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190867.P1110231429264261340

`∏{e}[(n+1)/∏{p}[n+1, #], #]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190867

/-- `∏{e}[(n+1)/∏{p}[n+1, #], #]` -/
def P1110231429264261340.Spec : Prop :=
  ∀ n, (P1110231429264261340.a n : ℤ) = A190867 (n + 1)

theorem P1110231429264261340.correct : P1110231429264261340.Spec := by
  intro n
  simp only [A190867, Nat.add_sub_cancel]

end A190867

/-! ## A190867.P3776783244170378608

`∏{e}[n+1, floor(#^(n/(n+1)))]`
-/

namespace A190867.P3776783244170378608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊(Nat.factorization (f1 n) p : ℝ) ^ ((n : ℚ) / (n + 1 : ℚ) : ℝ)⌋

end

end A190867.P3776783244170378608

namespace A190867

/-- `∏{e}[n+1, floor(#^(n/(n+1)))]` -/
def P3776783244170378608.Spec : Prop :=
  ∀ n, P3776783244170378608.a n = A190867 (n + 1)

end A190867

/-! ## A190867.P12210511534124087288

`A005361(A003557(n+1))`
-/

namespace A190867.P12210511534124087288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A003557 (n + 1)).toNat

end

end A190867.P12210511534124087288

namespace A190867

/-- `A005361(A003557(n+1))` -/
def P12210511534124087288.Spec : Prop :=
  ∀ n, P12210511534124087288.a n = A190867 (n + 1)

end A190867

/-! ## A190867.P6965792598684426054

`A000005(A062378(n+1))`
-/

namespace A190867.P6965792598684426054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A062378 (n + 1)).toNat

end

end A190867.P6965792598684426054

namespace A190867

/-- `A000005(A062378(n+1))` -/
def P6965792598684426054.Spec : Prop :=
  ∀ n, P6965792598684426054.a n = A190867 (n + 1)

end A190867

/-! ## A190867.P4173692265068008026

`A003963(A295879(n+1))`
-/

namespace A190867.P4173692265068008026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A295879 (n + 1)).toNat

end

end A190867.P4173692265068008026

namespace A190867

/-- `A003963(A295879(n+1))` -/
def P4173692265068008026.Spec : Prop :=
  ∀ n, P4173692265068008026.a n = A190867 (n + 1)

end A190867

/-! ## A190867.P17436576278873435336

`A005361(A336551(n+1)+1)`
-/

namespace A190867.P17436576278873435336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A336551 (n + 1) + 1).toNat

end

end A190867.P17436576278873435336

namespace A190867

/-- `A005361(A336551(n+1)+1)` -/
def P17436576278873435336.Spec : Prop :=
  ∀ n, P17436576278873435336.a n = A190867 (n + 1)

end A190867

/-! ## A190867.P14599465128669990025

`A005361(n+1-A010848(n+1))`
-/

namespace A190867.P14599465128669990025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 ((n + 1 : ℤ) - A010848 (n + 1)).toNat

end

end A190867.P14599465128669990025

namespace A190867

/-- `A005361(n+1-A010848(n+1))` -/
def P14599465128669990025.Spec : Prop :=
  ∀ n, P14599465128669990025.a n = A190867 (n + 1)

end A190867

/-! ## A190867.P5980843856526140726

`A000005((n+1)/A007948(n+1))`
-/

namespace A190867.P5980843856526140726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007948 (n + 1) : ℚ))).toNat

end

end A190867.P5980843856526140726

namespace A190867

/-- `A000005((n+1)/A007948(n+1))` -/
def P5980843856526140726.Spec : Prop :=
  ∀ n, P5980843856526140726.a n = A190867 (n + 1)

end A190867

/-! ## A190867.P10638068187280428500

`A005361((n+1)/A007947(n+1))`
-/

namespace A190867.P10638068187280428500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A190867.P10638068187280428500

namespace A190867

/-- `A005361((n+1)/A007947(n+1))` -/
def P10638068187280428500.Spec : Prop :=
  ∀ n, P10638068187280428500.a n = A190867 (n + 1)

end A190867

/-! ## A190867.P6463277766977104002

`A005361(gcd(n+1, A069359(n+1)))`
-/

namespace A190867.P6463277766977104002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (Int.gcd (n + 1 : ℤ) (A069359 (n + 1)))

end

end A190867.P6463277766977104002

namespace A190867

/-- `A005361(gcd(n+1, A069359(n+1)))` -/
def P6463277766977104002.Spec : Prop :=
  ∀ n, P6463277766977104002.a n = A190867 (n + 1)

end A190867

/-! ## A190867.P13457480943267069792

`∑{d}[n+1, A008966(#)*A365550((n+1)/#)]`
-/

namespace A190867.P13457480943267069792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A365550 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A190867.P13457480943267069792

namespace A190867

/-- `∑{d}[n+1, A008966(#)*A365550((n+1)/#)]` -/
def P13457480943267069792.Spec : Prop :=
  ∀ n, P13457480943267069792.a n = A190867 (n + 1)

end A190867

/-! ## A190867.P10232422676452678523

`∑{d}[n+1, A023900(#)*A385136((n+1)/#)]`
-/

namespace A190867.P10232422676452678523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A385136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A190867.P10232422676452678523

namespace A190867

/-- `∑{d}[n+1, A023900(#)*A385136((n+1)/#)]` -/
def P10232422676452678523.Spec : Prop :=
  ∀ n, P10232422676452678523.a n = A190867 (n + 1)

end A190867

/-! ## A190867.P11232645109772579718

`∑{d}[n+1, A130054(#)*A384040((n+1)/#)]`
-/

namespace A190867.P11232645109772579718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A384040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A190867.P11232645109772579718

namespace A190867

/-- `∑{d}[n+1, A130054(#)*A384040((n+1)/#)]` -/
def P11232645109772579718.Spec : Prop :=
  ∀ n, P11232645109772579718.a n = A190867 (n + 1)

end A190867

/-! ## A190867.P3067102578949414060

`A005361(gcd(∑{p}[n+1, (n+1)/#], A085731(n+1)))`
-/

namespace A190867.P3067102578949414060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (Int.gcd (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) (A085731 (n + 1)))

end

end A190867.P3067102578949414060

namespace A190867

/-- `A005361(gcd(∑{p}[n+1, (n+1)/#], A085731(n+1)))` -/
def P3067102578949414060.Spec : Prop :=
  ∀ n, P3067102578949414060.a n = A190867 (n + 1)

end A190867

/-! ## A190867.P10668601462758962741

`A005361(A203639(n+1)/A005361(n+1))`
-/

namespace A190867.P10668601462758962741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (SequenceMachineLib.roundAway ((A203639 (n + 1) : ℚ) / (A005361 (n + 1) : ℚ))).toNat

end

end A190867.P10668601462758962741

namespace A190867

/-- `A005361(A203639(n+1)/A005361(n+1))` -/
def P10668601462758962741.Spec : Prop :=
  ∀ n, P10668601462758962741.a n = A190867 (n + 1)

end A190867

/-! ## A190867.P9942315362848834204

`A005361(abs((A039649(n+1)-1)/A023900(n+1)))`
-/

namespace A190867.P9942315362848834204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (SequenceMachineLib.roundAway |(A039649 (n + 1) - 1 : ℚ) / (A023900 (n + 1) : ℚ)|).toNat

end

end A190867.P9942315362848834204

namespace A190867

/-- `A005361(abs((A039649(n+1)-1)/A023900(n+1)))` -/
def P9942315362848834204.Spec : Prop :=
  ∀ n, P9942315362848834204.a n = A190867 (n + 1)

end A190867

/-! ## A190867.P1169944624201634819

`A325837(A003557(n+1)²)`
-/

namespace A190867.P1169944624201634819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (A003557 (n + 1) ^ 2).toNat

end

end A190867.P1169944624201634819

namespace A190867

/-- `A325837(A003557(n+1)²)` -/
def P1169944624201634819.Spec : Prop :=
  ∀ n, P1169944624201634819.a n = A190867 (n + 1)

end A190867

/-! ## A190867.P5344406928249700683

`A325837(A295658((n+1)²)²)`
-/

namespace A190867.P5344406928249700683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (A295658 ((n + 1) ^ 2) ^ 2).toNat

end

end A190867.P5344406928249700683

namespace A190867

/-- `A325837(A295658((n+1)²)²)` -/
def P5344406928249700683.Spec : Prop :=
  ∀ n, P5344406928249700683.a n = A190867 (n + 1)

end A190867

/-! ## A190867.P13183467798382991140

`A365333(A295657((n+1)²)²)`
-/

namespace A190867.P13183467798382991140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365333 (A295657 ((n + 1) ^ 2) ^ 2).toNat

end

end A190867.P13183467798382991140

namespace A190867

/-- `A365333(A295657((n+1)²)²)` -/
def P13183467798382991140.Spec : Prop :=
  ∀ n, P13183467798382991140.a n = A190867 (n + 1)

end A190867

/-! ## A190867.P8081700439483536749

`A365333(A295658((n+1)²)²)`
-/

namespace A190867.P8081700439483536749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365333 (A295658 ((n + 1) ^ 2) ^ 2).toNat

end

end A190867.P8081700439483536749

namespace A190867

/-- `A365333(A295658((n+1)²)²)` -/
def P8081700439483536749.Spec : Prop :=
  ∀ n, P8081700439483536749.a n = A190867 (n + 1)

end A190867

/-!
# A190868: Let C(n) be the expected length of the longest carry chain when two n-bit binary numbers are added; sequence gives a(n) = 2^(2n-1)*C(n).

The programs for A190868, there is no canonical definition to state claims against.
-/

/-! ## A190868.P6215807581905303003

`2*(A192054(n+1)-2^n)`
-/

namespace A190868.P6215807581905303003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A192054 (n + 1) - (2 ^ n : ℤ))

end

end A190868.P6215807581905303003

/-! ## A190868.P2218052006521426993

`2*A192054(n+1)-A000079(n+1)`
-/

namespace A190868.P2218052006521426993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192054 (n + 1) - A000079 (n + 1)

end

end A190868.P2218052006521426993

/-! ## A190868.P6900915610298260366

`record[A190866(A065033(n))-A000079(n)]`
-/

namespace A190868.P6900915610298260366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190866 (A065033 n).toNat - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190868.P6900915610298260366

/-!
# A190869: a(n) = 10*a(n-1) - 2*a(n-2), a(0)=0, a(1)=1.

The programs for A190869, the canonical program `A190869.P1354106835563388815` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190869 has offset 0).

The definition of A190869 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-2*a(n-2)` (program `A190869.P1354106835563388815`, by `A190869.P1354106835563388815.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190869.P1354106835563388815

`10*a(n-1)-2*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190869

/-- `10*a(n-1)-2*a(n-2)` -/
def P1354106835563388815.Spec : Prop :=
  ∀ n, P1354106835563388815.a n = A190869 n

theorem P1354106835563388815.correct : P1354106835563388815.Spec := by
  intro n
  simp only [A190869]

end A190869

/-! ## A190869.P18152531893271222460

`((5+sqrt(23))^n-(5-sqrt(23))^n)/(2*sqrt(23))`
-/

namespace A190869.P18152531893271222460
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (23 : ℝ)) ^ n - (5 - Real.sqrt (23 : ℝ)) ^ n) / (2 * Real.sqrt (23 : ℝ))

end

end A190869.P18152531893271222460

namespace A190869

/-- `((5+sqrt(23))^n-(5-sqrt(23))^n)/(2*sqrt(23))` -/
def P18152531893271222460.Spec : Prop :=
  ∀ n, P18152531893271222460.a n = (A190869 n : ℝ)

end A190869

/-! ## A190869.P6963463209799560208

`ogf(x/(1-10x+2x^2))`
-/

namespace A190869.P6963463209799560208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -10, 2] n

end

end A190869.P6963463209799560208

namespace A190869

/-- `ogf(x/(1-10x+2x^2))` -/
def P6963463209799560208.Spec : Prop :=
  ∀ n, P6963463209799560208.a n = A190869 n

end A190869

/-! ## A190869.P9533708939916430070

`floor((a(n-1)²-2)/a(n-2))` with `a(0)=0, a(1)=1, a(2)=10`
-/

namespace A190869.P9533708939916430070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 10] fun n a =>
  ⌊(a (n - 1) ^ 2 - 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A190869.P9533708939916430070

namespace A190869

/-- `floor((a(n-1)²-2)/a(n-2))` -/
def P9533708939916430070.Spec : Prop :=
  ∀ n, P9533708939916430070.a n = A190869 n

end A190869

/-!
# A190870: a(n) = 11*a(n-1) - 22*a(n-2), a(0)=0, a(1)=1.

The programs for A190870, the canonical program `A190870.P3916095032740430261` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190870 has offset 0).

The definition of A190870 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*a(n-1)-22*a(n-2)` (program `A190870.P3916095032740430261`, by `A190870.P3916095032740430261.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190870.P3916095032740430261

`11*a(n-1)-22*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190870

/-- `11*a(n-1)-22*a(n-2)` -/
def P3916095032740430261.Spec : Prop :=
  ∀ n, P3916095032740430261.a n = A190870 n

theorem P3916095032740430261.correct : P3916095032740430261.Spec := by
  intro n
  simp only [A190870]

end A190870

/-! ## A190870.P10753093902380450938

`((11+sqrt(33))^n-(11-sqrt(33))^n)/(2^n*sqrt(33))`
-/

namespace A190870.P10753093902380450938
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((11 + Real.sqrt (33 : ℝ)) ^ n - (11 - Real.sqrt (33 : ℝ)) ^ n) / ((2 ^ n : ℝ) * Real.sqrt (33 : ℝ))

end

end A190870.P10753093902380450938

namespace A190870

/-- `((11+sqrt(33))^n-(11-sqrt(33))^n)/(2^n*sqrt(33))` -/
def P10753093902380450938.Spec : Prop :=
  ∀ n, P10753093902380450938.a n = (A190870 n : ℝ)

end A190870

/-! ## A190870.P3418528808117986110

`ogf(x/(1-11x+22x^2))`
-/

namespace A190870.P3418528808117986110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -11, 22] n

end

end A190870.P3418528808117986110

namespace A190870

/-- `ogf(x/(1-11x+22x^2))` -/
def P3418528808117986110.Spec : Prop :=
  ∀ n, P3418528808117986110.a n = A190870 n

end A190870

/-! ## A190870.P342402975828128644

`11*(a(n-1)-A005843(a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A190870.P342402975828128644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  11 * (a (n - 1) - A005843 (a (n - 2)).toNat)

end

end A190870.P342402975828128644

namespace A190870

/-- `11*(a(n-1)-A005843(a(n-2)))` -/
def P342402975828128644.Spec : Prop :=
  ∀ n, P342402975828128644.a n = A190870 n

end A190870

/-!
# A190871: a(n) = 11*a(n-1) - 11*a(n-2), a(0)=0, a(1)=1.

The programs for A190871, the canonical program `A190871.P6197633484888081439` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190871 has offset 0).

The definition of A190871 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*a(n-1)-11*a(n-2)` (program `A190871.P6197633484888081439`, by `A190871.P6197633484888081439.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190871.P6197633484888081439

`11*a(n-1)-11*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190871

/-- `11*a(n-1)-11*a(n-2)` -/
def P6197633484888081439.Spec : Prop :=
  ∀ n, P6197633484888081439.a n = A190871 n

theorem P6197633484888081439.correct : P6197633484888081439.Spec := by
  intro n
  simp only [A190871]

end A190871

/-! ## A190871.P6566239054992381304

`((11+sqrt(77))^n-(11-sqrt(77))^n)/(2^n*sqrt(77))`
-/

namespace A190871.P6566239054992381304
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((11 + Real.sqrt (77 : ℝ)) ^ n - (11 - Real.sqrt (77 : ℝ)) ^ n) / ((2 ^ n : ℝ) * Real.sqrt (77 : ℝ))

end

end A190871.P6566239054992381304

namespace A190871

/-- `((11+sqrt(77))^n-(11-sqrt(77))^n)/(2^n*sqrt(77))` -/
def P6566239054992381304.Spec : Prop :=
  ∀ n, P6566239054992381304.a n = (A190871 n : ℝ)

end A190871

/-! ## A190871.P5356201622410858742

`ogf(x/(1-11x+11x^2))`
-/

namespace A190871.P5356201622410858742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -11, 11] n

end

end A190871.P5356201622410858742

namespace A190871

/-- `ogf(x/(1-11x+11x^2))` -/
def P5356201622410858742.Spec : Prop :=
  ∀ n, P5356201622410858742.a n = A190871 n

end A190871

/-! ## A190871.P4176215750465856876

`11*(a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A190871.P4176215750465856876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  11 * (a (n - 1) - a (n - 2))

end

end A190871.P4176215750465856876

namespace A190871

/-- `11*(a(n-1)-a(n-2))` -/
def P4176215750465856876.Spec : Prop :=
  ∀ n, P4176215750465856876.a n = A190871 n

theorem P4176215750465856876.correct : P4176215750465856876.Spec := by
  intro n
  simp only [A190871, Nat.add_sub_cancel, A190871.P4176215750465856876.a, A190871.P6197633484888081439.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A190871

/-! ## A190871.P15184052183582139962

`A342129(A056000(n+7)-2)`
-/

namespace A190871.P15184052183582139962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342129 (A056000 (n + 7) - 2).toNat

end

end A190871.P15184052183582139962

namespace A190871

/-- `A342129(A056000(n+7)-2)` -/
def P15184052183582139962.Spec : Prop :=
  ∀ n, P15184052183582139962.a n = A190871 n

end A190871

/-! ## A190871.P228942866287516113

`A342129(A000217(n+10)+n-1)`
-/

namespace A190871.P228942866287516113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342129 (A000217 (n + 10) + (n : ℤ) - 1).toNat

end

end A190871.P228942866287516113

namespace A190871

/-- `A342129(A000217(n+10)+n-1)` -/
def P228942866287516113.Spec : Prop :=
  ∀ n, P228942866287516113.a n = A190871 n

end A190871

/-! ## A190871.P17043436568899599491

`A342129(A027379(n+8)-A001489(n+2))`
-/

namespace A190871.P17043436568899599491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342129 (A027379 (n + 8) - A001489 (n + 2)).toNat

end

end A190871.P17043436568899599491

namespace A190871

/-- `A342129(A027379(n+8)-A001489(n+2))` -/
def P17043436568899599491.Spec : Prop :=
  ∀ n, P17043436568899599491.a n = A190871 n

end A190871

/-!
# A190872: a(n) = 11*a(n-1) - 9*a(n-2), a(0)=0, a(1)=1.

The programs for A190872, the canonical program `A190872.P9077765719495883082` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190872 has offset 0).

The definition of A190872 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*a(n-1)-9*a(n-2)` (program `A190872.P9077765719495883082`, by `A190872.P9077765719495883082.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190872.P9077765719495883082

`11*a(n-1)-9*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190872

/-- `11*a(n-1)-9*a(n-2)` -/
def P9077765719495883082.Spec : Prop :=
  ∀ n, P9077765719495883082.a n = A190872 n

theorem P9077765719495883082.correct : P9077765719495883082.Spec := by
  intro n
  simp only [A190872]

end A190872

/-! ## A190872.P14627737939999681809

`((11+sqrt(85))^n-(11-sqrt(85))^n)/(2^n*sqrt(85))`
-/

namespace A190872.P14627737939999681809
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((11 + Real.sqrt (85 : ℝ)) ^ n - (11 - Real.sqrt (85 : ℝ)) ^ n) / ((2 ^ n : ℝ) * Real.sqrt (85 : ℝ))

end

end A190872.P14627737939999681809

namespace A190872

/-- `((11+sqrt(85))^n-(11-sqrt(85))^n)/(2^n*sqrt(85))` -/
def P14627737939999681809.Spec : Prop :=
  ∀ n, P14627737939999681809.a n = (A190872 n : ℝ)

end A190872

/-! ## A190872.P13350040465036502156

`ogf(x/(1-11x+9x^2))`
-/

namespace A190872.P13350040465036502156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -11, 9] n

end

end A190872.P13350040465036502156

namespace A190872

/-- `ogf(x/(1-11x+9x^2))` -/
def P13350040465036502156.Spec : Prop :=
  ∀ n, P13350040465036502156.a n = A190872 n

end A190872

/-! ## A190872.P2951095803223907513

`A333344(n)-A147841(n)`
-/

namespace A190872.P2951095803223907513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333344 n - A147841 n

end

end A190872.P2951095803223907513

namespace A190872

/-- `A333344(n)-A147841(n)` -/
def P2951095803223907513.Spec : Prop :=
  ∀ n, P2951095803223907513.a n = A190872 n

end A190872

/-! ## A190872.P2141335037167477085

`A333344(n)-∑[A333347(7*n)]`
-/

namespace A190872.P2141335037167477085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333347 (7 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333344 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190872.P2141335037167477085

namespace A190872

/-- `A333344(n)-∑[A333347(7*n)]` -/
def P2141335037167477085.Spec : Prop :=
  ∀ n, P2141335037167477085.a n = A190872 n

end A190872

/-! ## A190872.P7763856307802957399

`A333344(A028310(n))%A147841(n)`
-/

namespace A190872.P7763856307802957399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333344 (A028310 n).toNat) (A147841 n)

end

end A190872.P7763856307802957399

namespace A190872

/-- `A333344(A028310(n))%A147841(n)` -/
def P7763856307802957399.Spec : Prop :=
  ∀ n, P7763856307802957399.a n = A190872 n

end A190872

/-! ## A190872.P10664934310071612815

`A333344(n+1)%A333344(n)`
-/

namespace A190872.P10664934310071612815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333344 (n + 1)) (A333344 n)

end

end A190872.P10664934310071612815

namespace A190872

/-- `A333344(n+1)%A333344(n)` -/
def P10664934310071612815.Spec : Prop :=
  ∀ n, P10664934310071612815.a n = A190872 n

end A190872

/-! ## A190872.P3058399370534273199

`A147841(n+1)/9-A147841(n)`
-/

namespace A190872.P3058399370534273199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147841 (n + 1) : ℚ) / 9 - (A147841 n : ℚ)

end

end A190872.P3058399370534273199

namespace A190872

/-- `A147841(n+1)/9-A147841(n)` -/
def P3058399370534273199.Spec : Prop :=
  ∀ n, P3058399370534273199.a n = (A190872 n : ℚ)

end A190872

/-!
# A190873: a(n) = 12*a(n-1) - 12*a(n-2), a(0)=0, a(1)=1.

The programs for A190873, the canonical program `A190873.P7416030511530384432` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190873 has offset 0).

The definition of A190873 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)-12*a(n-2)` (program `A190873.P7416030511530384432`, by `A190873.P7416030511530384432.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190873.P7416030511530384432

`12*a(n-1)-12*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190873

/-- `12*a(n-1)-12*a(n-2)` -/
def P7416030511530384432.Spec : Prop :=
  ∀ n, P7416030511530384432.a n = A190873 n

theorem P7416030511530384432.correct : P7416030511530384432.Spec := by
  intro n
  simp only [A190873]

end A190873

/-! ## A190873.P5731304643033427398

`2^(n-2)*((3+sqrt(6))^n-(3-sqrt(6))^n)/sqrt(6)`
-/

namespace A190873.P5731304643033427398
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) : ℝ) * ((3 + Real.sqrt (6 : ℝ)) ^ n - (3 - Real.sqrt (6 : ℝ)) ^ n) / Real.sqrt (6 : ℝ)

end

end A190873.P5731304643033427398

namespace A190873

/-- `2^(n-2)*((3+sqrt(6))^n-(3-sqrt(6))^n)/sqrt(6)` -/
def P5731304643033427398.Spec : Prop :=
  ∀ n, P5731304643033427398.a n = (A190873 n : ℝ)

end A190873

/-! ## A190873.P11036851179103879647

`ogf(x/(1-12x+12x^2))`
-/

namespace A190873.P11036851179103879647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -12, 12] n

end

end A190873.P11036851179103879647

namespace A190873

/-- `ogf(x/(1-12x+12x^2))` -/
def P11036851179103879647.Spec : Prop :=
  ∀ n, P11036851179103879647.a n = A190873 n

end A190873

/-! ## A190873.P5895331554634523428

`12*(a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A190873.P5895331554634523428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  12 * (a (n - 1) - a (n - 2))

end

end A190873.P5895331554634523428

namespace A190873

/-- `12*(a(n-1)-a(n-2))` -/
def P5895331554634523428.Spec : Prop :=
  ∀ n, P5895331554634523428.a n = A190873 n

theorem P5895331554634523428.correct : P5895331554634523428.Spec := by
  intro n
  simp only [A190873, Nat.add_sub_cancel, A190873.P5895331554634523428.a, A190873.P7416030511530384432.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A190873

/-! ## A190873.P12738162215237806510

`record[A342129(A155212(n)+n)]`
-/

namespace A190873.P12738162215237806510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342129 (A155212 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190873.P12738162215237806510

namespace A190873

/-- `record[A342129(A155212(n)+n)]` -/
def P12738162215237806510.Spec : Prop :=
  ∀ n, P12738162215237806510.a n = A190873 n

end A190873

/-! ## A190873.P15966020135790831147

`A342129(A167499(n+9)+2*n+5)`
-/

namespace A190873.P15966020135790831147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342129 (A167499 (n + 9) + (2 * n + 5 : ℤ)).toNat

end

end A190873.P15966020135790831147

namespace A190873

/-- `A342129(A167499(n+9)+2*n+5)` -/
def P15966020135790831147.Spec : Prop :=
  ∀ n, P15966020135790831147.a n = A190873 n

end A190873

/-! ## A190873.P15680652454906247903

`A342129(2*n+A055999(n+7)+16)`
-/

namespace A190873.P15680652454906247903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342129 ((2 * n : ℤ) + (A055999 (n + 7) + 16)).toNat

end

end A190873.P15680652454906247903

namespace A190873

/-- `A342129(2*n+A055999(n+7)+16)` -/
def P15680652454906247903.Spec : Prop :=
  ∀ n, P15680652454906247903.a n = A190873 n

end A190873

/-!
# A190874: First differences of A179196, pi(R_(n+1)) - pi(R_n) where R_n is A104272(n).

The programs for A190874, there is no canonical definition to state claims against.
-/

/-! ## A190874.P11931734285674232052

`A179196(n+2)-A179196(n+1)`
-/

namespace A190874.P11931734285674232052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179196 (n + 2) - A179196 (n + 1)

end

end A190874.P11931734285674232052

/-! ## A190874.P6552485534470252986

`A000720(A104272(n+2))-A000720(A104272(n+1))`
-/

namespace A190874.P6552485534470252986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A104272 (n + 2)).toNat - A000720 (A104272 (n + 1)).toNat

end

end A190874.P6552485534470252986

/-! ## A190874.P16884481222534666494

`A236452(n+1)+1`
-/

namespace A190874.P16884481222534666494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236452 (n + 1) + 1

end

end A190874.P16884481222534666494

/-! ## A190874.P9937123636730887024

`Δ[A179196(n+1)]`
-/

namespace A190874.P9937123636730887024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190874.P9937123636730887024

/-! ## A190874.P11277682031599033471

`Δ[A000720(A084139(n))]+1`
-/

namespace A190874.P11277682031599033471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A084139 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A190874.P11277682031599033471

/-! ## A190874.P1829961579017716879

`Δ[A000720(A168421(n+1))]+1`
-/

namespace A190874.P1829961579017716879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A168421 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A190874.P1829961579017716879

/-! ## A190874.P5118838385618784729

`Δ[A000720(A104272(n+1))]`
-/

namespace A190874.P5118838385618784729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A104272 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190874.P5118838385618784729

/-! ## A190874.P14416285659143854457

`Δ[A000720(A168425(n+1))]`
-/

namespace A190874.P14416285659143854457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A168425 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190874.P14416285659143854457

/-! ## A190874.P8963615048333550418

`Δ[A000720(A193507(n+2))]`
-/

namespace A190874.P8963615048333550418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A193507 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190874.P8963615048333550418

/-!
# A190875: E.g.f. exp(x+x^4).

The programs for A190875, the canonical program `A190875.P13857975071787795014` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190875 has offset 0).

The definition of A190875 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190875.P13857975071787795014

`a(n-1)+4*(n-3)*(n-2)*(n-1)*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190875

/-- `a(n-1)+4*(n-3)*(n-2)*(n-1)*a(n-4)` -/
def P13857975071787795014.Spec : Prop :=
  ∀ n, P13857975071787795014.a n = A190875 n

theorem P13857975071787795014.correct : P13857975071787795014.Spec := by
  intro n
  simp only [A190875]

end A190875

/-! ## A190875.P17583588587092900369

`A351905(n)+A005843(A052762(n))`
-/

namespace A190875.P17583588587092900369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351905 n + A005843 (A052762 n).toNat

end

end A190875.P17583588587092900369

namespace A190875

/-- `A351905(n)+A005843(A052762(n))` -/
def P17583588587092900369.Spec : Prop :=
  ∀ n, P17583588587092900369.a n = A190875 n

end A190875

/-! ## A190875.P8961839201758045438

`A293493(A051022(n))-(n-6)*(n-5)*(n-4)*(n-3)*(n-2)*(n²-n)`
-/

namespace A190875.P8961839201758045438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293493 (A051022 n).toNat - ((n : ℤ) - 6) * (((n : ℤ) - 5) * (((n : ℤ) - 4) * (((n : ℤ) - 3) * (((n : ℤ) - 2) * ((n ^ 2 : ℤ) - (n : ℤ))))))

end

end A190875.P8961839201758045438

namespace A190875

/-- `A293493(A051022(n))-(n-6)*(n-5)*(n-4)*(n-3)*(n-2)*(n²-n)` -/
def P8961839201758045438.Spec : Prop :=
  ∀ n, P8961839201758045438.a n = A190875 n

end A190875

/-! ## A190875.P8107857741950328483

`A000027(A293493(n)-A159083(n))`
-/

namespace A190875.P8107857741950328483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A293493 n - A159083 n).toNat

end

end A190875.P8107857741950328483

namespace A190875

/-- `A000027(A293493(n)-A159083(n))` -/
def P8107857741950328483.Spec : Prop :=
  ∀ n, P8107857741950328483.a n = A190875 n

end A190875

/-! ## A190875.P10132443647484440908

`A000027(A205800(n))`
-/

namespace A190875.P10132443647484440908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A205800 n).toNat

end

end A190875.P10132443647484440908

namespace A190875

/-- `A000027(A205800(n))` -/
def P10132443647484440908.Spec : Prop :=
  ∀ n, P10132443647484440908.a n = A190875 n

end A190875

/-!
# A190876: Numbers 1 through 8 together with numbers congruent to 9 mod 10.

The programs for A190876, the canonical program `A190876.P15974578505549870884` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190876 has offset 1).

The definition of A190876 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190876.P15974578505549870884

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=8, a(8)=9, a(9)=19`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190876

/-- `2*a(n-1)-a(n-2)` -/
def P15974578505549870884.Spec : Prop :=
  ∀ n, P15974578505549870884.a n = A190876 (n + 1)

theorem P15974578505549870884.correct : P15974578505549870884.Spec := by
  intro n
  simp only [A190876, Nat.add_sub_cancel]

end A190876

/-!
# A190878: Expansion of e.g.f. exp(x/(1-x-x^4)).

The programs for A190878, there is no canonical definition to state claims against.
-/

/-! ## A190878.P7625226312418487334

`A000265(A337751(n)+A112242(n))`
-/

namespace A190878.P7625226312418487334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A337751 n + A112242 n).toNat

end

end A190878.P7625226312418487334

/-! ## A190878.P11208270979930431089

`A004178(A056286(n+1))+A000262(n)`
-/

namespace A190878.P11208270979930431089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 (A056286 (n + 1)).toNat + A000262 n

end

end A190878.P11208270979930431089

/-! ## A190878.P17794263189259209258

`A028310(A056286(n+1)+A000262(n))`
-/

namespace A190878.P17794263189259209258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A056286 (n + 1) + A000262 n).toNat

end

end A190878.P17794263189259209258

/-!
# A190883: Positions of 1 in A189480.

The programs for A190883, the canonical program `A190883.P7184940836937768074` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190883 has offset 1).

The definition of A190883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190883.P7184940836937768074

`eq[1, A189480(n+1)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190883

/-- `eq[1, A189480(n+1)]+1` -/
def P7184940836937768074.Spec : Prop :=
  ∀ n, (P7184940836937768074.a n : ℤ) = A190883 (n + 1)

theorem P7184940836937768074.correct : P7184940836937768074.Spec := by
  intro n
  simp only [A190883, Nat.add_sub_cancel]

end A190883

/-! ## A190883.P8875825311507256164

`eq[n, n-a(A189480(n))]` with `a(0)=1`
-/

namespace A190883.P8875825311507256164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - f2 (A189480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190883.P8875825311507256164

namespace A190883

/-- `eq[n, n-a(A189480(n))]` -/
def P8875825311507256164.Spec : Prop :=
  ∀ n, (P8875825311507256164.a n : ℤ) = A190883 (n + 1)

end A190883

/-! ## A190883.P16976797941875146090

`eq[1, A189480(A028310(n))]`
-/

namespace A190883.P16976797941875146090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189480 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190883.P16976797941875146090

namespace A190883

/-- `eq[1, A189480(A028310(n))]` -/
def P16976797941875146090.Spec : Prop :=
  ∀ n, (P16976797941875146090.a n : ℤ) = A190883 (n + 1)

end A190883

/-! ## A190883.P7514698940996101922

`record[A289441(A190442(n+1))]`
-/

namespace A190883.P7514698940996101922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (A190442 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190883.P7514698940996101922

namespace A190883

/-- `record[A289441(A190442(n+1))]` -/
def P7514698940996101922.Spec : Prop :=
  ∀ n, P7514698940996101922.a n = A190883 (n + 1)

end A190883

/-! ## A190883.P4071388672591533090

`eq[A000007(n), A003815(A195175(2*n))]`
-/

namespace A190883.P4071388672591533090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (A195175 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190883.P4071388672591533090

namespace A190883

/-- `eq[A000007(n), A003815(A195175(2*n))]` -/
def P4071388672591533090.Spec : Prop :=
  ∀ n, (P4071388672591533090.a n : ℤ) = A190883 (n + 1)

end A190883

/-! ## A190883.P16286370523329594032

`eq[A000038(n), A003815(A195175(2*n))]`
-/

namespace A190883.P16286370523329594032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (A195175 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190883.P16286370523329594032

namespace A190883

/-- `eq[A000038(n), A003815(A195175(2*n))]` -/
def P16286370523329594032.Spec : Prop :=
  ∀ n, (P16286370523329594032.a n : ℤ) = A190883 (n + 1)

end A190883

/-! ## A190883.P4567431750832141981

`eq[A089808(2*(n+1)), A190248(2*(n+1))]+1`
-/

namespace A190883.P4567431750832141981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089808 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190248 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190883.P4567431750832141981

namespace A190883

/-- `eq[A089808(2*(n+1)), A190248(2*(n+1))]+1` -/
def P4567431750832141981.Spec : Prop :=
  ∀ n, (P4567431750832141981.a n : ℤ) = A190883 (n + 1)

end A190883

/-! ## A190883.P13718449930939631007

`eq[A078588(2*n)+A003842(2*n+1), A078588(4*n)]`
-/

namespace A190883.P13718449930939631007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (2 * n) + A003842 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190883.P13718449930939631007

namespace A190883

/-- `eq[A078588(2*n)+A003842(2*n+1), A078588(4*n)]` -/
def P13718449930939631007.Spec : Prop :=
  ∀ n, (P13718449930939631007.a n : ℤ) = A190883 (n + 1)

end A190883

/-! ## A190883.P13693847598884893973

`eq[A129761(2*n+1)+A078588(2*n), A078588(4*n)]`
-/

namespace A190883.P13693847598884893973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 (2 * n + 1) + A078588 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190883.P13693847598884893973

namespace A190883

/-- `eq[A129761(2*n+1)+A078588(2*n), A078588(4*n)]` -/
def P13693847598884893973.Spec : Prop :=
  ∀ n, (P13693847598884893973.a n : ℤ) = A190883 (n + 1)

end A190883

/-! ## A190883.P7709794555691871682

`eq[11, A276390(A004976(4*n))]`
-/

namespace A190883.P7709794555691871682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276390 (A004976 (4 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190883.P7709794555691871682

namespace A190883

/-- `eq[11, A276390(A004976(4*n))]` -/
def P7709794555691871682.Spec : Prop :=
  ∀ n, (P7709794555691871682.a n : ℤ) = A190883 (n + 1)

end A190883

/-!
# A190884: Positions of 2 in A189480.

The programs for A190884, the canonical program `A190884.P11547895291054951977` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190884 has offset 1).

The definition of A190884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190884.P11547895291054951977

`eq[2, A189480(n+1)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190884

/-- `eq[2, A189480(n+1)]+1` -/
def P11547895291054951977.Spec : Prop :=
  ∀ n, (P11547895291054951977.a n : ℤ) = A190884 (n + 1)

theorem P11547895291054951977.correct : P11547895291054951977.Spec := by
  intro n
  simp only [A190884, Nat.add_sub_cancel]

end A190884

/-! ## A190884.P15602996954606891693

`eq[A000007(n), A088705(A195175(2*n))]`
-/

namespace A190884.P15602996954606891693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A195175 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190884.P15602996954606891693

namespace A190884

/-- `eq[A000007(n), A088705(A195175(2*n))]` -/
def P15602996954606891693.Spec : Prop :=
  ∀ n, (P15602996954606891693.a n : ℤ) = A190884 (n + 1)

end A190884

/-! ## A190884.P10280157841556158594

`eq[A000034(A195175(2*n)), A003849(2*n)]`
-/

namespace A190884.P10280157841556158594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A195175 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190884.P10280157841556158594

namespace A190884

/-- `eq[A000034(A195175(2*n)), A003849(2*n)]` -/
def P10280157841556158594.Spec : Prop :=
  ∀ n, (P10280157841556158594.a n : ℤ) = A190884 (n + 1)

end A190884

/-! ## A190884.P17113914711158973587

`eq[2, A195172(4*n)%4]`
-/

namespace A190884.P17113914711158973587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195172 (4 * n)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190884.P17113914711158973587

namespace A190884

/-- `eq[2, A195172(4*n)%4]` -/
def P17113914711158973587.Spec : Prop :=
  ∀ n, (P17113914711158973587.a n : ℤ) = A190884 (n + 1)

end A190884

/-! ## A190884.P11733525213664036337

`eq[2, A001511(A001961(A008574(n)))]`
-/

namespace A190884.P11733525213664036337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001961 (A008574 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190884.P11733525213664036337

namespace A190884

/-- `eq[2, A001511(A001961(A008574(n)))]` -/
def P11733525213664036337.Spec : Prop :=
  ∀ n, (P11733525213664036337.a n : ℤ) = A190884 (n + 1)

end A190884

/-! ## A190884.P10523158227977021892

`eq[A089808(A008574(n)), A327174(n)]`
-/

namespace A190884.P10523158227977021892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089808 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190884.P10523158227977021892

namespace A190884

/-- `eq[A089808(A008574(n)), A327174(n)]` -/
def P10523158227977021892.Spec : Prop :=
  ∀ n, (P10523158227977021892.a n : ℤ) = A190884 (n + 1)

end A190884

/-! ## A190884.P8288544266768871861

`eq[2, A189480(A233583(n+1))]`
-/

namespace A190884.P8288544266768871861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189480 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190884.P8288544266768871861

namespace A190884

/-- `eq[2, A189480(A233583(n+1))]` -/
def P8288544266768871861.Spec : Prop :=
  ∀ n, (P8288544266768871861.a n : ℤ) = A190884 (n + 1)

end A190884

/-! ## A190884.P4309774386675796141

`eq[1, A007814(A000201(A022144(n)))]`
-/

namespace A190884.P4309774386675796141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000201 (A022144 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190884.P4309774386675796141

namespace A190884

/-- `eq[1, A007814(A000201(A022144(n)))]` -/
def P4309774386675796141.Spec : Prop :=
  ∀ n, (P4309774386675796141.a n : ℤ) = A190884 (n + 1)

end A190884

/-!
# A190885: Positions of 3 in A189480.

The programs for A190885, the canonical program `A190885.P14204974834777005053` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190885 has offset 1).

The definition of A190885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190885.P14204974834777005053

`lt[2, A189480(n+1)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190885

/-- `lt[2, A189480(n+1)]+1` -/
def P14204974834777005053.Spec : Prop :=
  ∀ n, (P14204974834777005053.a n : ℤ) = A190885 (n + 1)

theorem P14204974834777005053.correct : P14204974834777005053.Spec := by
  intro n
  simp only [A190885, Nat.add_sub_cancel]

end A190885

/-! ## A190885.P5770059104785968710

`eq[3, A189480(n+2)]+2`
-/

namespace A190885.P5770059104785968710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189480 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A190885.P5770059104785968710

namespace A190885

/-- `eq[3, A189480(n+2)]+2` -/
def P5770059104785968710.Spec : Prop :=
  ∀ n, (P5770059104785968710.a n : ℤ) = A190885 (n + 1)

end A190885

/-! ## A190885.P15027508617147853448

`eq[n, n-a(A189480(n))]` with `a(0)=2`
-/

namespace A190885.P15027508617147853448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  (n : ℤ) - f2 (A189480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190885.P15027508617147853448

namespace A190885

/-- `eq[n, n-a(A189480(n))]` -/
def P15027508617147853448.Spec : Prop :=
  ∀ n, (P15027508617147853448.a n : ℤ) = A190885 (n + 1)

end A190885

/-! ## A190885.P13380444746668123852

`eq[3, A189480(A028310(n))]`
-/

namespace A190885.P13380444746668123852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189480 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190885.P13380444746668123852

namespace A190885

/-- `eq[3, A189480(A028310(n))]` -/
def P13380444746668123852.Spec : Prop :=
  ∀ n, (P13380444746668123852.a n : ℤ) = A190885 (n + 1)

end A190885

/-! ## A190885.P995396949470829846

`record[A246277(A190251(n+2))]`
-/

namespace A190885.P995396949470829846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A190251 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190885.P995396949470829846

namespace A190885

/-- `record[A246277(A190251(n+2))]` -/
def P995396949470829846.Spec : Prop :=
  ∀ n, P995396949470829846.a n = A190885 (n + 1)

end A190885

/-! ## A190885.P7668810217576541188

`eq[1, A003815(A195175(2*n))]`
-/

namespace A190885.P7668810217576541188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (A195175 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190885.P7668810217576541188

namespace A190885

/-- `eq[1, A003815(A195175(2*n))]` -/
def P7668810217576541188.Spec : Prop :=
  ∀ n, (P7668810217576541188.a n : ℤ) = A190885 (n + 1)

end A190885

/-! ## A190885.P7202485877985630439

`lt[3, A089808(A004277(n))]`
-/

namespace A190885.P7202485877985630439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089808 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A190885.P7202485877985630439

namespace A190885

/-- `lt[3, A089808(A004277(n))]` -/
def P7202485877985630439.Spec : Prop :=
  ∀ n, (P7202485877985630439.a n : ℤ) = A190885 (n + 1)

end A190885

/-! ## A190885.P12369345147953647231

`eq[3, A189480(A233583(n+1))]`
-/

namespace A190885.P12369345147953647231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189480 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190885.P12369345147953647231

namespace A190885

/-- `eq[3, A189480(A233583(n+1))]` -/
def P12369345147953647231.Spec : Prop :=
  ∀ n, (P12369345147953647231.a n : ℤ) = A190885 (n + 1)

end A190885

/-!
# A190886: a(n) = [5nr]-5[nr], where r=sqrt(5).

The programs for A190886, the canonical program `A190886.P15383969519109901869` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190886 has offset 1).

The definition of A190886 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190886.P15383969519109901869

`floor(10*ϕ*(n+1))%5`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190886

/-- `floor(10*ϕ*(n+1))%5` -/
def P15383969519109901869.Spec : Prop :=
  ∀ n, P15383969519109901869.a n = A190886 (n + 1)

theorem P15383969519109901869.correct : P15383969519109901869.Spec := by
  intro n
  simp only [A190886, Nat.add_sub_cancel]

end A190886

/-! ## A190886.P11994929288885495281

`A001961(5*(n+1))-5*A001961(n+1)`
-/

namespace A190886.P11994929288885495281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (5 * (n + 1)) - 5 * A001961 (n + 1)

end

end A190886.P11994929288885495281

namespace A190886

/-- `A001961(5*(n+1))-5*A001961(n+1)` -/
def P11994929288885495281.Spec : Prop :=
  ∀ n, P11994929288885495281.a n = A190886 (n + 1)

end A190886

/-! ## A190886.P4139279868384387110

`A001962(5*(n+1))-5*A001962(n+1)`
-/

namespace A190886.P4139279868384387110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001962 (5 * (n + 1)) - 5 * A001962 (n + 1)

end

end A190886.P4139279868384387110

namespace A190886

/-- `A001962(5*(n+1))-5*A001962(n+1)` -/
def P4139279868384387110.Spec : Prop :=
  ∀ n, P4139279868384387110.a n = A190886 (n + 1)

end A190886

/-! ## A190886.P16732502947649030042

`A008587(A195172(n+1))-A195172(A008587(n+1))`
-/

namespace A190886.P16732502947649030042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A195172 (n + 1)).toNat - A195172 (A008587 (n + 1)).toNat

end

end A190886.P16732502947649030042

namespace A190886

/-- `A008587(A195172(n+1))-A195172(A008587(n+1))` -/
def P16732502947649030042.Spec : Prop :=
  ∀ n, P16732502947649030042.a n = A190886 (n + 1)

end A190886

/-! ## A190886.P7582624827775641374

`A008587(A195173(n+1))-A195173(A008587(n+1))`
-/

namespace A190886.P7582624827775641374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A195173 (n + 1)).toNat - A195173 (A008587 (n + 1)).toNat

end

end A190886.P7582624827775641374

namespace A190886

/-- `A008587(A195173(n+1))-A195173(A008587(n+1))` -/
def P7582624827775641374.Spec : Prop :=
  ∀ n, P7582624827775641374.a n = A190886 (n + 1)

end A190886

/-! ## A190886.P16936350550955519715

`A276854(A008587(n+1))-A008587(A276854(n+1))`
-/

namespace A190886.P16936350550955519715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 (A008587 (n + 1)).toNat - A008587 (A276854 (n + 1)).toNat

end

end A190886.P16936350550955519715

namespace A190886

/-- `A276854(A008587(n+1))-A008587(A276854(n+1))` -/
def P16936350550955519715.Spec : Prop :=
  ∀ n, P16936350550955519715.a n = A190886 (n + 1)

end A190886

/-! ## A190886.P7219314614585902186

`A004976(A008587(n+1))-A008587(A004976(n+1))`
-/

namespace A190886.P7219314614585902186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (A008587 (n + 1)).toNat - A008587 (A004976 (n + 1)).toNat

end

end A190886.P7219314614585902186

namespace A190886

/-- `A004976(A008587(n+1))-A008587(A004976(n+1))` -/
def P7219314614585902186.Spec : Prop :=
  ∀ n, P7219314614585902186.a n = A190886 (n + 1)

end A190886

/-! ## A190886.P12042284966764590552

`A004976(A008706(n+1))-A008706(A004976(n+1))`
-/

namespace A190886.P12042284966764590552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (A008706 (n + 1)).toNat - A008706 (A004976 (n + 1)).toNat

end

end A190886.P12042284966764590552

namespace A190886

/-- `A004976(A008706(n+1))-A008706(A004976(n+1))` -/
def P12042284966764590552.Spec : Prop :=
  ∀ n, P12042284966764590552.a n = A190886 (n + 1)

end A190886

/-!
# A190887: Positions of 0 in A190886.

The programs for A190887, the canonical program `A190887.P9338951253753426506` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190887 has offset 1).

The definition of A190887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190887.P9338951253753426506

`eq[0, A190886(n+1)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190887

/-- `eq[0, A190886(n+1)]+1` -/
def P9338951253753426506.Spec : Prop :=
  ∀ n, (P9338951253753426506.a n : ℤ) = A190887 (n + 1)

theorem P9338951253753426506.correct : P9338951253753426506.Spec := by
  intro n
  simp only [A190887, Nat.add_sub_cancel]

end A190887

/-! ## A190887.P1075104466833762397

`eq[0, A190886(A028310(n))]`
-/

namespace A190887.P1075104466833762397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190887.P1075104466833762397

namespace A190887

/-- `eq[0, A190886(A028310(n))]` -/
def P1075104466833762397.Spec : Prop :=
  ∀ n, (P1075104466833762397.a n : ℤ) = A190887 (n + 1)

end A190887

/-! ## A190887.P5868074137628711199

`eq[0, A190886(A000007(n)+n)]`
-/

namespace A190887.P5868074137628711199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190887.P5868074137628711199

namespace A190887

/-- `eq[0, A190886(A000007(n)+n)]` -/
def P5868074137628711199.Spec : Prop :=
  ∀ n, (P5868074137628711199.a n : ℤ) = A190887 (n + 1)

end A190887

/-! ## A190887.P13329395277953260296

`eq[0, A190886(A000038(n)+n)]`
-/

namespace A190887.P13329395277953260296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190887.P13329395277953260296

namespace A190887

/-- `eq[0, A190886(A000038(n)+n)]` -/
def P13329395277953260296.Spec : Prop :=
  ∀ n, (P13329395277953260296.a n : ℤ) = A190887 (n + 1)

end A190887

/-! ## A190887.P1035199205051659673

`eq[0, A190886(xor(n, A000038(n)))]`
-/

namespace A190887.P1035199205051659673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190887.P1035199205051659673

namespace A190887

/-- `eq[0, A190886(xor(n, A000038(n)))]` -/
def P1035199205051659673.Spec : Prop :=
  ∀ n, (P1035199205051659673.a n : ℤ) = A190887 (n + 1)

end A190887

/-! ## A190887.P7023458063520449507

`eq[0, A190886(abs(n-A000038(n)))]`
-/

namespace A190887.P7023458063520449507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 |(n : ℤ) - A000038 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190887.P7023458063520449507

namespace A190887

/-- `eq[0, A190886(abs(n-A000038(n)))]` -/
def P7023458063520449507.Spec : Prop :=
  ∀ n, (P7023458063520449507.a n : ℤ) = A190887 (n + 1)

end A190887

/-!
# A190888: Positions of 1 in A190886.

The programs for A190888, the canonical program `A190888.P515211656017772921` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190888 has offset 1).

The definition of A190888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190888.P515211656017772921

`eq[1, A190886(n+1)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190888

/-- `eq[1, A190886(n+1)]+1` -/
def P515211656017772921.Spec : Prop :=
  ∀ n, (P515211656017772921.a n : ℤ) = A190888 (n + 1)

theorem P515211656017772921.correct : P515211656017772921.Spec := by
  intro n
  simp only [A190888, Nat.add_sub_cancel]

end A190888

/-! ## A190888.P14161507536840552936

`eq[1, A190886(A000038(n)+n)]`
-/

namespace A190888.P14161507536840552936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190888.P14161507536840552936

namespace A190888

/-- `eq[1, A190886(A000038(n)+n)]` -/
def P14161507536840552936.Spec : Prop :=
  ∀ n, (P14161507536840552936.a n : ℤ) = A190888 (n + 1)

end A190888

/-! ## A190888.P9642502228286049385

`eq[1, A190886(xor(n, A000038(n)))]`
-/

namespace A190888.P9642502228286049385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190888.P9642502228286049385

namespace A190888

/-- `eq[1, A190886(xor(n, A000038(n)))]` -/
def P9642502228286049385.Spec : Prop :=
  ∀ n, (P9642502228286049385.a n : ℤ) = A190888 (n + 1)

end A190888

/-! ## A190888.P15032168340971059213

`eq[1, A190886(abs(n-A000038(n)))]`
-/

namespace A190888.P15032168340971059213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 |(n : ℤ) - A000038 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190888.P15032168340971059213

namespace A190888

/-- `eq[1, A190886(abs(n-A000038(n)))]` -/
def P15032168340971059213.Spec : Prop :=
  ∀ n, (P15032168340971059213.a n : ℤ) = A190888 (n + 1)

end A190888

/-! ## A190888.P2663403407409210112

`eq[A057427(n), A190886(A028310(n))]`
-/

namespace A190888.P2663403407409210112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190888.P2663403407409210112

namespace A190888

/-- `eq[A057427(n), A190886(A028310(n))]` -/
def P2663403407409210112.Spec : Prop :=
  ∀ n, (P2663403407409210112.a n : ℤ) = A190888 (n + 1)

end A190888

/-!
# A190889: Positions of 2 in A190886.

The programs for A190889, the canonical program `A190889.P3985624384271459733` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190889 has offset 1).

The definition of A190889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190889.P3985624384271459733

`eq[2, A190886(n+1)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190889

/-- `eq[2, A190886(n+1)]+1` -/
def P3985624384271459733.Spec : Prop :=
  ∀ n, (P3985624384271459733.a n : ℤ) = A190889 (n + 1)

theorem P3985624384271459733.correct : P3985624384271459733.Spec := by
  intro n
  simp only [A190889, Nat.add_sub_cancel]

end A190889

/-! ## A190889.P1113626532624554428

`eq[2, A190886(n/a(C(2, n)))]` with `a(0)=1, a(1)=1`
-/

namespace A190889.P1113626532624554428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A190886 (SequenceMachineLib.roundAway ((n : ℚ) / (f2 (Nat.choose 2 n) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190889.P1113626532624554428

namespace A190889

/-- `eq[2, A190886(n/a(C(2, n)))]` -/
def P1113626532624554428.Spec : Prop :=
  ∀ n, (P1113626532624554428.a n : ℤ) = A190889 (n + 1)

end A190889

/-! ## A190889.P10681495889073391356

`eq[2, A190886(A028310(n))]`
-/

namespace A190889.P10681495889073391356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190889.P10681495889073391356

namespace A190889

/-- `eq[2, A190886(A028310(n))]` -/
def P10681495889073391356.Spec : Prop :=
  ∀ n, (P10681495889073391356.a n : ℤ) = A190889 (n + 1)

end A190889

/-! ## A190889.P10625469533726752433

`A020725(eq[2, A190886(n+1)])`
-/

namespace A190889.P10625469533726752433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190889.P10625469533726752433

namespace A190889

/-- `A020725(eq[2, A190886(n+1)])` -/
def P10625469533726752433.Spec : Prop :=
  ∀ n, P10625469533726752433.a n = A190889 (n + 1)

end A190889

/-! ## A190889.P1649045274312809789

`eq[2, A190886(A000007(n)+n)]`
-/

namespace A190889.P1649045274312809789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190889.P1649045274312809789

namespace A190889

/-- `eq[2, A190886(A000007(n)+n)]` -/
def P1649045274312809789.Spec : Prop :=
  ∀ n, (P1649045274312809789.a n : ℤ) = A190889 (n + 1)

end A190889

/-!
# A190890: Positions of 3 in A190886.

The programs for A190890, the canonical program `A190890.P13703875353801391040` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190890 has offset 1).

The definition of A190890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2002 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190890.P13703875353801391040

`eq[3, A190886(n+1)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190890

/-- `eq[3, A190886(n+1)]+1` -/
def P13703875353801391040.Spec : Prop :=
  ∀ n, (P13703875353801391040.a n : ℤ) = A190890 (n + 1)

theorem P13703875353801391040.correct : P13703875353801391040.Spec := by
  intro n
  simp only [A190890, Nat.add_sub_cancel]

end A190890

/-! ## A190890.P3859155685582388900

`eq[1, A190886(A028310(n))-2]`
-/

namespace A190890.P3859155685582388900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190890.P3859155685582388900

namespace A190890

/-- `eq[1, A190886(A028310(n))-2]` -/
def P3859155685582388900.Spec : Prop :=
  ∀ n, (P3859155685582388900.a n : ℤ) = A190890 (n + 1)

end A190890

/-! ## A190890.P8231364499247837689

`eq[3, A190886(A000038(n)+n)]`
-/

namespace A190890.P8231364499247837689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190890.P8231364499247837689

namespace A190890

/-- `eq[3, A190886(A000038(n)+n)]` -/
def P8231364499247837689.Spec : Prop :=
  ∀ n, (P8231364499247837689.a n : ℤ) = A190890 (n + 1)

end A190890

/-! ## A190890.P6272692334973089132

`eq[3, A190886(xor(n, A000038(n)))]`
-/

namespace A190890.P6272692334973089132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190890.P6272692334973089132

namespace A190890

/-- `eq[3, A190886(xor(n, A000038(n)))]` -/
def P6272692334973089132.Spec : Prop :=
  ∀ n, (P6272692334973089132.a n : ℤ) = A190890 (n + 1)

end A190890

/-! ## A190890.P12508102400368122134

`eq[3, A190886(abs(n-A000038(n)))]`
-/

namespace A190890.P12508102400368122134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 |(n : ℤ) - A000038 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190890.P12508102400368122134

namespace A190890

/-- `eq[3, A190886(abs(n-A000038(n)))]` -/
def P12508102400368122134.Spec : Prop :=
  ∀ n, (P12508102400368122134.a n : ℤ) = A190890 (n + 1)

end A190890

/-! ## A190890.P10723898802189000845

`eq[3, A190886(A000007(n)+n)]`
-/

namespace A190890.P10723898802189000845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190890.P10723898802189000845

namespace A190890

/-- `eq[3, A190886(A000007(n)+n)]` -/
def P10723898802189000845.Spec : Prop :=
  ∀ n, (P10723898802189000845.a n : ℤ) = A190890 (n + 1)

end A190890

/-!
# A190891: Positions of 4 in A190886.

The programs for A190891, the canonical program `A190891.P7111368209134081131` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190891 has offset 1).

The definition of A190891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190891.P7111368209134081131

`eq[4, A190886(n+1)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190891

/-- `eq[4, A190886(n+1)]+1` -/
def P7111368209134081131.Spec : Prop :=
  ∀ n, (P7111368209134081131.a n : ℤ) = A190891 (n + 1)

theorem P7111368209134081131.correct : P7111368209134081131.Spec := by
  intro n
  simp only [A190891, Nat.add_sub_cancel]

end A190891

/-! ## A190891.P18077014405630324322

`eq[2, A190886(A028310(n))-2]`
-/

namespace A190891.P18077014405630324322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190891.P18077014405630324322

namespace A190891

/-- `eq[2, A190886(A028310(n))-2]` -/
def P18077014405630324322.Spec : Prop :=
  ∀ n, (P18077014405630324322.a n : ℤ) = A190891 (n + 1)

end A190891

/-! ## A190891.P3199716551832673396

`eq[4, A190886(A000007(n)+n)]`
-/

namespace A190891.P3199716551832673396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190891.P3199716551832673396

namespace A190891

/-- `eq[4, A190886(A000007(n)+n)]` -/
def P3199716551832673396.Spec : Prop :=
  ∀ n, (P3199716551832673396.a n : ℤ) = A190891 (n + 1)

end A190891

/-! ## A190891.P13614272620652487045

`eq[4, A190886(A000038(n)+n)]`
-/

namespace A190891.P13614272620652487045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190891.P13614272620652487045

namespace A190891

/-- `eq[4, A190886(A000038(n)+n)]` -/
def P13614272620652487045.Spec : Prop :=
  ∀ n, (P13614272620652487045.a n : ℤ) = A190891 (n + 1)

end A190891

/-! ## A190891.P14926399425065733867

`eq[4, A190886(xor(n, A000038(n)))]`
-/

namespace A190891.P14926399425065733867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190891.P14926399425065733867

namespace A190891

/-- `eq[4, A190886(xor(n, A000038(n)))]` -/
def P14926399425065733867.Spec : Prop :=
  ∀ n, (P14926399425065733867.a n : ℤ) = A190891 (n + 1)

end A190891

/-! ## A190891.P6878038687690407643

`eq[4, A190886(abs(n-A000038(n)))]`
-/

namespace A190891.P6878038687690407643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 |(n : ℤ) - A000038 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190891.P6878038687690407643

namespace A190891

/-- `eq[4, A190886(abs(n-A000038(n)))]` -/
def P6878038687690407643.Spec : Prop :=
  ∀ n, (P6878038687690407643.a n : ℤ) = A190891 (n + 1)

end A190891

/-! ## A190891.P15517643638855102062

`lt[4, A089808(A004277(n))]`
-/

namespace A190891.P15517643638855102062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089808 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A190891.P15517643638855102062

namespace A190891

/-- `lt[4, A089808(A004277(n))]` -/
def P15517643638855102062.Spec : Prop :=
  ∀ n, (P15517643638855102062.a n : ℤ) = A190891 (n + 1)

end A190891

/-!
# A190892: Numbers that can be written as a*b = c*d*e, where a, b, c, d, and e are distinct composite numbers.

The programs for A190892, there is no canonical definition to state claims against.
-/

/-! ## A190892.P2468520976580933889

`A064597(n+5)*A300229(A086004(n+1))`
-/

namespace A190892.P2468520976580933889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064597 (n + 5) * A300229 (A086004 (n + 1)).toNat

end

end A190892.P2468520976580933889

/-! ## A190892.P15236680177308840903

`A000034(A374761(2*n+3))*A064597(n+5)`
-/

namespace A190892.P15236680177308840903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A374761 (2 * n + 3)).toNat * A064597 (n + 5)

end

end A190892.P15236680177308840903

/-!
# A190893: a(n) = [3en] - 3[en], where [ ] = floor.

The programs for A190893, the canonical program `A190893.P617285467576103907` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190893 has offset 1).

The definition of A190893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190893.P617285467576103907

`floor(3*(n+1)*e)-3*floor((n+1)*e)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190893

/-- `floor(3*(n+1)*e)-3*floor((n+1)*e)` -/
def P617285467576103907.Spec : Prop :=
  ∀ n, P617285467576103907.a n = A190893 (n + 1)

theorem P617285467576103907.correct : P617285467576103907.Spec := by
  intro n
  simp only [A190893, Nat.add_sub_cancel]

end A190893

/-! ## A190893.P6489714702543020865

`floor(3*e*(n+1))%3`
-/

namespace A190893.P6489714702543020865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊3 * (Real.exp 1 * (n + 1 : ℝ))⌋ 3

end

end A190893.P6489714702543020865

namespace A190893

/-- `floor(3*e*(n+1))%3` -/
def P6489714702543020865.Spec : Prop :=
  ∀ n, P6489714702543020865.a n = A190893 (n + 1)

end A190893

/-! ## A190893.P13011970846081272664

`floor((3*n+2)/A024572(n+1))`
-/

namespace A190893.P13011970846081272664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * n + 2 : ℚ) / (A024572 (n + 1) : ℚ)⌋

end

end A190893.P13011970846081272664

namespace A190893

/-- `floor((3*n+2)/A024572(n+1))` -/
def P13011970846081272664.Spec : Prop :=
  ∀ n, P13011970846081272664.a n = A190893 (n + 1)

end A190893

/-! ## A190893.P17078259142618325353

`dr(A022843(3*(n+1))%3)`
-/

namespace A190893.P17078259142618325353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A022843 (3 * (n + 1))) 3)

end

end A190893.P17078259142618325353

namespace A190893

/-- `dr(A022843(3*(n+1))%3)` -/
def P17078259142618325353.Spec : Prop :=
  ∀ n, (P17078259142618325353.a n : ℤ) = A190893 (n + 1)

end A190893

/-! ## A190893.P8374207208361544368

`A010872(A121384(3*(n+1))-1)`
-/

namespace A190893.P8374207208361544368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A121384 (3 * (n + 1)) - 1).toNat

end

end A190893.P8374207208361544368

namespace A190893

/-- `A010872(A121384(3*(n+1))-1)` -/
def P8374207208361544368.Spec : Prop :=
  ∀ n, P8374207208361544368.a n = A190893 (n + 1)

end A190893

/-! ## A190893.P5588561755848674949

`A088689(2*A022843(3*(n+1)))`
-/

namespace A190893.P5588561755848674949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088689 (2 * A022843 (3 * (n + 1))).toNat

end

end A190893.P5588561755848674949

namespace A190893

/-- `A088689(2*A022843(3*(n+1)))` -/
def P5588561755848674949.Spec : Prop :=
  ∀ n, P5588561755848674949.a n = A190893 (n + 1)

end A190893

/-!
# A190894: Auxiliary c(n) sequence used to prove some properties about Rowland's sequence. c(n) has the following recursive definition: c(1) = 5, c_(n+1) = c(n) + lfp(c(n)) - 1, where lpf(.) denotes the lowest prime factor of a number.

The programs for A190894, there is no canonical definition to state claims against.
-/

/-! ## A190894.P3903767266676253488

`A168007(2*(n+3))`
-/

namespace A190894.P3903767266676253488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168007 (2 * (n + 3))

end

end A190894.P3903767266676253488

/-! ## A190894.P10879088046605456936

`record[A168007(n+5)-1]`
-/

namespace A190894.P10879088046605456936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168007 (n + 5) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190894.P10879088046605456936

/-! ## A190894.P10675212294525964992

`A168007(n+5+n)-1`
-/

namespace A190894.P10675212294525964992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168007 (n + 5 + n) - 1

end

end A190894.P10675212294525964992

/-! ## A190894.P142043119078537523

`record[A168007(A124625(n+7))]`
-/

namespace A190894.P142043119078537523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168007 (A124625 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190894.P142043119078537523

/-! ## A190894.P11253692144885538871

`A057428(n)+record[A168007(n+6)]`
-/

namespace A190894.P11253692144885538871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168007 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190894.P11253692144885538871

/-! ## A190894.P6001301522033106015

`record[A168007(n+6)/A000034(n)]`
-/

namespace A190894.P6001301522033106015
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168007 (n + 6) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190894.P6001301522033106015

/-! ## A190894.P17007821992382110013

`record[A168007(n+5)]+A008683(A051614(n+1))`
-/

namespace A190894.P17007821992382110013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168007 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A008683 (A051614 (n + 1)).toNat

end

end A190894.P17007821992382110013

/-! ## A190894.P13657592560631003012

`A190895(n+2)+A190895(n+2)-A137613(n+1)`
-/

namespace A190894.P13657592560631003012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190895 (n + 2) + (A190895 (n + 2) - A137613 (n + 1))

end

end A190894.P13657592560631003012

/-!
# A190895: Auxiliary r(n) sequence used to prove some properties about Rowland's sequence: r(1) = 1, and r(n) = 1/2*(c(n)+1), where c(n) is A190894, for n>1.

The programs for A190895, there is no canonical definition to state claims against.
-/

/-! ## A190895.P7808597169506569027

`record[(A168007(n+6)/A000034(n))^(n%2)]`
-/

namespace A190895.P7808597169506569027
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A168007 (n + 6) : ℚ) / (A000034 n : ℚ)) ^ (n % 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190895.P7808597169506569027

/-! ## A190895.P5786117619690855059

`ceil(A190894(n+1)/A291363(A103517(n)))`
-/

namespace A190895.P5786117619690855059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A190894 (n + 1) : ℚ) / (A291363 (A103517 n).toNat : ℚ)⌉

end

end A190895.P5786117619690855059

/-! ## A190895.P12488270555010392902

`A168007(2*n+5)/A016825(A151878(n))`
-/

namespace A190895.P12488270555010392902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168007 (2 * n + 5) : ℚ) / (A016825 (A151878 n).toNat : ℚ)

end

end A190895.P12488270555010392902

/-! ## A190895.P7624704218205346365

`A323161(A190894(n+1)-4)`
-/

namespace A190895.P7624704218205346365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (A190894 (n + 1) - 4).toNat

end

end A190895.P7624704218205346365

/-! ## A190895.P3660251119250317346

`A323161(A168007(2*(n+3))-4)`
-/

namespace A190895.P3660251119250317346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (A168007 (2 * (n + 3)) - 4).toNat

end

end A190895.P3660251119250317346

/-!
# A190897: Concatenation of A190896 written in binary.

The programs for A190897, there is no canonical definition to state claims against.
-/

/-! ## A190897.P3693455240209817807

`A157686(A366569(2*(n+2))%A007918(2*n+3))`
-/

namespace A190897.P3693455240209817807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 (Int.tmod (A366569 (2 * (n + 2))) (A007918 (2 * n + 3))).toNat

end

end A190897.P3693455240209817807

/-! ## A190897.P839190662904868647

`A266892(or(n+4, A266878(n+1)))`
-/

namespace A190897.P839190662904868647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266892 (Int.lor (n + 4 : ℤ) (A266878 (n + 1))).toNat

end

end A190897.P839190662904868647

/-! ## A190897.P12054116733267058418

`A284939(A028838(2*(n+1))+A000053(n+5))`
-/

namespace A190897.P12054116733267058418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (A028838 (2 * (n + 1)) + A000053 (n + 5)).toNat

end

end A190897.P12054116733267058418

/-! ## A190897.P9561632854847080343

`A014577(A290644(2*(n+1))-A063919(n+4))`
-/

namespace A190897.P9561632854847080343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A290644 (2 * (n + 1)) - A063919 (n + 4)).toNat

end

end A190897.P9561632854847080343

/-! ## A190897.P8184085074860485096

`A114483(A314321(n))`
-/

namespace A190897.P8184085074860485096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114483 (A314321 n).toNat

end

end A190897.P8184085074860485096

/-!
# A190898: Least odd prime p>n^2 with (n/p) = 1, where ( / ) is the Legendre symbol.

The programs for A190898, there is no canonical definition to state claims against.
-/

/-! ## A190898.P3419679044029753154

`A347498(A338006(A066720(A347498(A347498(n+3)))))`
-/

namespace A190898.P3419679044029753154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347498 (A338006 (A066720 (A347498 (A347498 (n + 3)).toNat).toNat).toNat).toNat

end

end A190898.P3419679044029753154

/-!
# A190899: Positive integers with recursively self-conjugate partitions.

The programs for A190899, there is no canonical definition to state claims against.
-/

/-! ## A190899.P3097261991967163157

`eq[1, char[A322457(n+1)]]`
-/

namespace A190899.P3097261991967163157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322457 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190899.P3097261991967163157

/-! ## A190899.P16017341513867925738

`comp[A190900(n+1)-1]+1`
-/

namespace A190899.P16017341513867925738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190900 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A190899.P16017341513867925738

/-! ## A190899.P11103754369703375761

`eq[1, A038518(A321223(n+1))]+1`
-/

namespace A190899.P11103754369703375761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038518 (A321223 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190899.P11103754369703375761

/-! ## A190899.P5375159310149301768

`comp[comp[A322457(n+1)]%A055099(n)]`
-/

namespace A190899.P5375159310149301768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322457 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) (A055099 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A190899.P5375159310149301768

/-! ## A190899.P18072606703380551618

`comp[∪[A190900(n+1), A207058(n+1)]]`
-/

namespace A190899.P18072606703380551618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190900 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207058 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A190899.P18072606703380551618

/-! ## A190899.P1363370238778509745

`comp[∪[A190944(3*n), A190900(n+1)]]`
-/

namespace A190899.P1363370238778509745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190944 (3 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190900 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A190899.P1363370238778509745

/-! ## A190899.P1484809702235059409

`eq[1, A001221(A321223(n+1)+1)]+1`
-/

namespace A190899.P1484809702235059409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A321223 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190899.P1484809702235059409

/-! ## A190899.P17332247440721853758

`lt[1, A098008(A321223(n+1)+1)]+1`
-/

namespace A190899.P17332247440721853758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (A321223 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A190899.P17332247440721853758

/-! ## A190899.P2310681741459888146

`record[(n+1)*A038518(A321223(C(n+1, n)))]`
-/

namespace A190899.P2310681741459888146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A038518 (A321223 (Nat.choose (n + 1) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190899.P2310681741459888146

/-! ## A190899.P15005214985130863169

`record[A000027(n+1)*A038518(A321223(n+1))]`
-/

namespace A190899.P15005214985130863169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A038518 (A321223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190899.P15005214985130863169

